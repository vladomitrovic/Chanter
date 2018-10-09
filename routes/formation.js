var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/generalPlan', function(req, res, next) {
    res.render('formation/generalPlan', { title: 'Choeur en herbe' });
});

router.get('/conference', function(req, res, next) {
    res.render('formation/conference', { title: 'Frapp\' Festival' });
});

router.get('/travailLocal', function(req, res, next) {
    res.render('formation/travailLocal', { title: 'Air de montagne' });
});
