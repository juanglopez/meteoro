import java.util.Date;

import cumpleempleados.Empleado
import cumpleempleados.Regalo

class BootStrap {

    def init = { servletContext ->
     
        //fecha cumpleaños empleados
		Date d1 = new Date("02/10/1987")
		Date d2 = new Date("03/11/1970")
		Date d3 = new Date("05/09/1988")
		
		//fecha de cumpleaños regalados		
		Date f1 = new Date("02/10/2014")
		Date f2 = new Date("03/11/2013")
		Date f3 = new Date("03/11/2012")			
		
		Date dd= new Date()
		
		Regalo r1 = CreateRegalo("ipod",0,"imagen de la foto",dd,3000)
		r1.save(failOnError:true)
		Regalo r2 = CreateRegalo("nokia",0,"imagen de la foto",dd,4000)
		r2.save(failOnError:true)
		Regalo r3 = CreateRegalo("ps4",0,"imagen de la foto",dd,5000)
		r3.save(failOnError:true)
		
		Empleado e2 = CreateEmpleado("Pepe","sapo","123456","sapo@hotmail.com",d1)				
		
		Date daux = new Date();
		
		Empleado e5 = CreateEmpleado("Lucas","troco","12345886","luc@hotmail.com",daux)
		Empleado e6 = CreateEmpleado("Seba","tagare","12345678","seb@hotmail.com",daux)
		Empleado e7 = CreateEmpleado("Nicolas","sutin","12345678","nic@hotmail.com",daux)
		Empleado e8 = CreateEmpleado("Barbi","lopex","12345678","barb@hotmail.com",daux)
		Empleado e9 = CreateEmpleado("Rodrigo","peris","12345678","rodir@hotmail.com",daux)
		Empleado e10 = CreateEmpleado("Nicolas","nicola","1234567","nic@hotmail.com",daux)
		Empleado e11 = CreateEmpleado("Lucia","mon","12345678","luc@hotmail.com",daux)
		Empleado e12 = CreateEmpleado("Romina","colucci","1234567","romi@hotmail.com",daux)
		
		e5.save();
		e6.save();
		e7.save();
		e8.save();
		e9.save();
		e10.save();
		e11.save();
		e12.save();
		
		
		e2.regalos.add(r1)		
		Empleado e3 = CreateEmpleado("Lucas","sopo","12345678","luca@hotmail.com",d2)
		e3.regalos.add(r2)
		e3.regalos.add(r3)
		
		Empleado e4 = CreateEmpleado("Martin","mar","12345678","mar@hotmail.com",d3)		
		
		e2.save(failOnError:true)
		e3.save(failOnError:true)
		e4.save(failOnError:true)			
    }

	def CreateEmpleado (a,b,c,d,e){
		Empleado e1 = new Empleado (nombre:a,apellido:b,password:c,mail:d,cumpleaños:e);			
		e1.regalos = new ArrayList();
		return e1
	}
	
	def CreateRegalo(a,b,c,d,e){		
        Regalo r1 = new Regalo (descripcion:a , estado:b , url:c ,fechaEntrega:d, precio:e);
	    return r1		
	}
	
	def destroy = {
	  
	}
	
}	
