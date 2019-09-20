<?php
	/************************************************************************
		funcao que gera pares entre intervalo fornecido via parametros
	************************************************************************/
	function pares($ini, $fim)
	{
		for($i=$ini, $j=0; $i<$fim; $i++)
		{
			if($i%2 == 0)
			{
				echo $i . " - ";
				$j++;
			}
		}
		return $j;
	}
	
	/************************************************************************
		xxxxxxxx
	************************************************************************/
	function xx()
	{
		echo "<br><br>Estou na rotina do XX<br>";
	}
	
	/************************************************************************
		xxxxxxxx
	************************************************************************/
	function vetorPares($ini)
	{
		for($i=0; $i<10; $ini++)
		{
			if($ini%2 == 0)
			{
				$dados[$i] = $ini;
				$i++;
			}
		}
		return $dados;
		
	}


	/************************************************************************
		class Usuario
	************************************************************************/
	class Usuario
	{
		public $nome;
		public $cpf;
		public $endereco;
		//construtor da classe
		function __construct()
		{
			$this->preparaUsuario();
		}
	 
		function preparaUsuario(){
			$this->nome = "Octavio";
			$this->cpf = "99999999999";
			$this->endereco = "Rua Fulano de Tal numero 0 apt 999";
		}
 
	} 

?>

















