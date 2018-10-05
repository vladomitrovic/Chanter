var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
    res.render('presentation/index', { title: 'Express' });
});

router.get('/comite', function(req, res, next) {
    res.render('presentation/comite', { title: 'Express' });
});

router.get('/commission', function(req, res, next) {
    res.render('presentation/commission', { title: 'Express' });
});

router.get('/groupement.hbs', function(req, res, next) {
    res.render('presentation/groupement', { title: 'Express' });
});

router.get('/honneur', function(req, res, next) {
    res.render('presentation/honneur', { title: 'Express' });
});

module.exports = router;