var express = require('express');
var listExport = require('../../modules/listExport')
var router = express.Router();





router.get('/people', function(req, res, next) {
    listExport.getListUser().then(() => {

        res.setHeader('Content-Type', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        res.setHeader('Content-Disposition', 'attachment; filename=list.xlsx');
        res.download('list.xlsx', 'list.xlsx');



    });
});


router.get('/choirs', function(req, res, next) {
    listExport.getListChoir().then(() => {

        res.setHeader('Content-Type', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        res.setHeader('Content-Disposition', 'attachment; filename=list.xlsx');
        res.download('list.xlsx', 'list.xlsx');
    });
});


module.exports = router;
