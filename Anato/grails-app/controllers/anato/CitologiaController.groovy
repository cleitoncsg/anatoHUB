package anato


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

/**
 * CitologiaController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
@Transactional(readOnly = true)
class CitologiaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Citologia.list(params), model:[citologiaInstanceCount: Citologia.count()]
    }

	def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Citologia.list(params), model:[citologiaInstanceCount: Citologia.count()]
    }

    def show(Citologia citologiaInstance) {
        respond citologiaInstance
    }

    def create() {
        respond new Citologia(params)
    }

    @Transactional
    def save(Citologia citologiaInstance) {
        if (citologiaInstance == null) {
            notFound()
            return
        }

        if (citologiaInstance.hasErrors()) {
            respond citologiaInstance.errors, view:'create'
            return
        }

        citologiaInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'citologiaInstance.label', default: 'Citologia'), citologiaInstance.id])
                redirect citologiaInstance
            }
            '*' { respond citologiaInstance, [status: CREATED] }
        }
    }

    def edit(Citologia citologiaInstance) {
        respond citologiaInstance
    }

    @Transactional
    def update(Citologia citologiaInstance) {
        if (citologiaInstance == null) {
            notFound()
            return
        }

        if (citologiaInstance.hasErrors()) {
            respond citologiaInstance.errors, view:'edit'
            return
        }

        citologiaInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Citologia.label', default: 'Citologia'), citologiaInstance.id])
                redirect citologiaInstance
            }
            '*'{ respond citologiaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Citologia citologiaInstance) {

        if (citologiaInstance == null) {
            notFound()
            return
        }

        citologiaInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Citologia.label', default: 'Citologia'), citologiaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'citologiaInstance.label', default: 'Citologia'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
