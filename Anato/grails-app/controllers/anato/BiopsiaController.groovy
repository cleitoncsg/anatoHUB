package anato


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

/**
 * BiopsiaController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
@Transactional(readOnly = true)
class BiopsiaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Biopsia.list(params), model:[biopsiaInstanceCount: Biopsia.count()]
    }

	def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Biopsia.list(params), model:[biopsiaInstanceCount: Biopsia.count()]
    }

    def show(Biopsia biopsiaInstance) {
        respond biopsiaInstance
    }

    def create() {
        respond new Biopsia(params)
    }

    @Transactional
    def save(Biopsia biopsiaInstance) {
        if (biopsiaInstance == null) {
            notFound()
            return
        }

        if (biopsiaInstance.hasErrors()) {
            respond biopsiaInstance.errors, view:'create'
            return
        }

        biopsiaInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'biopsiaInstance.label', default: 'Biopsia'), biopsiaInstance.id])
                redirect biopsiaInstance
            }
            '*' { respond biopsiaInstance, [status: CREATED] }
        }
    }

    def edit(Biopsia biopsiaInstance) {
        respond biopsiaInstance
    }

    @Transactional
    def update(Biopsia biopsiaInstance) {
        if (biopsiaInstance == null) {
            notFound()
            return
        }

        if (biopsiaInstance.hasErrors()) {
            respond biopsiaInstance.errors, view:'edit'
            return
        }

        biopsiaInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Biopsia.label', default: 'Biopsia'), biopsiaInstance.id])
                redirect biopsiaInstance
            }
            '*'{ respond biopsiaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Biopsia biopsiaInstance) {

        if (biopsiaInstance == null) {
            notFound()
            return
        }

        biopsiaInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Biopsia.label', default: 'Biopsia'), biopsiaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'biopsiaInstance.label', default: 'Biopsia'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
