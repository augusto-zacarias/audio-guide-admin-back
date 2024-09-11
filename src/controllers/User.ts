import { Router } from 'express'
import { User, UserDTO } from '../Types.js';
import UserService from '../services/UserService.js';
import { createJWT } from '../middlewares/auth.js';

const UserRouter = Router();
const userService = new UserService()

UserRouter.post('/login',async (req,res,done)=>{
    
    const userJson = req.body;

    let validUser: UserDTO;
    try {
        validUser = validateUserJson(userJson);
    } catch(e) {
        return res.status(400).send({error:'Indalid values for User'})
    }

    let user: User;
    try {
        user = await userService.login(validUser);
    } catch(e) {
        return res.status(404).send({error:'User not found'})
    }

    const token = createJWT(user.username);

    return res.status(200).send({token:token});
});

UserRouter.post('/register',async (req,res,done)=>{
    
    const userJson = req.body;

    let validUser: UserDTO;
    try {
        validUser = validateUserJson(userJson);
    } catch(e) {
        return res.status(400).send({error:'Indalid values for User'})
    }

    let user: User;
    try {
        user = await userService.register(validUser);
    } catch(e) {
        return res.status(400).send({error:'User with username already exists'})
    }

    const token = createJWT(user.username);

    return res.status(200).send({token:token});
});

function validateUserJson(userJson: any): UserDTO {
    if (typeof userJson.username !== 'string' || typeof userJson.password !== 'string') {
        throw new Error('Invalid values for User');
    }
    if (Object.keys(userJson).length !== 2) {
        throw new Error('Invalid values for User');
    }
    if ((userJson.username as string).trim().length === 0 || (userJson.password as string).trim().length === 0) {
        throw new Error('Invalid values for User');
    }
    return {
        username: userJson.username,
        password: userJson.password
    }
}

export default UserRouter;