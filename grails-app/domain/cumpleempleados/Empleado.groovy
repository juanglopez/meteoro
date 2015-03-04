package cumpleempleados

class Empleado {
        
	String nombre;
	String apellido;
	String password;
	String mail;
	Date cumpleaños;
	//ArrayList<Producto> listaRegalos = new ArrayList<Producto>()
	
	static hasMany = [ regalos: Regalo ];

    static constraints = {
    }
	
	
	
}
