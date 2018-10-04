const Sequelize = require('sequelize');
const sequelize = new Sequelize('dbChanter', 'user', 'root1234', {
    host: '192.168.99.100',
    dialect: 'mysql',
    logging: false,
    pool: {
        max: 5,
        min: 0,
        idle: 10000
    },
    timezone: 'Europe/Zurich'
});