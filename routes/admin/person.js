var express = require('express');
var router = express.Router();
var models = require('../../models')



// Person index route

router.get('/', function (req, res, next) {
    res.render('admin/person/index', {layout: 'admin/adminLayout', user: req.session.user, action:"/"});


})



// New Person form
router.get('/new', function(req, res, next) {

    res.render('admin/person/edit', {layout:'admin/adminLayout', user: req.session.user, person: new models.Person(), action: "/new"});
});

router.get('/update', function(req, res, next) {

    res.render('admin/person/edit', {layout:'admin/adminLayout', user: req.session.user, action: "/update"});
});


router.get('/update/:id', function(req, res, next) {

        models.Person.findOne({where:{id: req.params.id}, include: models.Locality}).then((person) => {

            //res.send(JSON.stringify(person));
            console.log(JSON.stringify(person));

            res.render('admin/person/edit', {layout:'admin/adminLayout', user: req.session.user, person: person, action: "/update"});
    });

});

router.get('/list', function(req, res, next) {
    models.Person.findAll().then((person) => {
        res.render('admin/person/listPerson', {person:person, user: req.session.user, layout:'admin/adminLayout'});
    });
});


// Adding the new person
router.post('/new', function (req, res, next) {

    // Retrieve the values from form controls

    var body = req.body;
    var lastname = body.lastname;
    var firstname = body.firstname;
    var birthdate = body.birthdate;
    var address1 = body.address1;
    var address2  = body.address2;
    var npa = body.personnpa;
    var phone = body.phone;
    var phoneprof = body.phoneprof;
    var fax = body.fax;
    var email = body.email;
    var mobile = body.mobilephone;
    var genderId = body.gender;
    var functionId = body.role;

    console.log(body);


    // Validating the locality
    models.Locality.findOrCreate({
        where:{npa:npa}, defaults:{localityName: req.body.localityName}
    }).spread((locality, created)=> {

      //  console.log(JSON.stringify(locality));
       person = models.Person.create({
            lastname:  lastname,
            firstname: firstname,
            birthdate: birthdate,
            address1 : address1,
            address2:  address2,
            phone: phone,
            phoneprof: phoneprof,
            fax: fax,
            email: email,
            mobile: mobile,
            GenderId: genderId,
            LocalityId:locality.id,
            FunctionId: functionId


        }).then(

          // models.Comity.add(person, {through: {FunctionId:FunctionId}});


            res.redirect("admin/person/new"));

    });
});








router.post('/update', function(req, res, next) {



    console.log('POSTing...')



    // Get the form details to the variables

    var body = req.body;
    var lastname = body.last_name;
    var firstname = body.first_name;
    var birthdate = body.birthdate;
    var address1 = body.address1;
    var address2  = body.address2;
    var npa = body.npa;
    var phone = body.phone;
    var phoneprof = body.phoneprof;
    var fax = body.fax;
    var email = body.email;
    var mobile = body.mobilephone;
    var GenderId = body.genderId;
    var FunctionId = body.role;







res.send(lastname+ "   " + firstname + " " + birthdate + "address1: " +address1+ " address2: "+ address2 + " phone: "+ phone + " phoneprof: "+ phoneprof + "genderId " +genderId);







  // Validation for the corresponding model



  // Update the table



});

router.get('/delete', function(req, res, next) {

    res.render('admin/deletePerson', {layout:'admin/adminLayout', user: req.session.user});
});


module.exports = router;
