'use strict';
module.exports = (sequelize, DataTypes) => {
  const ChoirType = sequelize.define('ChoirType', {
      choirType: DataTypes.STRING
  }, {});
  ChoirType.associate = function(models) {
    // associations can be defined here
      //choirtype.hasMany(models.choir);
  };
  return ChoirType;
};
