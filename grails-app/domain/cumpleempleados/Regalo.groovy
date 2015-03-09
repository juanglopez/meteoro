package cumpleempleados

class Regalo {
    
	String descripcion;
	Integer estado;
    String url;
	Date fechaEntrega;
	Double precio;
	
	static belongsTo = Empleado 

    static constraints = {
    }
}
