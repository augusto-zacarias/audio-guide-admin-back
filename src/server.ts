import express from 'express';
import path from 'path';
import TuristPointRouter from './controllers/TuristPoint.js';
import UserRouter from './controllers/User.js';
import { checkAuth } from './middlewares/auth.js';
import cors from 'cors';
import { fileURLToPath } from 'url';

// Get the directory name
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

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

export default app;