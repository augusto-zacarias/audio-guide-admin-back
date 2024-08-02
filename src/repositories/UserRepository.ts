import { PrismaClient } from '@prisma/client'
import { User } from '../Types';

export default class UserRepository {

    prismaClient = new PrismaClient()

    async getUserByUsername(username:string):Promise<User | null> {
        const foundUser = await this.prismaClient.user.findFirst({
            where: {username}
        })
        return foundUser
    }

}