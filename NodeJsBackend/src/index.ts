import Express from 'express';
import cors from 'cors';
import { connectToDatabase } from './services/DatabaseService.js';
import AdminController from './controllers/AdminController.js';
import UserController from './controllers/UserController.js';

const app = Express();
app.use(cors());
app.use(Express.json());

await connectToDatabase();

app.use('/admin', AdminController);
app.use('/user', UserController);

//	Default route api response
app.get('/', async (request, response) => {
	response.send('<h1>E-commerce Api</h1>');
});

/** Serves Api on standard 8080 port */
app.listen(8080, () => {
	console.log('Server open and listening on http://localhost:8080');
});
