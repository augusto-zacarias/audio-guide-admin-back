import { Router } from 'express'
import { User, UserDTO } from '../Types';
import UserService from '../services/UserService';

const UserRouter = Router();
const userService = new UserService()

UserRouter.post('/login',async (req,res,done)=>{
    
    const userJson = req.body;

    let validUser: UserDTO;
    try {
        validUser = userJson as UserDTO;
    } catch(e) {
        return res.status(400).send('Indalid values for User')
    }

    let user: User;
    try {
        user = await userService.login(validUser);
    } catch(e) {
        return res.status(404).send('User not found')
    }

    //res.appendHeader('authorization','true')

    return res.status(200).send('You are now authenticated!!!');
});

export default UserRouter;