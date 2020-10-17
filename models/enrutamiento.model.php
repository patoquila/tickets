<?php 
	class mdlEnrutamiento {

		public function Enrutamiento($ruta){

			if(	$ruta == "inicio" ||
				 $ruta == "usuarios" || 
				 $ruta == "clientes" || 
				 $ruta == "casos" || 
				 $ruta == "estados" || 
				 $ruta == "ticket" || 
				 $ruta == "configuracion"){
				$module = "views/modulos/".$ruta.".php";
			}

			return $module;

			
		} 
	}

 ?>