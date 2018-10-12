var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/generalPlan', function(req, res, next) {
    res.render('formation/generalPlan', { title: 'generalPlan' });
});

router.get('/conference', function(req, res, next) {
    res.render('formation/conference', { title: 'conference' });
});

router.get('/travailLocal', function(req, res, next) {
    res.render('formation/travailLocal', { title: 'travailVocal' });
});

module.exports = router;