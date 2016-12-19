<!DOCTYPE html>
<html>
<head>
  <title>My own site</title>
  <meta http-equiv="content-type" content="text/html" charset=utf-8 />
  <link rel="stylesheet" href="/css/main.css">
</head>
<body>
  <div class="header">
		<div class="header_menu">
			<div class="nav">
				<ul>
				<li><a href="index.php?page=main" class="first menu">Главная</a></li>
				<li><a href="index.php?module=comments" class="menu">О Нас</a></li>
				<li><a href="index.php?module=fm&page=fm" class="menu">Ккаталог</a></li>
				<li><a href="index.php?module=game" class="menu">Услуги</a></li>
				<li><a href="index.php?module=game" class="menu">Работы</a></li>
				<li><a href="index.php?module=game" >Проекты</a></li>
				</ul>
			</div>
				<a href=# class="logo">
					<img src="/image/logo.png">
				</a>
			<div class="inform">
				<p class="time">Часы работы с 8.45 до 17.00</p>
				<p class="phone">+7(4822)77-77-77 , 77-88-88</p>
				<a class="connect" href="#">Схема проезда</a>
				<a class="connect" href="#">prorabych@info.com</a>
				<a class="connect" href="#">Задать вопрос</a>
			</div>
		<div class="clear"></div>
		</div>
	</div>	
<div class="main">
	<div id="content">
		<div class="slide">
			<img src="/image/slide.jpg">
		</div>
		<p>1</p>
		<p>1</p>
		<p>1</p>
		<p>1</p>
<?php 
	include $_GET['module'].'/'.$_GET['page'].'.tpl';
?>
	</div>
	<div class="bottom">
  <a href="#">Place</a> &copy; 
<?php 
echo CREATED;
if (CREATED !== date('Y')){
	echo ' - ' . date('Y');
} 
?>
  <a href="#">Privacy policy</a>
	</div>
</div>
</body>
</html>