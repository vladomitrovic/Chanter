
const Locality = sequelize.define('locality', {
    localityName: {
        type: Sequelize.STRING
    },
    npa: {
        type: Sequelize.INTEGER
    },

});

Locality.hasMany(models.person);
Locality.hasMany(models.choir);