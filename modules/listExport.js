var Excel = require('exceljs');
var models = require('../models')

// create workbook & add worksheet
var workbook = new Excel.Workbook();
var worksheet = workbook.addWorksheet('Person');

var self = module.exports = {

    getListUser() {
        return new Promise((resolve, reject) => {
        // add column headers
        worksheet.columns = [
            {header: 'Lastname', key: 'lastname'},
            {header: 'Firstname', key: 'firstname'},
            {header: 'Birthdate', key: 'birthdate'},
            {header: 'Adress', key: 'adress'},
            {header: 'Phone', key: 'phone'},
            {header: 'Email', key: 'email'}

        ];
        
        models.Person.findAll().then((people) => {
            
            people.forEach(function (person) {
                worksheet.addRow({
                    lastname: person.lastname,
                    firstname: person.firstname,
                    birthdate: person.birthdate,
                    adress: person.address1,
                    phone: person.phone,
                    email: person.email
                })

                workbook.xlsx.writeFile('list.xlsx').then(function () {
                    console.log("saved");
                });

                resolve();
            })





        }).catch((error) => {
            reject(error);
        })




        
        
        });
    }
}