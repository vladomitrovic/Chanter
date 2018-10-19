'use strict';
module.exports = (sequelize, DataTypes) => {
  const Groupe = sequelize.define('Groupe', {
    groupName: DataTypes.STRING
  }, {});
  Groupe.associate = function(models) {
    // associations can be defined here
      Groupe.hasMany(models.Choir);
  };
  return Groupe;
};