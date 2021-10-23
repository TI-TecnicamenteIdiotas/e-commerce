import postgres from 'pg';

const { Client } = postgres;

export const client = new Client({
	user: 'postgres',
	host: 'localhost',
	database: 'postgres',
	password: 'password',
	port: 5432,
});

export async function connectToDatabase() {
	try {
		await client.connect();
		console.info('Connect to database');
	} catch (error) {
		console.error('Failed to connect\n', error);
		process.exit(1);
	}
}
