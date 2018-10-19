var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
    res.render('service/index', { title: '' });
});

router.get('/annonces', function(req, res, next) {
    res.render('service/petites', { title: 'annonces' });
});


router.get('/forumpres', function (req, res, next) {
    res.render('service/forumpres', {title: 'forum'});

});


router.get('/ascj', function (req, res, next) {
    res.render('service/ascj', {title: 'soutien'});
});

router.get('/newsletter', function (req, res, next) {
    res.render('service/newsletter', {title: 'newsletter'});
});


router.get('/servicedep', function (req, res, next) {
    res.render('service/servicedep', {title: 'servicedep'});
});

router.get('/contact', function (req, res, next) {
    res.render('service/contacts', {title: 'contact'});
});
module.exports = router;