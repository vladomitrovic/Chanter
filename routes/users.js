var express = require('express');
var router = express.Router();
var models = require('../models');
const bcrypt = require('bcryptjs');
const saltRounds = 10;


/* GET users listing. */

router.get('/', function(req, res, next) {
    res.render('login', { title:'connexion'});

});



router.post('/login', function(req, res, next) {

    models.Person.findOne(
        {
            where: {username: req.body.username},
            include: [{
                model: models.Role}]

        }).then((user) => {
        if(user !== null) {
            bcrypt.compare(req.body.password, user.password_hash).then((correct) => {
                if (correct === true) {
                    req.session.authenticated = true;
                    req.session.user = user;
                    res.redirect('/admin');
                }
                else {
                    req.flash('error', 'Password  or login was incorrect!');
                    res.redirect('./');
                }
            }).catch(console.error);
        }else{
            req.flash('error', 'Password or login was incorrect!');
            res.redirect('./');
        }
    });
});

router.get('/logout', function(req, res, next) {
    req.session.destroy((err) => {
        res.redirect('./')
    });
});

module.exports = router;
