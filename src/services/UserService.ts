import UserRepository from "../repositories/UserRepository"
import { UserDTO,HTTPError,User } from '../Types';
import { UserDBToUser } from "../utils";

export default class UserService {

    userRepository = new UserRepository();

    async login(user:UserDTO):Promise<User> {
        const recoveredUser = await this.userRepository.getUserByUsername(user.username);
        if (recoveredUser === null) throw new HTTPError(404,'User not found');
        return UserDBToUser(recoveredUser)
    }
}