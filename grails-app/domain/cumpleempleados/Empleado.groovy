package cumpleempleados

class Empleado {
     
    Integer user_ID;
	String nombre;
	String apellido;
	String password;
	String mail;
	Date fecha_cumple;
	//ArrayList<Producto> listaRegalos = new ArrayList<Producto>()
	
	static hasMany = [ regalos: Regalo ];

    static constraints = {
    }
}
