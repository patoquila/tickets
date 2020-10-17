<?php 
class ctrEnrutamiento{
	public function Enrutamiento(){
		if(isset($_GET['action'])){
				$ruta = $_GET['action'];
		}else{
				$ruta = "inicio";
			}
		$respuesta = mdlEnrutamiento::Enrutamiento($ruta);
		include $respuesta;
	}

	

}


 ?>