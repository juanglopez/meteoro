package cumpleempleados

class AsignarController {

    def index() { 
<<<<<<< HEAD
		
		
	//	render params.title + "||" + params.url + params.empleado
	redirect (controller: 'Regalo' ,action:'assignGift' , title : params.title , url: params.url , empl:params.empleado)
=======
		render params.title + "||" + params.url + "||" + params.precio;
>>>>>>> 5228c699f7043b1184f8835d67e82f3092b14048
		
	}

	
}
