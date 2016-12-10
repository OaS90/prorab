<form method="post" action="">
  <div>Заголовок новости:</div>
   <div><input type="text" name="title" value="<?php echo htmlspecialchars($row['title']);?>"></div>
  <div>Категория новсти:</div>
   <div><input type="text" name="cat" value="<?php echo htmlspecialchars($row['cat']);?>"></div>
  <div>Краткое описание:</div>
   <div> <textarea name="description"><?php echo htmlspecialchars($row['description']);?></textarea></div>
  <div>Текст новсти:</div>
   <div><textarea name="text"><?php echo htmlspecialchars($row['text']);?></textarea></div>
   
  <div><input type="submit" name="edit" value="edit"></div>
</form>