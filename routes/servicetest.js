var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
    res.render('service/index', { title: 'Express' });
});

router.get('/annonces', function(req, res, next) {
    res.render('service/petites', { title: 'Express' });
});


router.get('/forumpres', function (req, res, next) {
    res.render('service/forumpres', {title: 'Express'});

});


router.get('/ascj', function (req, res, next) {
    res.render('service/ascj', {title: 'Express'});
});

router.get('/newsletter', function (req, res, next) {
    res.render('service/newsletter', {title: 'Express'});
});


router.get('/servicedep', function (req, res, next) {
    res.render('service/servicedep', {title: 'Express'});
});

router.get('/contact', function (req, res, next) {
    res.render('service/contacts', {title: 'Express'});
});
module.exports = router;