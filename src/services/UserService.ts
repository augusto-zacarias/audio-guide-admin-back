import UserRepository from "../repositories/UserRepository"
import { User,HTTPError } from '../Types';

export default class UserService {

    userRepository = new UserRepository();

    async login(user:User) {
        const recoveredUser = await this.userRepository.getUserByUsername(user.username);
        if (recoveredUser === null) throw new HTTPError(404,'User not found');
    }
}