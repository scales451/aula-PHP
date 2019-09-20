<?php
	$servidor	= "localhost";
	$login		= "root";
	$senha		= "";
	$banco		= "tads";
	
	$con = mysqli_connect($servidor, $login, $senha) or die(mysql_error());
	
	$bd = mysqli_select_db($con, $banco) or die(mysql_error());
	
	echo "SUCESSSSOOOOO";
?>



