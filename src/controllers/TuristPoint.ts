import { Router } from 'express'
import { TuristPoint,TuristPointDTO } from '../Types.js';
import TuristPointService from '../services/TuristPointService.js';
import { checkAdminAuth } from '../middlewares/auth.js';

const TuristPointRouter = Router();
const turistPointService = new TuristPointService()

TuristPointRouter.get('/',async (req,res,done)=>{
    const turistPoints = await turistPointService.getAllTuristPoints();
    return res.status(200).send(turistPoints);
});

TuristPointRouter.get('/:id',async (req,res,done)=>{
    const turistPointId = req.params.id

    let turistPointNum;
    try {
        turistPointNum = parseInt(turistPointId);
        if (isNaN(turistPointNum)) throw new Error()
    } catch(e) {
        return res.status(400).send({error:'Invalid id passed'})
    }

    let turistPoint;
    try {
        turistPoint = await turistPointService.getTuristPointById(turistPointNum);
    } catch(e) {
        return res.status(404).send({error:'Turist point not found'})
    }

    return res.status(200).send(turistPoint);
});

TuristPointRouter.post('/',checkAdminAuth,async (req,res,done)=>{

    const turistPointJson = req.body;
    let turistPoint;
    try {
        turistPoint = validateTuristPoint(turistPointJson);
    } catch(e) {
        return res.status(400).send({error:'Indalid values for Turist Point'})
    }
    let createdTuristPoint;
    try {
        createdTuristPoint = await turistPointService.createTuristPoint(turistPoint);
    } catch(e: any) {
        return res.status(409).send({error:'Error creating turistPoint'})
    }

    return res.status(201).send(createdTuristPoint);
});

TuristPointRouter.put('/:id',checkAdminAuth,async (req,res,done)=>{

    const turistPointJson = req.body;
    const turistPointId = req.params.id

    let turistPointNum;
    try {
        turistPointNum = parseInt(turistPointId);
        if (isNaN(turistPointNum)) throw new Error()
    } catch(e) {
        return res.status(400).send({error:'Invalid id passed'})
    }

    let turistPointBody;
    try {
        turistPointBody = validateTuristPoint(turistPointJson);
    } catch(e) {
        return res.status(400).send({error:'Invalid values for Turist Point'})
    }

    let updatedTuristPoint;
    try {
        updatedTuristPoint = await turistPointService.updateTuristPoint(turistPointNum,turistPointBody);
    } catch(e:any) {
        return res.status(400).send({error:'Error updating Turist Point'})
    }


    return res.status(201).send(updatedTuristPoint);
});

TuristPointRouter.delete('/:id',checkAdminAuth,async (req,res,done)=>{
    const turistPointId = req.params.id

    let turistPointNum;
    try {
        turistPointNum = parseInt(turistPointId);
        if (isNaN(turistPointNum)) throw new Error()
    } catch(e) {
        return res.status(400).send({error:'Invalid id passed'})
    }

    let turistPoint;
    try {
        turistPoint = await turistPointService.deleteTuristPoint(turistPointNum);
    } catch(e:any) {
        return res.status(404).send({error:'Error deleting turistPoint'})
    }

    return res.status(204).send();
});

function validateTuristPoint(userJson: any): TuristPoint {
    if (typeof userJson.id !== 'number' || typeof userJson.name !== 'string'
        || typeof userJson.latitude !== 'number' || typeof userJson.longitude !== 'number'
        || typeof userJson.address !== 'string' || typeof userJson.entryPrice !== 'number'
        || typeof userJson.type !== 'string' || typeof userJson.accessible !== 'boolean'
        || typeof userJson.email !== 'string' || typeof userJson.telephone !== 'string'
        || typeof userJson.language !== 'string' || typeof userJson.shouldContact!== 'boolean'
        || typeof userJson.day1 !== 'string' || typeof userJson.day2 !== 'string'
        || typeof userJson.day3 !== 'string' || typeof userJson.day4 !== 'string'
        || typeof userJson.day5 !== 'string' || typeof userJson.day6 !== 'string'
        || typeof userJson.day7 !== 'string'
        
    ) {
        throw new Error('Invalid values for User');
    }
    if (Object.keys(userJson).length !== 23) {
        throw new Error('Invalid values for User');
    }
    if ((userJson.name as string).trim().length === 0 || (userJson.address as string).trim().length === 0
    || (userJson.type as string).trim().length === 0 || (userJson.email as string).trim().length === 0
    || (userJson.day1 as string).trim().length === 0 || (userJson.day2 as string).trim().length === 0
    || (userJson.day3 as string).trim().length === 0 || (userJson.day4 as string).trim().length === 0
    || (userJson.day5 as string).trim().length === 0 || (userJson.day6 as string).trim().length === 0
    || (userJson.day7 as string).trim().length === 0
    || (userJson.telephone as string).trim().length === 0 || (userJson.language as string).trim().length === 0) {
        throw new Error('Invalid values for User');
    }
    return userJson as TuristPoint;
}

export default TuristPointRouter;