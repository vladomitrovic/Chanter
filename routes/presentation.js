var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
    res.render('presentation/index', { title: {langs:presentation} });
});

router.get('/comite', function(req, res, next) {
    res.render('presentation/comite',{ title: {langs:comite} });
});

router.get('/commission', function(req, res, next) {
    res.render('presentation/commission',{ title: {langs:commission} });
});

router.get('/groupement', function(req, res, next) {
    res.render('presentation/groupement',{ title: {langs:groupements}});
});

router.get('/honneur', function(req, res, next) {
    res.render('presentation/honneur',{ title: {langs:honneur}});
});

module.exports = router;