import Router from 'express';
import { client } from '../services/DatabaseService.js';

const router = Router();

//	Registers a new login with password in database
router.post('/register', async (request, response) => {
	if (!request.body.name || !request.body.email || !request.body.password) {
		response.sendStatus(400);
	}
	response.json((await client.query('INSERT INTO usuarios(nome, email, senha) VALUES ($1, $2, $3);',
		[request.body.name, request.body.email, request.body.password])).rows);
});

export default router;
