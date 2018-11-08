var express = require('express');
var router = express.Router();
var models = require('../models');
var Sequelize = require('sequelize');
/* GET home page. */

//TOTO
router.get('/', function(req, res, next) {

    var lang = req.i18n_lang;
    models.Article.findAll(
        {where: {categoryId: 2}},

    ).then((news)=>
    {
        res.render('index',{news:news, bool:lang==='fr', title: 'news'});
    })

});


module.exports = router;
