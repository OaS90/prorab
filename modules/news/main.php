<?php
$news=mysqli_query($link,"
	SELECT * FROM `news` 
	ORDER BY `id` DESC"
);
if(isset($_POST['delete'])){
	foreach($_POST['ids'] as $k=>$v){
	mysqli_query($link,"
	DELETE FROM `news`
	WHERE 
	`id` ='".(int)$v."'"
	);
	}
	header("Location:index.php?module=news");
	exit();
}
if(isset($_GET['action']) && $_GET['action']='delete'){
	mysqli_query($link,"
	DELETE FROM `news`
	WHERE 
	`id` ='".$_GET['id']."'"
	);
	
	header("Location:index.php?module=news");
	exit();
}
