var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
   // var langs = require('../lang/'+ res.locals.langUsed  );
    res.render('choeurs/index', { title: 'Choeurs'});
});


router.get('/registration', function(req, res, next) {
    res.render('choeurs/registration', { title: 'Choeur Registration'});
});



router.get('/calendrier', function(req, res, next) {
    res.render('choeurs/calendrier', { title: 'Express'});
});

module.exports = router;
