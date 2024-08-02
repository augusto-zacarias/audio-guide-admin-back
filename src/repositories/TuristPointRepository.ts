import { PrismaClient } from '@prisma/client'
import { TuristPoint } from '../Types';

export default class TuristPointRepository {

    prismaClient = new PrismaClient()

    async createTuristPoint(newTuristPoint:TuristPoint) {
        this.prismaClient.point.create({
            data: {
                address: 'test',
                latitude: 123,
                longitude: 123,
            }
        })
    }

    async getAllTuristPoints() {
        return this.prismaClient.point.findMany()
    }

    async getTuristPoint(id:number) {

    }

    async updateTuristPoint(id:number,newTuristPoint:TuristPoint) {

    }

    async deleteTuristPoint(id:number) {

    }
}