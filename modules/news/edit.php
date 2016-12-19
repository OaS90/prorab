<?php
if(isset($_POST['edit'],$_POST['title'],$_POST['description'],$_POST['cat'],$_POST['text'])){
		mysqli_query($link,"
		UPDATE `news` SET
		`title` 	  = '".mysqli_real_escape_string($link,$_POST['title'])."',
		`description` = '".mysqli_real_escape_string($link,$_POST['description'])."',
		`cat`  		  = '".mysqli_real_escape_string($link,$_POST['cat'])."',
		`text`		  = '".mysqli_real_escape_string($link,$_POST['text'])."',
		WHERE `id` = '".(int)$_GET['id']."'
		") or die(mysqli_error($link));
		
		header("Location:index.php?module=news");
		exit();
	}
$news = mysqli_query($link,"
		SELECT * FROM
		`news` WHERE
		`id` = ".(int)$_GET['id']."
		LIMIT 1
		"
	);
$row = mysqli_fetch_assoc($news);