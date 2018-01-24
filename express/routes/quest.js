var express = require('express');
var router = express.Router();
var xss = require("xss");
var mysql = require("mysql");
var connection = mysql.createPool({
    host: "localhost",
    user: "root",
    password: "root",
    database: "kcdatabase"
});
// var data = require("./kcdata/quest/poi.json");



/* GET users listing. */
router.get('/', function(req, res, next) {});

router.post('/Add', function(req, res, next) {
	var game_id = req.body.game_id;
	var wiki_id = req.body.wiki_id;
	var name = req.body.name || "";
	var detail = req.body.detail || "";
	var reward_fuel = req.body.reward_fuel || 0;
	var reward_ammo = req.body.reward_ammo || 0;
	var reward_steel = req.body.reward_steel || 0;
	var reward_bauxite = req.body.reward_bauxite || 0;
	var json,sql;

	sql = "INSERT INTO `kcdatabase`.`quest` (`id`, `game_id`, `wiki_id`, `name`, `detail`, `reward_fuel`, `reward_ammo`, `reward_steel`, `reward_bauxite`) VALUES (null, " +game_id + ", '" + wiki_id + "', '" + name + "', '" + detail + "', " + reward_fuel + ", " + reward_ammo + ", " + reward_steel + ", " + reward_bauxite + ")";
    connection.query(sql, function(error, results, fields) {
        if (error) throw error;
        if(results.insertId){
        	json = {
	        	success:true
	        };
        }else{
        	json = {
	        	success:false
	        };
        }
        
    	res.jsonp(json);
    })

});

router.post('/Delete', function(req, res, next) {
	var id = req.body.id;
	var sql,json;

	sql = "DELETE FROM `quest` WHERE `id` = " + id;

    connection.query(sql, function(error, results, fields) {
        if (error) throw error;
        if(results.affectedRows){
        	json = {
        		success:true
        	};

        }else{
        	json = {
        		success:false
        	}
        }
    	res.jsonp(json);
    })

});

router.post('/Find', function(req, res, next) {
    var game_id = req.body.game_id;
    var wiki_id = req.body.wiki_id;
    var json,sql;

    // 添加测试数据 
    // var sql="INSERT INTO `kcdatabase`.`quest` (`id`, `game_id`, `wiki_id`, `name`, `detail`, `reward_fuel`, `reward_ammo`, `reward_steel`, `reward_bauxite`) VALUES ("+"40"+", " + data[39].game_id + ", '" + data[39].wiki_id + "', '" + data[39].name + "', '" + data[39].detail + "', " + data[39].reward_fuel + ", " + data[39].reward_ammo + ", " + data[39].reward_steel + ", " + data[39].reward_bauxite + ")";
    // for (var i = 1; i < data.length; i++) {
    // 	sql+= (",("+(i+1)+", " + data[i].game_id + ", '" + data[i].wiki_id + "', '" + data[i].name + "', '" + data[i].detail + "', " + data[i].reward_fuel + ", " + data[i].reward_ammo + ", " + data[i].reward_steel + ", " + data[i].reward_bauxite + ")")
    // }
    // res.jsonp(sql);
    if(game_id)sql = "SELECT * FROM `quest` WHERE `game_id`="+game_id;
    if(wiki_id)sql = "SELECT * FROM `quest` WHERE `wiki_id`="+wiki_id;

    connection.query(sql, function(error, results, fields) {
        if (error) throw error;
        json = results;
    	res.jsonp(json);
    })

});

router.post('/Modify', function(req, res, next) {
	var id = req.body.id;
	var game_id = req.body.game_id;
	var wiki_id = req.body.wiki_id;
	var name = req.body.name;
	var detail = req.body.detail;
	var reward_fuel = req.body.reward_fuel;
	var reward_ammo = req.body.reward_ammo;
	var reward_steel = req.body.reward_steel;
	var reward_bauxite = req.body.reward_bauxite;
	var sql,json;

	sql = "UPDATE `quest` SET game_id = "+game_id+",wiki_id = '"+wiki_id+"',name = '"+name+"',detail = '"+detail+"',reward_fuel = "+reward_fuel+",reward_ammo = "+reward_ammo+",reward_steel = "+reward_steel+",reward_bauxite = "+reward_bauxite+" WHERE id = "+id;

    connection.query(sql, function(error, results, fields) {
        if (error) throw error;
        if(results.changedRows){
        	json = {
        		success:true
        	};

        }else{
        	json = {
        		success:false
        	}
        }
    	res.jsonp(json);
    })

});

router.post('/GetAll', function(req, res, next) {
	var json;

    connection.query("SELECT * FROM `quest`", function(error, results, fields) {
        if (error) throw error;
        json = results;
        res.jsonp(json);
    })

    
});

module.exports = router;