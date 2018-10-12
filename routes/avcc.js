var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
    res.render('avcc/presentationavcc', { title: 'presentationavcc' });
});

router.get('/historique', function(req, res, next) {
    res.render('avcc/historique', { title: 'historiqueavcc' });
});


router.get('/comite', function (req, res, next) {
    res.render('avcc/comite', {title: 'comiteavcc'});

});


router.get('/fonds', function (req, res, next) {
    res.render('avcc/fonds', {title: 'fondsavcc'});
});

router.get('/formation', function (req, res, next) {
    res.render('avcc/formation', {title: 'formationavcc'});
});


router.get('/pavcc', function (req, res, next) {
    res.render('avcc/presentationavcc', {title: 'presentationavcc'});
});
module.exports = router;