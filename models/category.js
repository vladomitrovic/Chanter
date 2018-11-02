'use strict';
module.exports = (sequelize, DataTypes) => {
  const Category = sequelize.define('Category', {
    categoryFR: DataTypes.STRING,
    categoryDE: DataTypes.STRING
  }, {});
  Category.associate = function(models) {
    // associations can be defined here
      Category.hasMany(models.Article);
      Category.hasMany(models.Ticket);
  };
  return Category;
};