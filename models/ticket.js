'use strict';
module.exports = (sequelize, DataTypes) => {
    const Ticket = sequelize.define('Ticket', {
        nom: DataTypes.STRING,
        email: DataTypes.STRING,
        sujet: DataTypes.STRING,
        message: DataTypes.STRING,
        statut:DataTypes.STRING
    }, {});
    return Ticket;
};