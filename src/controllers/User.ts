import { Router } from 'express'
import { User, UserDTO } from '../Types';
import UserService from '../services/UserService';

const UserRouter = Router();
const userService = new UserService()

UserRouter.post('/login',async (req,res,done)=>{
    
    const userJson = req.body;

    let validUser: UserDTO;
    try {
        validUser = validateUserJson(userJson);
    } catch(e) {
        return res.status(400).send('Indalid values for User')
    }

    let user: User;
    try {
        user = await userService.login(validUser);
    } catch(e) {
        return res.status(404).send('User not found')
    }

    console.log(validUser);
    console.log(user);

    //res.appendHeader('authorization','true')

    return res.status(200).send('You are now authenticated!!!');
});

function validateUserJson(userJson: any): UserDTO {
    if (typeof userJson.username !== 'string' || typeof userJson.password !== 'string') {
        throw new Error('Invalid values for User');
    }
    if (Object.keys(userJson).length !== 2) {
        throw new Error('Invalid values for User');
    }
    return {
        username: userJson.username,
        password: userJson.password
    }
}

export default UserRouter;