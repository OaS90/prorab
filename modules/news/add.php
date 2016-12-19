<?php
	if(isset($_POST['submit'],$_POST['title'],$_POST['description'],$_POST['cat'],$_POST['text'])){
		mysqli_query($link,"
		INSERT INTO `news` SET
		`title` 	  = '".mysqli_real_escape_string($link,$_POST['title'])."',
		`description` = '".mysqli_real_escape_string($link,$_POST['description'])."',
		`cat`  		  = '".mysqli_real_escape_string($link,$_POST['cat'])."',
		`text`		  = '".mysqli_real_escape_string($link,$_POST['text'])."',
		`date` 		  = NOW();
		") or die(mysqli_error($link));
		
		header("Location:index.php?module=news");
		exit();
	}