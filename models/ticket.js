'use strict';
module.exports = (sequelize, DataTypes) => {
    const Ticket = sequelize.define('Ticket', {
        nom: DataTypes.STRING,
        email: DataTypes.STRING,
        sujet: DataTypes.STRING,
        message: DataTypes.STRING,
        statut:DataTypes.STRING
    }, {});
    Ticket.associate = function(models) {
        // associations can be defined here
        Ticket.belongsTo(models.Category);
    };
    return Ticket;
};