package cumpleempleados

class AsignarController {

    def index() { 
		render params.title + "||" + params.url + "||" + params.precio;
		
	}
}
