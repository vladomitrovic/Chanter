const Choir = sequelize.define('choir',{

    choirName: Sequelize.STRING,
    address1: Sequelize.STRING,
    address2: Sequelize.STRING,
    website: Sequelize.STRING,
    idChoirType: Sequelize.INTEGER,
    otherType: Sequelize.STRING,
    yearOfCreation: Sequelize.DATE,
    chEglse: Sequelize.CHAR,
    chGospel: Sequelize.CHAR,
    memberfc: Sequelize.CHAR,
    entryfc: Sequelize.DATE,
    entryGroup: Sequelize.DATE,
    remarks: Sequelize.STRING

})
choir.hasOne(Choirtype)
choir.hasMany(Group)
choir.hasOne(Language)
