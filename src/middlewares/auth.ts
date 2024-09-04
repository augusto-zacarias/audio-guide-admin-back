import { NextFunction,Response,Request } from "express";
import jwt from "jsonwebtoken";
import UserRepository from "../repositories/UserRepository.js";
import { User } from "../Types";

const userRepository = new UserRepository();

export function createJWT(username:string): string {
    return jwt.sign({ username: username }, process.env.JWT_SECRET!, { expiresIn: '1d' });
}

async function getUserInToken(req:Request,res:Response,errorCode:number):Promise<User | null> {
    const authHeader = req.headers.authorization;

    if (authHeader == null) {
        res.status(errorCode).json({errorMsg: "Unauthorized user"});
        return null;
    }

    const parts = authHeader.split(' ');

    if (parts.length !== 2) {
        res.status(errorCode).json({ errorMsg: 'Token with incorrect length' });
        return null;
    }
    const [scheme, token] = parts;

    if (!/^Bearer$/i.test(scheme)) {
        res.status(errorCode).send({ errorMsg: 'Not Bearer Token' });
        return null;
    }

    let parsedDecoded:{username:string};

    try {
        parsedDecoded = jwt.verify(token, process.env.JWT_SECRET!) as {username:string};
    } catch (e) {
        res.status(errorCode).send({ errorMsg: 'Unauthorized Token' });
        return null;
    }

    const user = await userRepository.getUserByUsername(parsedDecoded.username);

    if (!user) {
        res.status(errorCode).send({ error: 'Invalid token' });
        return null;
    }

    return user;
}

export async function checkAuth(req:Request,res:Response,done:NextFunction) {
    const user = await getUserInToken(req,res,401);
    if (!user) return;
    done();
}

export async function checkAdminAuth(req:Request,res:Response,done:NextFunction) {
    const user = await getUserInToken(req,res,403);
    if (!user) return;
    if (!isValidUser(user)) {
        return res.status(403).send({ error: 'Unauthorized token' });;
    }
    done();
}

function isValidUser(user:User): boolean {
    return user.isAdmin;
}