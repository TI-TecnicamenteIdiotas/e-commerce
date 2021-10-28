import Router from 'express';
import { client } from '../services/DatabaseService.js';

/** Variable that stores a Express router */
const router = Router();

//	Returns specific digital product data in Json format
router.get('/byName/:productName', async (request, response) => {
	response.json((await client.query('SELECT nome, imagem FROM mercadorias_digitais WHERE nome = $1',
		[request.params.productName.replace(/_/g, " ")])).rows);
});

//	Returns All digital products data in Json format
router.get('/allProducts', async (request, response) => {
	response.json((await client.query('SELECT * FROM mercadorias_digitais')).rows);
});

export default router;
