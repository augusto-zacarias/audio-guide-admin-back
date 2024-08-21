import { PrismaClient, user } from '@prisma/client'

export default class UserRepository {

    prismaClient = new PrismaClient()

    async getUserByUsername(username:string):Promise<user | null> {
        const foundUser = await this.prismaClient.user.findFirst({
            where: {username}
        })
        return foundUser
    }

}