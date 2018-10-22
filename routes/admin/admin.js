var express = require('express');
var router = express.Router();
var articleRouter = require('./articles');
var choeursRouter = require('./choeurs');
var models = require('../../models');
const bcrypt = require('bcryptjs');
const saltRounds = 10;

/* GET home page. */
router.get('/', function(req, res, next) {
    res.render('admin/index', { title: 'Admin', user: req.session.user,  layout:'admin/adminLayout'});
});

router.get('/params', function(req, res, next) {
    res.render('admin/params', {user: req.session.user,  layout:'admin/adminLayout'});
});

router.post('/params/pwd', function(req, res, next) {

    if(req.body.newPwd!=req.body.newPwd2){
        req.flash('error', 'pwd !=');
        res.redirect('./');
    }

    var user = req.session.user;
    var pwd = req.body.newPwd;

    bcrypt.compare(req.body.actualPwd, user.password_hash).then((correct) => {
        if (correct === true) {
            models.Person.update(
                {password : pwd},
                {where: {id: user.id}}
                )
    }
        else {
            req.flash('error', 'Password incorrect!');
            res.redirect('./');
        }
    }).catch(console.error);


    res.render('admin/params', {user: req.session.user,  layout:'admin/adminLayout'});
});

router.use('/articles', articleRouter);
router.use('/choeurs', choeursRouter);


module.exports = router;