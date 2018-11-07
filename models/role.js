'use strict';
module.exports = (sequelize, DataTypes) => {
    const Role = sequelize.define('Role', {
        roleName: DataTypes.STRING,
        layout: DataTypes.STRING
    }, {});
    Role.associate = function(models) {
        // associations can be defined here
        Role.belongsToMany(models.Person, {through: 'Role_Person'});
    };
    return Role;
};