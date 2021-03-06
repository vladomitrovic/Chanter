var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
var mysql = require('mysql');
var session = require('express-session');
var i18n=require("i18n-express");
var Sequelize = require("sequelize");
var flash = require('express-flash');
var handlebars = require('hbs')
handlebars.registerHelper('dateFormat', require('handlebars-dateformat'));

var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');
var presentationRouter = require('./routes/presentation');
var avccRouter = require('./routes/avcc');
var serviceRouter = require('./routes/service');
var choeursRouter = require('./routes/choeurs');
var adminRouter = require('./routes/admin/admin');
var formationRouter = require('./routes/formation');
var projetsRouter = require('./routes/projetmusical');



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

// use flash
app.use(flash());


app.use('/', indexRouter);
app.use('/users', usersRouter);
app.use('/presentation', presentationRouter);
app.use('/avcc', avccRouter);
app.use('/service', serviceRouter);
app.use('/choeurs', choeursRouter);
app.use('/admin', isAuthenticated, adminRouter);
app.use('/formation', formationRouter);
app.use('/projetmusical', projetsRouter);


//Check if the user is logged
function isAuthenticated(req, res, next){
    if(req.session.authenticated != true)
        res.redirect('/users');

    next();
}

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


const database = process.env.DB_DATABASE;
const username = process.env.DB_USER;
const password = process.env.DB_PASSWORD;





module.exports = app;
