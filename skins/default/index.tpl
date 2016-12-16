<!DOCTYPE html>
<html>
<head>
  <title>My own site</title>
  <meta http-equiv="content-type" content="text/html" charset=utf-8 />
  <link rel="stylesheet" href="/css/main.css">
</head>
<body>
<div class="main">
  <div class="header">
		<div class="header_menu">
    	<div class="logo">
				<a href=# class="logo_l"></a>
				<p>Продажа строительных материалов в Твери оптом и в розницу.</p>
			</div>
			<div class="inform">
				<p class="time">Часы работы с 8.45 до 17.00</p>
				<p class="phone">+7(4822)77-77-77 , 77-88-88</p>
				<a class="connect" href="#">Схема проезда</a>
				<a class="connect" href="#">prorabych@info.com</a>
				<a class="connect" href="#">Задать вопрос</a>
			</div>
		<div class="clear"></div>
		</div>
		<div class="search_box_nav">
			<div class="search">
				<form method="post" action="">
					<input type="text" name="search" class="search_col">
					<input type="submit" name="send" value="Поиск по сайту">
				</form>
			</div>
	  	<div class="nav">
				<a href="index.php?page=main" class="first menu">ГЛАВНАЯ</a>
				<a href="index.php?module=comments" class="menu">О КОМПАНИИ</a>
				<a href="index.php?module=fm&page=fm" class="menu">КАТАЛОГ</a> 
				<a href="index.php?module=game" class="menu">ОПЛАТА И ДОСТАВКА</a>
				<a href="index.php?module=game" class="menu">ПОЛЕЗНАЯ ИНФОРМАЦИЯ</a>
				<a href="index.php?module=game" class="last menu">КОНТАКТЫ</a>
				<div class="clear"></div>
			</div>
		</div>
	 
	</div>
	<div class="clear"></div>
	<div id="content">
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