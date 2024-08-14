import express from 'express';
import path from 'path';
import TuristPointRouter from './controllers/TuristPoint';
import UserRouter from './controllers/User';
import { checkAuth } from './middlewares/auth';
import cors from 'cors';

const app = express();
const port = 3000;

app.use(cors({
  origin: '*'
}));
app.use(express.json());
app.use(express.static(path.join(__dirname,'..','public')));

app.use('/user',UserRouter);
app.use('/turistPoint',checkAuth,TuristPointRouter);

app.listen(port, () => {
  console.log(`Servidor rodando em http://localhost:${port}`);
});