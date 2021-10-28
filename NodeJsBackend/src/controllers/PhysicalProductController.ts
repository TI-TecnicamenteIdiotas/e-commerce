import Router from 'express';
import { client } from '../services/DatabaseService.js';

/** Variable that stores a Express router */
const router = Router();

//	Returns specific physical product data in Json format
router.get('/byName/:productName', async (request, response) => {
	response.json((await client.query('SELECT nome, descricao, categoria, preco, quantidade, imagem FROM mercadorias_fisicas WHERE nome = $1',
		[request.params.productName.replace(/_/g, " ")])).rows);
});

//	Returns All physical products data in Json format
router.get('/allProducts', async (request, response) => {
	response.json((await client.query('SELECT * FROM mercadorias_fisicas')).rows);
});

export default router;
