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
var serviceRouter = require('./routes/servicetest');
var choeursRouter = require('./routes/choeurs');

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
    var langUrl = req.url.split('/');
    var newUrl = "/";
    for (var i = 2; i < langUrl.length; i++) {
        newUrl += langUrl[i] + "/";
    }
    if (newUrl.length > 1) {
        newUrl = newUrl.slice(0, -1);
    }

    req.url = newUrl;
    var lang = require('./lang/' + langUrl[1] + '.js');
    res.locals.langs = lang;
    res.locals.langUsed = langUrl[1];

    next();
})

app.use('/', indexRouter);
app.use('/users', usersRouter);
app.use('/presentation', presentationRouter);
app.use('/avcc', avccRouter);
app.use('/service', serviceRouter);
app.use('/choeurs', choeursRouter);



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
