var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('error', { message: 'test',error:{status:500,stack:"test content"} });
});

module.exports = router;
