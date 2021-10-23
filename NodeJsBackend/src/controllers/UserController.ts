import Router from 'express';
import { client } from '../services/DatabaseService.js';

const router = Router();

//	Returns specific login and password
router.get('/login/:name', async (request, response) => {
	response.json((await client.query('SELECT email, senha FROM usuarios WHERE nome = $1',
		[request.params.name])).rows);
});

//	Returns already existed logins
router.post('/login', async (request, response) => {
	response.json((await client.query('SELECT email, senha FROM usuarios WHERE email = $1',
		[request.body.email])).rows);
});

//	Registers a new login with password in database
router.post('/register', async (request, response) => {
	if (!request.body.name || !request.body.email || !request.body.password) {
		response.sendStatus(400);
	}
	response.json((await client.query('INSERT INTO usuarios(nome, email, senha) VALUES ($1, $2, $3);',
		[request.body.name, request.body.email, request.body.password])).rows);
});

export default router;
