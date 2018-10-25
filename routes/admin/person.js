var express = require('express');
var router = express.Router();
var models = require('../../models')


// New Person form
router.get('/new', function(req, res, next) {

    res.render('admin/editPerson', {layout:'admin/adminLayout', user: req.session.user, nperson: new models.Person(), action: "/new"});
});

router.get('/update/:id', function(req, res, next) {
    models.Person.findOne({where:{id: req.params.id}, include: models.Locality}).then((person) => {
        console.log(JSON.stringify(choir));
        res.render('admin/editPerson', {layout:'admin/adminLayout', user: req.session.user, operson: person, action: "/edit"});
    });
});

router.post('/update/:id', function(req, res, next) {

});

router.get('/delete', function(req, res, next) {

    res.render('admin/deletePerson', {layout:'admin/adminLayout', user: req.session.user,});
});


module.exports = router;
