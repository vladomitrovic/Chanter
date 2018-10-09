var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/choeurEnHerbe', function(req, res, next) {
    res.render('projetmusical/choeurEnHerbe', { title: 'Choeur en herbe' });
});

router.get('/frappFestival', function(req, res, next) {
    res.render('projetmusical/frappFestival', { title: 'Frapp\' Festival' });
});

router.get('/airDeMontagne', function(req, res, next) {
    res.render('projetmusical/airDeMontagne', { title: 'Air de montagne' });
});
