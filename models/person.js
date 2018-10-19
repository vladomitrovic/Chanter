'use strict';
const bcrypt = require('bcryptjs');
const saltRounds = 10;
module.exports = (sequelize, DataTypes) => {
  const Person = sequelize.define('Person', {
    lastname: DataTypes.STRING,
    firstname: DataTypes.STRING,
    birthdate: DataTypes.DATEONLY,
    address1: DataTypes.STRING,
    adress2: DataTypes.STRING,
    phone: DataTypes.STRING,
    phoneprof: DataTypes.STRING,
    fax: DataTypes.STRING,
    email: DataTypes.STRING,
    mobile: DataTypes.STRING,
    lastupdate: DataTypes.DATE,
    username: {
        type: DataTypes.STRING,
        allowNull: false,
        unique: true
    },
    password:  {
        type: DataTypes.VIRTUAL,
        set: function(val) {
            // Remember to set the data value, otherwise it won't be validated
            this.setDataValue('password', val);
            this.setDataValue('password_hash', bcrypt.hashSync(val, saltRounds));
        },
        validate: {
            isLongEnough: (val) => {
                if (val.length < 7) {
                    throw new Error("Please choose a longer password")
                }
            }
        }
    },
    password_hash: DataTypes.STRING
  }, {});
  Person.associate = function(models) {
    // associations can be defined herey
      Person.belongsTo(models.Gender);
      Person.belongsTo(models.Locality);
      Person.belongsToMany(models.Role, {through: 'Role_Person'});
      Person.belongsToMany(models.Comity, {through: 'Comity_Person'});
      Person.hasMany(models.Function);
      Person.belongsToMany(models.Choir, {through: 'Person_Chorus'});
  };
  return Person;
};
