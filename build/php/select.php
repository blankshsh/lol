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
	
	$id= $_REQUEST['id'];
	$arr=array();
	$result ="SELECT * FROM `data` WHERE `$id` LIKE '1'";
	// $result ="SELECT * FROM `data` WHERE `fighter` LIKE '1'";
	// $result ="SELECT * FROM `data` WHERE `mage` LIKE '1'";
	// $result ="SELECT * FROM `data` WHERE `assassin` LIKE '1'";
	// $result ="SELECT * FROM `data` WHERE `tank` LIKE '1'";
	// $result ="SELECT * FROM `data` WHERE `marksman` LIKE '1'";
	// $result ="SELECT * FROM `data` WHERE `support` LIKE '1'";

	$printresult = mysql_query($result,$con); //执行查询
	$arr=array();
	while( $row = mysql_fetch_array($printresult) ){
		    array_push($arr,array("id"=>$row['id'],"name"=>$row['name'],"f_name"=>urldecode($row['f_name']),"s_name"=>$row['s_name'],"champion"=>urldecode($row['champion'])));
	}
		//$arrall = array_merge($arr_recommend, $arr_Peoplenews,$arr_localnews);//合并
		echo (json_encode($arr));
		// echo (json_encode($arr_Peoplenews));
		// echo (json_encode($arr_localnews));
?>
