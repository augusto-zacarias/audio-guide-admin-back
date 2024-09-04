import { PrismaClient, user } from '@prisma/client'
import { User } from '../Types.js'

export default class UserRepository {

    prismaClient = new PrismaClient()

    async getUser(user:User):Promise<user | null> {
        const foundUser = await this.prismaClient.user.findFirst({
            where: {
                username: user.username,
                password: user.password
            }
        })
        return foundUser
    }

    async getUserByUsername(username:string):Promise<user | null> {
        const foundUser = await this.prismaClient.user.findFirst({
            where: {
                username: username,
            }
        })
        return foundUser
    }

}