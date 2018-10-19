'use strict';
module.exports = (sequelize, DataTypes) => {
  const Gender = sequelize.define('Gender', {
    genderName: DataTypes.STRING
  }, {});
  Gender.associate = function(models) {
    // associations can be defined here
      Gender.hasMany(models.Person);
  };
  return Gender;
};