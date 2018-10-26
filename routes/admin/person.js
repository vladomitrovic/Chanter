var express = require('express');
var router = express.Router();
var models = require('../../models')


// New Person form
router.get('/new', function(req, res, next) {

    res.render('admin/editPerson', {layout:'admin/adminLayout', user: req.session.user, person: new models.Person(), action: "/new"});
});

router.get('/update/:id', function(req, res, next) {

        models.Person.findOne({where:{id: req.params.id}, include: models.Locality}).then((person) => {

            //res.send(JSON.stringify(person));
            console.log(JSON.stringify(person));
            res.render('admin/editPerson', {layout:'admin/adminLayout', user: req.session.user, person: person, action: "/edit"});
    });

});

router.post('/update/:id', function(req, res, next) {
  var lastname = req.body.last_name;

});

router.get('/delete', function(req, res, next) {

    res.render('admin/deletePerson', {layout:'admin/adminLayout', user: req.session.user,});
});


module.exports = router;
