import { Router } from 'express'
import { User } from '../Types';
import UserController from '../controllers/UserController';

const UserRouter = Router();
const userController = new UserController()

UserRouter.post('/login',async (req,res,done)=>{
    
    const userJson = req.body;

    let validUser;
    try {
        validUser = userJson as User;
    } catch(e) {
        return res.status(400).send('Indalid values for User')
    }

    let user;
    try {
        user = await userController.login(validUser);
    } catch(e) {
        return res.status(404).send('User not found')
    }

    //res.appendHeader('authorization','true')

    return res.status(200).send('You are now authenticated!!!');
});

export default UserRouter;