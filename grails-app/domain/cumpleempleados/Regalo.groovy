package cumpleempleados

class Regalo {
    
	String descripcion;
	Integer estado;
    String url;
	
	
	static belongsTo = Empleado 

    static constraints = {
    }
}
