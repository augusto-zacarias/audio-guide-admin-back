import UserRepository from "../repositories/UserRepository.js"
import { UserDTO,HTTPError,User } from '../Types.js';
import { UserDBToUser, UserDTOToUser } from "../utils.js";

export default class UserService {

    userRepository = new UserRepository();

    async login(user:UserDTO):Promise<User> {
        const recoveredUser = await this.userRepository.getUser(UserDTOToUser(user));
        if (recoveredUser === null) throw new HTTPError(404,'User not found');
        return UserDBToUser(recoveredUser)
    }
}