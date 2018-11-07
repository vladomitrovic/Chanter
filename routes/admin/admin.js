var express = require('express');
var router = express.Router();
var articleRouter = require('./articles');
var choeursRouter = require('./choeurs');
var listeRouter = require('./liste');
var personRouter = require('./person');
var eventRouter = require('./event');
var annonceRouter = require('./annonce');
var ticketRouter = require('./tickets');
var models = require('../../models');
const bcrypt = require('bcryptjs');
const saltRounds = 10;

/* GET home page. */
router.get('/', function(req, res, next) {
    var user = req.session.user;

    switch(user.Roles[0].roleName){

        case 'SuperAdmin':
            res.render('admin/index', { title: 'Admin', user: req.session.user,  layout:'admin/adminLayout'});
        case 'Editeur':
            res.render('admin/index', { title: 'Editeur', user: req.session.user,  layout:'admin/editeurLayout'});
        case 'Webmaster':
            res.render('admin/index', { title: 'Webmaster', user: req.session.user,  layout:'admin/webmasterLayout'});
            break;
    }

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
router.use('/liste', listeRouter);
router.use('/event', eventRouter);
router.use('/liste', listeRouter);
router.use('/person', personRouter);
router.use('/annonce', annonceRouter);
router.use('/tickets', ticketRouter);


module.exports = router;