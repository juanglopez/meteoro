package cumpleempleados

class Regalo {
    
	String descripcion;
	Integer estado;
	Date fecha;
    String url;
	
	
	static belongsTo = Empleado 

    static constraints = {
    }
}
