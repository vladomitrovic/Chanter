'use strict';
module.exports = (sequelize, DataTypes) => {
  const Function = sequelize.define('Function', {
    functionName: DataTypes.STRING
  }, {});
  Function.associate = function(models) {
    Function.belongsToMany(models.Person, {through: 'Person_Chorus', foreignKey: 'FunctionId'});
    Function.belongsToMany(models.Choir, {through: 'Person_Chorus', foreignKey: 'FunctionId'});
  };
  return Function;
};
