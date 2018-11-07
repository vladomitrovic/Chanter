var express = require('express');
var router = express.Router();
var models = require('../../models');




// Person index route

router.get('/', function (req, res, next) {

        models.Person.findAll(

            { include: [{
                model: models.Role}]}
        ).then((person) => {
            res.render('admin/person/index', {person:person, user: req.session.user, layout:'admin/adminLayout'});
        });

    });





// New Person form
router.get('/new', function(req, res, next) {

    res.render('admin/person/edit', {layout:'admin/adminLayout', user: req.session.user, person: new models.Person(), action: "/new"});
});

/*
router.get('/edit', function(req, res, next) {

    res.render('admin/person/edit', {layout:'admin/adminLayout', user: req.session.user, action: "/edit"});
});
*/

router.get('/edit/:id', function(req, res, next) {

        models.Person.findOne({where:{id: req.params.id}, include: models.Locality}).then((person) => {

            //res.send(JSON.stringify(person));
            console.log(JSON.stringify(person));

            res.render('admin/person/edit', {layout:'admin/adminLayout', user: req.session.user, person: person, action: "/edit"});
    });

});

router.get('/list', function(req, res, next) {
    models.Person.findAll().then((person) => {
        res.render('admin/person/list', {person:person, user: req.session.user, layout:'admin/adminLayout'});
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
            FunctionId: functionId,


        }).then((person) =>

       {
           models.Comity.findOne({
               where: {
                   comityName:'Comite FCC'}

           }).then((comity) => {
               console.log(comity);

               var comityid = comity.id;
               console.log(comity);


             models.Comity.addPerson({personId: person.id, comityId: comityid}).then(() => {

                   res.redirect('/admin/person')
               })
           }).catch(console.error);



            console.log(person);




        })

         //res.redirect("admin/person/new"));

    });
});








router.post('/edit/:id', function(req, res, next) {



    console.log('Am i here...');



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



    // Validation for the corresponding model

    models.Locality.findOrCreate({
        where:{npa:npa}
    }).spread((locality, created)=>{

        console.log(JSON.stringify(locality));
    // Update the table
        person = models.Person.update({
                lastname:  lastname,
                firstname: firstname,
                birthdate: birthdate,
                npa: npa,
                address1 : address1,
                address2:  address2,
                phone: phone,
                phoneprof: phoneprof,
                fax: fax,
                email: email,
                mobile: mobile,
                GenderId: GenderId,
                LocalityId:locality.id,
                FunctionId: FunctionId,
                LocalityId: locality.id},
            {where: {id: req.body.id}
            }).then(() => {
                console.log(person);
                res.redirect("/admin/person");

            });
    });


});

router.post('/delete',  (req, res, next) => {
    if(req.body.confirm) {
        models.Person.destroy({
            where: {id: req.body.id}
        }).then(() => {
            res.redirect("/admin/person/");
        });
    }
    else
    {
        res.render('admin/person/delete', {layout: "admin/adminLayout", id: req.body.id});
    }
});



module.exports = router;
