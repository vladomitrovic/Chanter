'use strict';
module.exports = (sequelize, DataTypes) => {
  const Event = sequelize.define('Event', {
    title: DataTypes.STRING,
    info: DataTypes.TEXT,
    start: DataTypes.DATE,
    end: DataTypes.DATE,
    image: DataTypes.STRING
  }, {});
  Event.associate = function(models) {
    // associations can be defined here
      Event.belongsTo(models.Groupe);
  };
  return Event;
};