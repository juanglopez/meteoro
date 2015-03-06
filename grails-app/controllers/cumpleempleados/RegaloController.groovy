package cumpleempleados

import org.springframework.dao.DataIntegrityViolationException

class RegaloController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [regaloInstanceList: Regalo.list(params), regaloInstanceTotal: Regalo.count()]
    }

    def create() {
        [regaloInstance: new Regalo(params)]
    }

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
}
