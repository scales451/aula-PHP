<?php
	require_once "bancoDados.php";
	
	$bd = new bancoDados("localhost", "root", "", "tads_26082019");
	
	$nome 	= $_POST['nome'];
	$data  = $_POST['dtnasc'];

	$newDate = date("Y-m-d", strtotime($data));	
	
	// grava os dados
	//$bd->gravaDadosCliente($nome, $newDate);
	
	// Recupera os dados e joga na tela
	$tabela = $bd->getDados("select * from cliente");
	if($tabela != NULL)
	{
		echo "<table border='1'>";
		echo "<tr>";
		echo "<td>Codigo</td>   <td>Nome</td>   <td>Data</td>";
		echo "</tr>";
		while($registro = mysqli_fetch_array($tabela))
		{
			echo "<tr>";
			echo "<td><a href='apagar.php?codigo=$registro[cli_codigo]'>" . $registro['cli_codigo'] . "</a></td>";
			echo "<td><a href='formulario_update.php?codigo=$registro[cli_codigo]'>" . $registro['cli_nome'] . "</a></td>";
			echo "<td>" . $registro['cli_dtNasc'] . "</td>";
			echo "</tr>";
		}
		echo "</table>";
	}
?>




