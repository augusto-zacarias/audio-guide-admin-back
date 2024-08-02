import { Router } from 'express'
import { HTTPError, TuristPoint } from '../Types';
import TuristPointController from '../controllers/TuristPointController';
import { checkAdminAuth } from '../middlewares/auth';

const TuristPointRouter = Router();
const turistPointController = new TuristPointController()

TuristPointRouter.get('/',async (req,res,done)=>{
    const turistPoints = await turistPointController.getAllTuristPoints();
    return res.status(200).send(turistPoints);
});

TuristPointRouter.get('/:id',async (req,res,done)=>{
    const turistPointId = req.params.id

    let turistPointNum;
    try {
        turistPointNum = parseInt(turistPointId);
    } catch(e) {
        return res.status(400).send('Indalid id passed')
    }

    let turistPoint;
    try {
        turistPoint = await turistPointController.getTuristPointById(turistPointNum);
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
        createdTuristPoint = await turistPointController.createTuristPoint(turistPoint);
    } catch(e) {
        return res.status(409).send('This Turist Point already exists')
    }

    return res.status(201).send(createdTuristPoint);
});

TuristPointRouter.put('/:id',checkAdminAuth,async (req,res,done)=>{

    const turistPointJson = req.body;
    const turistPointId = req.params.id

    let turistPointNum;
    try {
        turistPointNum = parseInt(turistPointId);
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
        updatedTuristPoint = await turistPointController.updateTuristPoint(turistPointNum,turistPointBody);
    } catch(e) {
        const error = e as HTTPError
        return res.status(error.statusCode).send(error.message)
    }


    return res.status(201).send(updatedTuristPoint);
});

TuristPointRouter.delete('/:id',checkAdminAuth,async (req,res,done)=>{
    const turistPointId = req.params.id

    let turistPointNum;
    try {
        turistPointNum = parseInt(turistPointId);
    } catch(e) {
        return res.status(400).send('Indalid id passed')
    }

    let turistPoint;
    try {
        turistPoint = await turistPointController.deleteTuristPoint(turistPointNum);
    } catch(e) {
        return res.status(404).send('Turist point not found')
    }

    return res.status(204).send();
});

export default TuristPointRouter;