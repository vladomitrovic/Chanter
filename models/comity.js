
const Comity = sequelize.define('comity', {
    comityName: {
        type: Sequelize.STRING
    },

});

Comity.belongsToMany(models.person, {through: 'Comity_Person'});