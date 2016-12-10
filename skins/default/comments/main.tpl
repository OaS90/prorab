<div class="mod_comments">
<?php
while($row=mysqli_fetch_assoc($res)){
	echo '<div class="comment">';
	echo '<b>'.htmlspecialchars($row['login']).'</b> '.'<span>'.$row['date'].'</span>'.'<br>';
	echo  nl2br(htmlspecialchars($row['comment'])).'</div>';
}
?>
</div>
<div class="form_comment">
<div><h1>Напишите свой комментарий:</h1></div>
<form action="" method="post">
	<table>
	  <tr>
		<td>Логин*</td>
		<td><input type="text" name="login" value="<?php echo @htmlspecialchars($_POST['login']);?>"></td>
		<td><?php if(isset($errors['login'])){echo htmlspecialchars($errors['login']);}?></td>
	  </tr>
	  <tr>
		<td>E-mail*</td>
		<td><input type="text" name="email" value="<?php echo @htmlspecialchars($_POST['email']);?>"></td>
		<td><?php if(isset($errors['email'])){echo htmlspecialchars($errors['email']);}?></td>
	  </tr>  
	  <tr>
		<td>Комментарий*</td>
		<td><textarea name="comment"></textarea></td>
		<td><?php if(isset($errors['comment'])){echo htmlspecialchars($errors['comment']);}?></td>
	  </tr>
	</table>
	<input type="submit" name="submit" value="Отправить">
</form>
</div>
<div class="clear"></div>
