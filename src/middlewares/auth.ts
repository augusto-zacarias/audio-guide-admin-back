import { NextFunction,Response,Request } from "express";



export function checkAuth(req:Request,res:Response,done:NextFunction) {
    if (req.headers.authorization == null) {
        return res.status(401).json({
            errorMsg: "Unauthorized user"
        });
    }
    done();
}

export function checkAdminAuth(req:Request,res:Response,done:NextFunction) {
    const authorizationHeaders = req.headers.authorization ?? "Auth not present";
    if (!isValidAdmin(authorizationHeaders)) {
        return res.status(403).json({
            errorMsg: "Unauthorized user"
        });
    }
    done();
}

function isValidAdmin(auth:string): boolean {
    console.log(auth);
    return true;
}