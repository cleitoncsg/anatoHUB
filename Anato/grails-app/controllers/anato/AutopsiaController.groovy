package anato


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

/**
 * AutopsiaController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
@Transactional(readOnly = true)
class AutopsiaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Autopsia.list(params), model:[autopsiaInstanceCount: Autopsia.count()]
    }

	def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Autopsia.list(params), model:[autopsiaInstanceCount: Autopsia.count()]
    }

    def show(Autopsia autopsiaInstance) {
        respond autopsiaInstance
    }

    def create() {
        respond new Autopsia(params)
    }

    @Transactional
    def save(Autopsia autopsiaInstance) {
        if (autopsiaInstance == null) {
            notFound()
            return
        }

        if (autopsiaInstance.hasErrors()) {
            respond autopsiaInstance.errors, view:'create'
            return
        }

        autopsiaInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'autopsiaInstance.label', default: 'Autopsia'), autopsiaInstance.id])
                redirect autopsiaInstance
            }
            '*' { respond autopsiaInstance, [status: CREATED] }
        }
    }

    def edit(Autopsia autopsiaInstance) {
        respond autopsiaInstance
    }

    @Transactional
    def update(Autopsia autopsiaInstance) {
        if (autopsiaInstance == null) {
            notFound()
            return
        }

        if (autopsiaInstance.hasErrors()) {
            respond autopsiaInstance.errors, view:'edit'
            return
        }

        autopsiaInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Autopsia.label', default: 'Autopsia'), autopsiaInstance.id])
                redirect autopsiaInstance
            }
            '*'{ respond autopsiaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Autopsia autopsiaInstance) {

        if (autopsiaInstance == null) {
            notFound()
            return
        }

        autopsiaInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Autopsia.label', default: 'Autopsia'), autopsiaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'autopsiaInstance.label', default: 'Autopsia'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
