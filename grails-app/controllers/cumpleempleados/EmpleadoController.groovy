package cumpleempleados

import java.text.DateFormat
import java.text.SimpleDateFormat
import java.util.Formatter.DateTime
import org.springframework.dao.DataIntegrityViolationException

class EmpleadoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [empleadoInstanceList: Empleado.list(params), empleadoInstanceTotal: Empleado.count()]
    }

    def create() {
        [empleadoInstance: new Empleado(params)]
    }
	
	def buscar(){
		
	    Calendar cal = this.DateToCalendar(new Date())	    		
		def mes =Integer.toString(cal.get(Calendar.MONTH)+1)
		def dia = Integer.toString(cal.get(Calendar.DATE))
			 
		def lista_cumple = Empleado.list();
		def resultado =lista_cumple.findAll({
			                   this.cumpleHoy(it.cumpleaños , mes ,dia)
		})					      
        [result: resultado ]
	}
      
      def cumpleHoy(Date cumple , String mes ,String dia ){
		  
		  Calendar aux = this.DateToCalendar(cumple)
		  if (((Integer.toString(aux.get(Calendar.MONTH)+1)).equals(mes))
			  &&((Integer.toString(aux.get(Calendar.DATE)).equals(dia)) )) {
						
				return true
		  }	
		  return false  	  			 		
	  }
	
	  def  Calendar DateToCalendar(Date date){
		   println(date)
			Calendar cal = Calendar.getInstance();
			cal.setTime(date);
			return cal;
    }
	
    def save() {
        def empleadoInstance = new Empleado(params)
        if (!empleadoInstance.save(flush: true)) {
            render(view: "create", model: [empleadoInstance: empleadoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'empleado.label', default: 'Empleado'), empleadoInstance.id])
        redirect(action: "show", id: empleadoInstance.id)
    }

    def show(Long id) {
        def empleadoInstance = Empleado.get(id)
        if (!empleadoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'empleado.label', default: 'Empleado'), id])
            redirect(action: "list")
            return
        }

        [empleadoInstance: empleadoInstance]
    }

    def edit(Long id) {
        def empleadoInstance = Empleado.get(id)
        if (!empleadoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'empleado.label', default: 'Empleado'), id])
            redirect(action: "list")
            return
        }

        [empleadoInstance: empleadoInstance]
    }

    def update(Long id, Long version) {
        def empleadoInstance = Empleado.get(id)
        if (!empleadoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'empleado.label', default: 'Empleado'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (empleadoInstance.version > version) {
                empleadoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'empleado.label', default: 'Empleado')] as Object[],
                          "Another user has updated this Empleado while you were editing")
                render(view: "edit", model: [empleadoInstance: empleadoInstance])
                return
            }
        }

        empleadoInstance.properties = params

        if (!empleadoInstance.save(flush: true)) {
            render(view: "edit", model: [empleadoInstance: empleadoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'empleado.label', default: 'Empleado'), empleadoInstance.id])
        redirect(action: "show", id: empleadoInstance.id)
    }

    def delete(Long id) {
        def empleadoInstance = Empleado.get(id)
        if (!empleadoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'empleado.label', default: 'Empleado'), id])
            redirect(action: "list")
            return
        }

        try {
            empleadoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'empleado.label', default: 'Empleado'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'empleado.label', default: 'Empleado'), id])
            redirect(action: "show", id: id)
        }
    }
}
