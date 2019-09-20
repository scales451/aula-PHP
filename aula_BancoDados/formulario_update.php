<?php
	$codigo = $_GET['codigo'];
	
	$valor = "maria da silva";
?>



<form method='post' action='gravaDados.php'>
		Nome: <input type='text' name='nome' value='<?php echo $valor; ?>'><br>
		Data de Nascimento: <input type='date' name='dtnasc'><br>
		<input type='submit' value='OK'>
</form>
