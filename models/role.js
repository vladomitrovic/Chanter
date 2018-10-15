
const Role = sequelize.define('role', {
    roleName: {
        type: Sequelize.STRING
    },

});

Role.belongsToMany(models.person, {through: 'Role_Person'});