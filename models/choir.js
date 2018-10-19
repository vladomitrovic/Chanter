'use strict';
module.exports = (sequelize, DataTypes) => {
  const Choir = sequelize.define('Choir', {
    choirName: DataTypes.STRING,
    address1: DataTypes.STRING,
    address2: DataTypes.STRING,
    website: DataTypes.STRING,
    otherType: DataTypes.STRING,
    yearOfCreation: DataTypes.DATEONLY,
    chEglise: DataTypes.BOOLEAN,
    chGospel: DataTypes.BOOLEAN,
    memberfc: DataTypes.BOOLEAN,
    entryfc: DataTypes.DATEONLY,
    entryGroup: DataTypes.DATEONLY,
    remarks: DataTypes.STRING
  }, {});
  Choir.associate = function(models) {
      Choir.hasOne(models.Choirtype);
      Choir.hasMany(models.Group);
      Choir.hasOne(models.Language);
  };
  return Choir;
};
