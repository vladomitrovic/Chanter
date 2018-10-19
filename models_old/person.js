const bcrypt = require('bcrypt');
const saltRounds = 10;

const Person = sequelize.define('Person', {
    Lastname: Sequelize.STRING,
    Firstname: Sequelize.STRING,
    BrithDate: Sequelize.DATE,
    Adress1: Sequelize.STRING,
    Adress2: {
        type: Sequelize.STRING,
        allowNull: true
    },
    Phone: {
        type: Sequelize.STRING,
        allowNull: true
    },
    PhoneProf:{
        type: Sequelize.STRING,
        allowNull: true
    },
    Fax: {
        type: Sequelize.STRING,
        allowNull: true
    },
    Email: Sequelize.STRING,
    Mobile: Sequelize.STRING,
    LastUpdate: Sequelize.DATE,

    username: {
        type: DataTypes.STRING,
        allowNull: false,
        unique: true
    },
    password_hash: DataTypes.STRING,
    password : {
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
    }
});

Person.hasOne(models.gender);
Person.hasOne(models.locality);
Person.belongsToMany(models.role, {through: 'Role_Person'});
Person.belongsToMany(models.comity, {through: 'Comity_Person'});
Person.belongsToMany(models.function, {through: 'Person_Chorus'});
Person.belongsToMany(models.choir, {through: 'Person_Chorus'});