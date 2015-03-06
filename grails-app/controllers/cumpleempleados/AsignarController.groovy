package cumpleempleados

class AsignarController {

    def index() { 
		
		
	//	render params.title + "||" + params.url + params.empleado
	redirect (controller: 'Regalo' ,action:'assignGift' , title : params.title , url: params.url , empl:params.empleado)
		
	}

	
}
