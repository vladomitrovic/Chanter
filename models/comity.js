'use strict';
module.exports = (sequelize, DataTypes) => {
  const Comity = sequelize.define('Comity', {
    comityName: DataTypes.STRING
  }, {});
  Comity.associate = function(models) {
    // associations can be defined here
      Comity.belongsToMany(models.Person, {through: 'Comity_Person', foreignKey: 'comity.id'});

  };
  //Comity.addPerson = function (Person) {}
  return Comity;




};
