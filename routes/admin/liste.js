var express = require('express');
var listExport = require('../../modules/listExport')
var router = express.Router();


// New chore form
router.get('/person', function(req, res, next) {
    listExport.getListUser().then(() => {


        //Now I want to download that file
        res.setHeader('Content-Type', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        res.setHeader('Content-Disposition', 'attachment; filename=list.xlsx');
        res.download('list.xlsx', 'list.xlsx');

    console.log("start dwnld");
    });

});




module.exports = router;
