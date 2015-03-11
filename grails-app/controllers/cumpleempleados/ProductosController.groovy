package cumpleempleados

import util.Utils;


class ProductosController {

    def productos() { 
	
		Empleado empleado = Empleado.get(params.emp_id as long);
		
		Date fechaActual = new Date();
		
		Calendar cal = Utils.DateToCalendar(fechaActual)
		def mes = Integer.toString(cal.get(Calendar.MONTH)+1)
		def año = Integer.toString(cal.get(Calendar.YEAR))
		
		def regalosAsignados = empleado.regalos.findAll({
			Utils.cumpleMes(it.fechaEntrega, mes, año)
		})
		println regalosAsignados
		if (regalosAsignados != null && !regalosAsignados.isEmpty()) {
			redirect(action: "viewWarning")
		} else {
			[empl :params.emp_id as long]
		}
		
	}
	
	def viewWarning () {
	}
	
	def busqueda() {
	
   }

}
