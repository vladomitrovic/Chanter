var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
    res.render('presentation/index', { title: 'presentation' });
});

router.get('/comite', function(req, res, next) {
    res.render('presentation/comite',{ title: 'comite'});
});

router.get('/commission', function(req, res, next) {
    res.render('presentation/commission',{ title: 'commission' });
});

router.get('/groupement', function(req, res, next) {
    res.render('presentation/groupement',{ title: 'groupements'});
});

router.get('/honneur', function(req, res, next) {
    res.render('presentation/honneur',{ title: 'honneur'});
});

module.exports = router;
