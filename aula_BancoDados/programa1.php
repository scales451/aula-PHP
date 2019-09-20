<?php
	require_once "bancoDados.php";
	
	$conexao = new bancoDados("localhost", "root", "", "tads_26082019");
	
	$tabela = $conexao->getDados("select * from cliente");
	
	if($tabela != NULL)
	{
		echo "<table border='1'>";
		echo "<tr>";
		echo "<td>Codigo</td>   <td>Nome</td>   <td>Data</td>";
		echo "</tr>";
		while($registro = mysqli_fetch_array($tabela))
		{
			echo "<tr>";
			echo "<td>" . $registro['cli_codigo'] . "</td>";
			echo "<td>" . $registro['cli_nome'] . "</td>";
			echo "<td>" . $registro['cli_dtNasc'] . "</td>";
			echo "</tr>";
		}
		echo "</table>";
	}
	
?>