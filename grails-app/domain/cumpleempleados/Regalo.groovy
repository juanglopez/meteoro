package cumpleempleados

class Regalo {
    
    Integer ID_regalo;
	Date fecha;
	Integer estado;
    
	static belongsTo = Empleado 

	
    static constraints = {
    }
}
