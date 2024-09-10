const { Sequelize } = require('sequelize');
const mysql = require('mysql2/promise');

const sequelize = new Sequelize(
    process.env.DB_NAME,
    process.env.DB_USER,
    process.env.DB_PASSWORD,
    {
        host: process.env.DB_HOST,
        dialect: 'mysql',
        logging: false
    }
);

module.exports = {
    sequelize,
    connect: async () => {
        try {
            const connection = await mysql.createConnection({
                host: process.env.DB_HOST,
                user: process.env.DB_USER,
                password: process.env.DB_PASSWORD,
            });

            await connection.query(
                'CREATE DATABASE IF NOT EXISTS `' + process.env.DB_NAME + '`'
            );

            await connection.end();

            await sequelize.authenticate();
            console.log('Connection has been established successfully.');
            await sequelize.sync();
        } catch (error) {
            console.error('Unable to connect to the database:', error);
        }
    }
}
