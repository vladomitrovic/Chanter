var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
    res.render('avcc/index',{layout: 'layout.hbs'}, { title: 'AVCC' });
});

router.get('/historique', function(req, res, next) {
    res.render('avcc/historique', { title: 'Historique' });
});


router.get('/comite', function (req, res, next) {
    res.render('avcc/comite', {title: 'Express'});

});


router.get('/fonds', function (req, res, next) {
    res.render('avcc/fonds', {title: 'Express'});
});

router.get('/formation', function (req, res, next) {
    res.render('avcc/formation', {title: 'Express'});
});


router.get('/pavcc', function (req, res, next) {
    res.render('avcc/presentationavcc', {title: 'Express'});
});
module.exports = router;