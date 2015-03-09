package cumpleempleados

class Regalo {
    
	String descripcion;
	Integer estado;
    String url;
	Date fechaRegalo;
	
	static belongsTo = Empleado 

    static constraints = {
    }
}
