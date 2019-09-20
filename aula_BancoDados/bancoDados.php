<?php
	/************************************************************************
		class bancoDados
	************************************************************************/
	class bancoDados
	{
		private $conexao;
		//construtor da classe
		function __construct($servidor, $login, $senha, $banco)
		{
			$this->conexao = mysqli_connect($servidor, $login, $senha) or die(mysqli_error($this->conexao));
			
			$bd = mysqli_select_db($this->conexao, $banco) or die(mysqli_error($this->conexao));
		}
		function getDados($consulta)
		{
			$res = mysqli_query($this->conexao, $consulta) or die("erro");
			
			return $res;
		}
		function gravaDadosCliente($n, $d)
		{
			$consulta  = "INSERT INTO cliente (cli_codigo, cli_nome, cli_dtNasc) ";
			$consulta .= " VALUES (NULL, '$n', '$d')";
			$res = mysqli_query($this->conexao, $consulta) or die(mysqli_error($this->conexao));
		}
		function excluir($id, $campo)
		{
			$consulta = "DELETE FROM cliente WHERE '$campo' = '$id' ";
			$res = mysqli_query($this->conexao, $consulta) or die(mysqli_error($this->conexao));
		}
		function get($campo)
		{
			$consulta = "SELECT '$campo' FROM cliente";
			$res = mysqli_query($this->conexao, $consulta) or die(mysqli_error($this->conexao));
		}
		function update($valor, $novoValor)
		{
			$consulta = "UPDATE cliente";
			$consulta .= "SET";
			$consulta .= "$valor = $novoValor";
			$res = mysqli_query($this->conexao, $consulta) or die(mysqli_error($this->conexao));
		}
		
	} 

?>

















