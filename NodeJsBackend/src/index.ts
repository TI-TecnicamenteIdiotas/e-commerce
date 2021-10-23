import Express from 'express';
import cors from 'cors';

const app = Express();
app.use(cors());

app.get('/', async (request, response) => {
	response.send('<h1>E-commerce Api</h1>');
});

/** Serves Api on standard 8080 port */
app.listen(8080, () => {
	console.log('Server open and listening on http://localhost:8080');
});
