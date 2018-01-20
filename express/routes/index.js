var express = require('express');
var xss = require("xss");
// var mysql = require("mysql");
var router = express.Router();
var data = require("./kcdata/quest/poi.json");
// var connection = mysql.createConnection({
//   host:"localhost",
//   user:"root",
//   password:"",
//   database:"test"
// })

/* GET home page. */
router.get('/', function(req, res, next) {
});

router.post('/requestData/game_id', function(req, res, next) {
  // res.render('index', { title: 'Express' });
  var value = xss(req.body.value);
  // connection.connect();
  // connection.query("SELECT * FROM `T1`",function(error, results, fields){
  //   if (error) throw error;
  //   console.log('The solution is: ', results,"\n");
  //   console.log('The fields is: ', fields);
  // })
  // connection.end();
  var re;
  for(var i in data){
    if(data[i]["game_id"] == value){
      re = data[i];
      break;
    }
  }

  if(re){
    var json = {
      Success:true,
      Data:re
    }
  }else{
    var json = {
      Success:false,
      msg:"game_id not exist"
    }
  }

  res.jsonp(json);
});

router.post('/requestData/wiki_id', function(req, res, next) {
  var value = xss(req.body.value);

  var re;
  for(var i in data){
    if(data[i]["wiki_id"] == value){
      re = data[i];
      break;
    }
  }

  if(re){
    var json = {
      Success:true,
      Data:re
    }
  }else{
    var json = {
      Success:false,
      msg:"wiki_id not exist"
    }
  }

  res.jsonp(json);
});

module.exports = router;
