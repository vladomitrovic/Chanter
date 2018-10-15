

var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
var mysql = require('mysql');
var session = require('express-session');
var i18n=require("i18n-express");

var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');
var presentationRouter = require('./routes/presentation');
var avccRouter = require('./routes/avcc');
var serviceRouter = require('./routes/service');
var choeursRouter = require('./routes/choeurs');
var adminRouter = require('./routes/admin/admin');
var formationRouter = require('./routes/formation');
var projetsRouter = require('./routes/projetmusical');
var UserTest = require('./models/usertest');

// Database testing process

const Sequelize = require('sequelize');






const database ='chanterTest';
const username = 'admin';
const password = 'admin';


const sequelize = new Sequelize(database, username, password, {
    dialect: 'mysql',
    host: "localhost",
    port: 3306,
})

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'hbs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));
app.use(session({
    secret: 'jeannetteetmarilou',
    saveUninitialized: true,
    resave: true
}));

app.use(i18n({
    translationsPath: path.join(__dirname, 'lang'), // <--- use here. Specify translations files path.
    siteLangs: ["fr","de"],
    defaultLang : "fr",
    textsVarName: "langs"
}));


app.use('/', indexRouter);
app.use('/users', usersRouter);
app.use('/presentation', presentationRouter);
app.use('/avcc', avccRouter);
app.use('/service', serviceRouter);
app.use('/choeurs', choeursRouter);
app.use('/admin', adminRouter);
app.use('/formation', formationRouter);
app.use('/projetmusical', projetsRouter);



// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});


// Database test


sequelize
    .authenticate()
    .then(() => {
        console.log('Connection has been established successfully.');
    })
    .catch(err => {
        console.error('Unable to connect to the database:', err);
    });



const User = sequelize.define('user', {
    firstName: {
        type: Sequelize.STRING
    },
    lastName: {
        type: Sequelize.STRING
    }
});

// force: true will drop the table if it already exists
User.sync({force: true}).then(() => {
    // Table created
    return User.create({
        firstName: 'John',
        lastName: 'Mayura'
    });
});















module.exports = app;
