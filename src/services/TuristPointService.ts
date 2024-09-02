import { TuristPoint,EmptyTuristPoint } from '../Types.js';
import TuristPointRepository from '../repositories/TuristPointRepository.js';

export default class TuristPointService {

    turistPointRepository = new TuristPointRepository();

    async createTuristPoint(newTuristPoint:TuristPoint): Promise<TuristPoint> {
        const alreadyExists = await this.turistPointRepository.doesPointExistByName(newTuristPoint.name);
        if (alreadyExists) {
            throw new Error('Point already exists')
        }
        return await this.turistPointRepository.createTuristPoint(newTuristPoint);
    }

    async getAllTuristPoints(): Promise<TuristPoint[]> {
        return await this.turistPointRepository.getAllTuristPoints()
    }

    async getTuristPointById(id:number): Promise<TuristPoint> {
        return await this.turistPointRepository.getTuristPoint(id)
    }

    async getTuristPointByName(name:string): Promise<TuristPoint> {
        return EmptyTuristPoint()
    }

    async updateTuristPoint(id:number,newTuristPoint:TuristPoint): Promise<TuristPoint> {
        newTuristPoint.id = id;
        const alreadyExists = await this.turistPointRepository.doesPointExistById(id);
        if (!alreadyExists) {
            throw new Error('Point does not exist')
        }

        const existsOtherWithName = await this.turistPointRepository.doesExistOtherPointWithName(newTuristPoint);
        if (existsOtherWithName) {
            throw new Error('The values passed conflict with another point')
        }

        return await this.turistPointRepository.updateTuristPoint(id,newTuristPoint)
    }

    async deleteTuristPoint(id:number) {
        const alreadyExists = await this.turistPointRepository.doesPointExistById(id);
        if (!alreadyExists) {
            throw new Error('Point does not exist')
        }
        return await this.turistPointRepository.deleteTuristPoint(id)
    }
}