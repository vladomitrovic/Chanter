'use strict';
module.exports = (sequelize, DataTypes) => {
  const choirtype = sequelize.define('choirtype', {
      choirType: DataTypes.STRING
  }, {});
  choirtype.associate = function(models) {
    // associations can be defined here
      //choirtype.hasMany(models.choir);
  };
  return choirtype;
};
