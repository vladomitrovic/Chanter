var Excel = require('exceljs');
var models = require('../models');

// create workbook & add worksheet
var workbook = new Excel.Workbook();
var worksheet = workbook.addWorksheet('List');

var self = module.exports = {

    getListUser() {
        return new Promise((resolve, reject) => {

            worksheet.destroy();
            worksheet = workbook.addWorksheet('ListPerson');

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
                });

                workbook.xlsx.writeFile('list.xlsx').then(function () {
                    resolve();
                });
            })
        }).catch((error) => {
            reject(error);
        })


        });
    },

    getListChoir() {
        return new Promise((resolve, reject) => {
            worksheet.destroy();
            worksheet = workbook.addWorksheet('ListChoir');

            // add column headers
            worksheet.columns = [
                {header: 'choirName', key: 'choirName'},
                {header: 'address1', key: 'address1'},
                {header: 'address2', key: 'address2'},
                {header: 'website', key: 'website'},
                {header: 'otherType', key: 'otherType'},
                {header: 'yearOfCreation', key: 'yearOfCreation'},
                {header: 'chEglise', key: 'chEglise'},
                {header: 'chGospel', key: 'chGospel'},
                {header: 'entryfc', key: 'entryfc'},
                {header: 'entryGroup', key: 'entryGroup'},
                {header: 'remarks', key: 'remarks'}

            ];

            models.Choir.findAll().then((choirs) => {

                choirs.forEach(function (choir) {
                    worksheet.addRow({
                        choirName: choir.choirName,
                        address1: choir.address1,
                        adress2: choir.adress2,
                        website: choir.website,
                        otherType: choir.otherType,
                        yearOfCreation: choir.yearOfCreation,
                        chEglise: choir.chEglise,
                        chGospel: choir.chGospel,
                        entryfc: choir.entryfc,
                        entryGroup: choir.entryGroup,
                        remarks: choir.remarks
                    });

                    workbook.xlsx.writeFile('list.xlsx').then(function () {
                        resolve();
                    });
                })
            }).catch((error) => {
                reject(error);
            })


        });
    }



};