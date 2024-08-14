import { TuristPoint,EmptyTuristPoint } from '../Types';
import TuristPointRepository from '../repositories/TuristPointRepository';

export default class TuristPointService {

    turistPointRepository = new TuristPointRepository();

    async createTuristPoint(newTuristPoint:TuristPoint): Promise<TuristPoint> {
        
        return EmptyTuristPoint();
    }

    async getAllTuristPoints(): Promise<TuristPoint[]> {
        return [EmptyTuristPoint()]
    }

    async getTuristPointById(id:number): Promise<TuristPoint> {
        return EmptyTuristPoint()
    }

    async getTuristPointByName(name:string): Promise<TuristPoint> {
        return EmptyTuristPoint()
    }

    async updateTuristPoint(id:number,newTuristPoint:TuristPoint): Promise<TuristPoint> {
        //check if exists, if not, throw not found error
        //check if new body doesnt conflict, if not, thow conflict error
        return EmptyTuristPoint()
    }

    async deleteTuristPoint(id:number) {

    }
}