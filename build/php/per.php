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
	$result ="SELECT  `name`, `ad`, `ap`, `tank` , `hand` FROM `per` WHERE `name`='$name'";
	$printresult = mysql_query($result,$con); //执行查询
	$arr=array();
	while( $row = mysql_fetch_array($printresult) ){
		    array_push($arr,array(

		    	"name"=>$row['name'],
		    	"ad"=>$row['ad'],
		    	"ap"=>$row['ap'],
		    	"tank"=>$row['tank'],
		    	"hand"=>$row['hand']
		    	));
	}
		//$arrall = array_merge($arr_recommend, $arr_Peoplenews,$arr_localnews);//合并
		echo (json_encode($arr));
		// echo (json_encode($arr_Peoplenews));
		// echo (json_encode($arr_localnews));
?>
