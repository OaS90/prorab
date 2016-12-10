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
    <div class="logo">
			<a href=# class="logo_l"></a>
			<p>Продажа строительных материалов в Твери оптом и в розницу.</p></div>
       <div class="inform">
		    <p class="time">Часы работы с 8.45 до 17.00</p>
		    <p class="phone">+7(4822)77-77-77 , 77-88-88</p>
		    <a class="connect" href="#">Схема проезда</a>
		    <a class="connect" href="#">prorabych@info.com</a>
		    <a class="connect" href="#">Задать вопрос</a>
		   </div>
		<div class="clear"></div>
	</div>
	  <div class="nav">
		<a href="index.php?page=main" class="active">ГЛАВНАЯ</a>
		<a href="index.php?module=comments">О КОМПАНИИ</a>
	  <a href="index.php?module=fm&page=fm">КАТАЛОГ</a> 
		<a href="index.php?module=game">ОПЛАТА И ДОСТАВКА</a>
		<a href="index.php?module=game">ПОЛЕЗНАЯ ИНФОРМАЦИЯ</a>
		<a href="index.php?module=game">КОНТАКТЫ</a>
<?php 
if ($_SERVER['REMOTE_ADDR'] == '127.0.1.1' || (isset($_COOKIE['access']))){
	echo '<a href="index.php?page=apanel">APANEL</a>';
	echo '<a href="index.php?module=cab&page=exit">EXIT</a>';
}
?>
	  </div>
	 <div class="clear"></div>
  </div>
<div id="content">
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
</body>
</html>