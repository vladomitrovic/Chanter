'use strict';
module.exports = (sequelize, DataTypes) => {
  const Article = sequelize.define('Article', {
    titleFR: DataTypes.STRING,
    titleDE: DataTypes.STRING,
    chapeauFR: DataTypes.STRING,
    chapeauDE: DataTypes.STRING,
    textFR: DataTypes.TEXT,
    textDE: DataTypes.TEXT,
    refPicture: DataTypes.STRING
  }, {});
  Article.associate = function(models) {
    // associations can be defined here
      Article.belongsTo(models.Person);
      Article.belongsTo(models.Category);
  };
  return Article;
};
