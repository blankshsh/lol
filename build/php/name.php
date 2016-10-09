<?php
	header("Content-type:application/json,charset=utf-8");
	$con = mysql_connect('localhost', 'root', '');
	if (!$con) {
	die ('连接数据库出错: ' . mysql_error());
	}
	mysql_query("set names 'utf8'"); //数据库输出编码 
	mysql_select_db("lol",$con); //打开数据库
	 //SQL语句
	 //查询
	
	$name= $_REQUEST['name'];
	$arr=array();
	$result ="SELECT `id`, `name`, `f_name`, `s_name`, `fighter` , `mage` , `assassin` , `tank` , `marksman` , `support` FROM `data` WHERE `name`='$name'";
	$printresult = mysql_query($result,$con); //执行查询
	$arr=array();
	while( $row = mysql_fetch_array($printresult) ){
		    array_push($arr,array(
		    	"id"=>$row['id'],
		    	"name"=>$row['name'],
		    	"f_name"=>urldecode($row['f_name']),
		    	"s_name"=>$row['s_name'],
		    	"fighter"=>urldecode($row['fighter']),
		    	"mage"=>urldecode($row['mage']),
		    	"assassin"=>urldecode($row['assassin']),
		    	"tank"=>urldecode($row['tank']),
		    	"marksman"=>urldecode($row['marksman']),
		    	"support"=>urldecode($row['support']),
		    	));
	}
		//$arrall = array_merge($arr_recommend, $arr_Peoplenews,$arr_localnews);//合并
		echo (json_encode($arr));
		// echo (json_encode($arr_Peoplenews));
		// echo (json_encode($arr_localnews));
?>
