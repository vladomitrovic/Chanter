;var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
var mysql = require('mysql');

var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');
var presentationRouter = require('./routes/presentation');
var avccRouter = require('./routes/avcc');
//var serviceRouter = require('./routes/servicetest');
var choeursRouter = require('./routes/choeurs');
var adminRouter = require('./routes/admin');

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'hbs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));


app.use((req, res, next) => {
    //if no language is specified in the url of the homepage
    //assume FR
    if (req.url == "/") {
        res.redirect("/fr");
        return;
    }

    /*
    else if (req.url.indexOf("/services") != -1) {
        next();
        return;
    }
    */

    //split the url into strings on slash
    var langUrl = req.url.split('/');
    //forge new url
    var newUrl = "/";
    //append everything that comes after the language string
    for (var i = 2; i < langUrl.length; i++) {
        newUrl += langUrl[i] + "/";
    }
    //remove trailing slash
    if (newUrl.length > 1) {
        newUrl = newUrl.slice(0, -1);
    }

    req.url = newUrl;
    var lang = require('./lang/' + langUrl[1] + '.js');
    res.dlangUrl = 'fr';
    res.locals.langs = lang;
    res.locals.langUsed = langUrl[1];

    next();
});

app.use('/', indexRouter);
app.use('/users', usersRouter);
app.use('/presentation', presentationRouter);
app.use('/avcc', avccRouter);
//app.use('/service', serviceRouter);
app.use('/choeurs', choeursRouter);
app.use('/admin', adminRouter);



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

module.exports = app;
