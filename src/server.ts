import express, { Request, Response } from 'express';
import path from 'path';
import {TuristPoint} from './types/Types';

const app = express();
const port = 3000;


app.use(express.json());

const turistPoints:TuristPoint[] = [{
  name: "parque do Povo",
  id: 1
}];

app.get('/', (req: Request, res: Response) => {
  res.send('Test endpoint');
});

app.get('/turistPoints', (req: Request, res: Response) => {

  res.status(200).send(turistPoints);
});


app.post('/turistPoints', (req: Request, res: Response) => {

  res.status(201).send(turistPoints);
});

app.put('/turistPoints', (req: Request, res: Response) => {

  res.status(200).send(turistPoints);
});

app.delete('/turistPoints', (req: Request, res: Response) => {

  res.status(204).send(turistPoints);
});

app.use(express.static(path.join(__dirname,'..','public')));

app.listen(port, () => {
  console.log(`Servidor rodando em http://localhost:${port}`);
});