import Router from 'express';
import { client } from '../services/DatabaseService.js';

const router = Router();

//	Returns all logins and passwords
router.get('/allUsers', async (request, response) => {
	response.json((await client.query('SELECT email, senha FROM usuarios')).rows);
});

export default router;
