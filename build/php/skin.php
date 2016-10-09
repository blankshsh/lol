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
	$name= $_POST['name'];//获取点击的内容
	$result ="SELECT `id`, `name`, `f_name`, `s_name`,`skin`, `skin_s` FROM `skin` WHERE `name`='$name'";
	$printresult = mysql_query($result,$con); //执行查询
	$arr=array();
	while( $row = mysql_fetch_array($printresult) ){
		    array_push($arr,array(
		    	"id"=>$row['id'],
		    	"name"=>$row['name'],
		    	"f_name"=>$row['f_name'],
		    	"s_name"=>$row['s_name'],
		    	"skin"=>[$row['skin']],
				"skin_s"=>$row['skin_s']
		    	));
	} 


		//$arrall = array_merge($arr_recommend, $arr_Peoplenews,$arr_localnews);//合并
		echo (json_encode($arr));
		// echo (json_encode($arr_Peoplenews));
		// echo (json_encode($arr_localnews));
?>

 