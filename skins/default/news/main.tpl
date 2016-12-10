<a href="index.php?module=news&page=add" class="add_news">Добавить новости</a>
<div class="news_block">
<form method="post" action="">
<?php 
	while($row=mysqli_fetch_assoc($news)){
?>
<div class="news">
  <div style="float:right;">
  <input type="checkbox" name="ids[]" value="<?php echo $row['id'];?>"></div>
  <div class="title_news">
<?php 
	echo $row['date'].' | ' .$row['title'];
?>
  </div>	
  <div class="text_news"><?php echo $row['text'];?></div>	
  <a href="index.php?module=news&action=delete&id=<?php echo $row['id']?>">Удалить</a> 
  <a href="index.php?module=news&page=edit&id=<?php echo $row['id']?>">Изменить</a></div>		
<?php
}
?>
  <input type="submit" name="delete" value="удалить">
</form>
</div>
