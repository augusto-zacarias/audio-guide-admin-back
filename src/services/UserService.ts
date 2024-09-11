import UserRepository from "../repositories/UserRepository.js"
import { UserDTO,HTTPError,User } from '../Types.js';
import { UserDBToUser, UserDTOToUser } from "../utils.js";
import bcrypt from 'bcrypt';

export default class UserService {

    userRepository = new UserRepository();

    async login(user:UserDTO):Promise<User> {
        const recoveredUser = await this.userRepository.getUserByUsername(user.username);
        if (recoveredUser === null) throw new HTTPError(404,'User not found');

        const same = await bcrypt.compare(user.password, recoveredUser!.password);
        if (same === false) throw new HTTPError(404,'User not found');

        return UserDBToUser(recoveredUser)
    }

    async register(user:UserDTO):Promise<User> {
        const recoveredUser = await this.userRepository.getUserByUsername(user.username);
        if (recoveredUser !== null) throw new HTTPError(400,'User with that username already exists');

        const hashedPass = await bcrypt.hash(user.password,10);
        user.password = hashedPass;
        const createdUser = await this.userRepository.createUser(UserDTOToUser(user));

        return UserDBToUser(createdUser!)
    }
}