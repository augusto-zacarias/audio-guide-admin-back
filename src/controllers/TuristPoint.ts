import { Router } from 'express'
import { TuristPoint } from '../Types.js';
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
        return res.status(400).send('Indalid id passed')
    }

    let turistPoint;
    try {
        turistPoint = await turistPointService.getTuristPointById(turistPointNum);
    } catch(e) {
        return res.status(404).send('Turist point not found')
    }

    return res.status(200).send(turistPoint);
});

TuristPointRouter.post('/',checkAdminAuth,async (req,res,done)=>{

    const turistPointJson = req.body;
    let turistPoint;
    try {
        turistPoint = turistPointJson as TuristPoint;
    } catch(e) {
        return res.status(400).send('Indalid values for Turist Point')
    }

    let createdTuristPoint;
    try {
        createdTuristPoint = await turistPointService.createTuristPoint(turistPoint);
    } catch(e: any) {
        return res.status(409).send(e.message)
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
        return res.status(400).send('Indalid id passed')
    }

    let turistPointBody;
    try {
        turistPointBody = turistPointJson as TuristPoint;
    } catch(e) {
        return res.status(400).send('Indalid values for Turist Point')
    }

    let updatedTuristPoint;
    try {
        updatedTuristPoint = await turistPointService.updateTuristPoint(turistPointNum,turistPointBody);
    } catch(e:any) {
        return res.status(400).send(e.message)
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
        return res.status(400).send('Indalid id passed')
    }

    let turistPoint;
    try {
        turistPoint = await turistPointService.deleteTuristPoint(turistPointNum);
    } catch(e:any) {
        return res.status(404).send(e.message)
    }

    return res.status(204).send();
});

export default TuristPointRouter;