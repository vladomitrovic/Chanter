var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/generalPlan', function(req, res, next) {
    res.render('formation/generalPlan', { title: 'generalPlan' });
});

router.get('/conference', function(req, res, next) {
    res.render('formation/conference', { title: 'conference' });
});

router.get('/travailVocal', function(req, res, next) {
    res.render('formation/travailVocal', { title: 'travailVocal' });
});

module.exports = router;