var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
    res.render('presentation/index', { title: 'Express' });
});

router.get('/comite', function(req, res, next) {
    res.render('presentation/comite',{ title: 'Comité' });
});

router.get('/commission', function(req, res, next) {
    res.render('presentation/commission');
});

router.get('/groupement.hbs', function(req, res, next) {
    res.render('presentation/groupement');
});

router.get('/honneur', function(req, res, next) {
    res.render('presentation/honneur');
});

module.exports = router;