import Router from 'express';
import { client } from '../services/DatabaseService.js';

const router = Router();

//	Returns all logins and passwords
router.get('/allUsers', async (request, response) => {
	response.json((await client.query('SELECT nome, email, senha FROM usuarios')).rows);
});

//	Returns specific login and password
router.get('/:email', async (request, response) => {
	response.json((await client.query('SELECT nome, email, senha FROM usuarios WHERE email = $1',
		[request.params.email])).rows);
});

export default router;
