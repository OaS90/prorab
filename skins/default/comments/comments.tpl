<div class="mod_comments">

<?php
while($row=mysqli_fetch_assoc($res)){
	echo '<div class="comment">';
	echo '<b>'.htmlspecialchars($row['login']).'</b><br>';
	echo  nl2br(htmlspecialchars($row['comment'])).'</div>';
}
?>
</div>
<div class="form_comment">
<form action="" method="post" >
	<table>
	  <tr>
		<td>Логин*</td>
		<td><input type="text" name="login" value="<?php echo @htmlspecialchars($_POST['login'])?>"></td>
		<td><?php echo @$errors['login']?></td>
	  </tr>
	  <tr>
		<td>E-mail*</td>
		<td><input type="text" name="email" value="<?php echo @htmlspecialchars($_POST['email'])?>"></td>
		<td><?php echo @$errors['email']?></td>
	  </tr>  
	  <tr>
		<td>Комментарий*</td>
		<td><textarea name="comment"></textarea></td>
		<td><?php echo @htmlspecialchars($errors['comment'])?></td>
	  </tr>
	</table>
	<input type="submit" name="submin" value="Отправить комментарий">
</form>
</div>
<div class="clear"></div>