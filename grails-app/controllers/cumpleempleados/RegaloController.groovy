package cumpleempleados

import java.util.Calendar;
import java.util.Date;

import org.springframework.dao.DataIntegrityViolationException

class RegaloController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

//    def list(Integer max) {
//        params.max = Math.min(max ?: 10, 100)
//        [regaloInstanceList: Regalo.list(params), regaloInstanceTotal: Regalo.count()]
//    }

    def create() {
        [regaloInstance: new Regalo(params)]
    }
    
	
	
	def pagarPorMes(){
		
	   
		
		
		
		   
		
	}
	
	
	//
	
	

	  
	  def cumpleHoy(Date cumple , String mes ,String dia ){
		  
		  Calendar aux = this.DateToCalendar(cumple)
		  if (((Integer.toString(aux.get(Calendar.MONTH)+1)).equals(mes))
			  &&((Integer.toString(aux.get(Calendar.DATE)).equals(dia)) )) {
						
				return true
		  }
		  return false
	  }
	
	  def  Calendar DateToCalendar(Date date){
		 
			Calendar cal = Calendar.getInstance();
			cal.setTime(date);
			return cal;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	//
	
    def save() {
        def regaloInstance = new Regalo(params)
        if (!regaloInstance.save(flush: true)) {
            render(view: "create", model: [regaloInstance: regaloInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'regalo.label', default: 'Regalo'), regaloInstance.id])
        redirect(action: "show", id: regaloInstance.id)
    }

    def show(Long id) {
        def regaloInstance = Regalo.get(id)
        if (!regaloInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'regalo.label', default: 'Regalo'), id])
            redirect(action: "list")
            return
        }

        [regaloInstance: regaloInstance]
    }

    def edit(Long id) {
        def regaloInstance = Regalo.get(id)
        if (!regaloInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'regalo.label', default: 'Regalo'), id])
            redirect(action: "list")
            return
        }

        [regaloInstance: regaloInstance]
    }
	
	
	

    def update(Long id, Long version) {
        def regaloInstance = Regalo.get(id)
        if (!regaloInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'regalo.label', default: 'Regalo'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (regaloInstance.version > version) {
                regaloInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'regalo.label', default: 'Regalo')] as Object[],
                          "Another user has updated this Regalo while you were editing")
                render(view: "edit", model: [regaloInstance: regaloInstance])
                return
            }
        }

        regaloInstance.properties = params

        if (!regaloInstance.save(flush: true)) {
            render(view: "edit", model: [regaloInstance: regaloInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'regalo.label', default: 'Regalo'), regaloInstance.id])
        redirect(action: "show", id: regaloInstance.id)
    }

    def delete(Long id) {
        def regaloInstance = Regalo.get(id)
        if (!regaloInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'regalo.label', default: 'Regalo'), id])
            redirect(action: "list")
            return
        }

        try {
            regaloInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'regalo.label', default: 'Regalo'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'regalo.label', default: 'Regalo'), id])
            redirect(action: "show", id: id)
        }
    }

	def assignGift() {
		
	
		Empleado empleado = Empleado.get(params.empl as long);
	
		def regalos = Regalo.list()
		
		def regalo = null
		
		regalo = regalos.findAll{
					it.url == params.url
				}
		
		if (regalo != null && regalo.isEmpty()) {
			regalo = new Regalo(estado:0, descripcion: params.descripcion, url:params.url);
			regalo.save(failOnError:true);
		}
		
		empleado.regalos.add(regalo);
		
		empleado.save(failOnError:true);
		
	    //HistoricoRegalo hr = new HistoricoRegalo(idRegalo:regalo.id,idEmpleado:"",Date:"");
		
		[regalo: params.descripcion, empleadoNom:empleado.nombre, empleadoApe: empleado.apellido]

	}
	
}
