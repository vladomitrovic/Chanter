'use strict';
module.exports = (sequelize, DataTypes) => {
  const Locality = sequelize.define('Locality', {
    localityName: DataTypes.STRING,
    npa: DataTypes.INTEGER
  }, {});
  Locality.associate = function(models) {
    // associations can be defined here
      Locality.hasMany(models.Person);
      Locality.hasMany(models.Choir);
  };
  return Locality;
};