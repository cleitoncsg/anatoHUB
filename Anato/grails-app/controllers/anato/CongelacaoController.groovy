package anato


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

/**
 * CongelacaoController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
@Transactional(readOnly = true)
class CongelacaoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Congelacao.list(params), model:[congelacaoInstanceCount: Congelacao.count()]
    }

	def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Congelacao.list(params), model:[congelacaoInstanceCount: Congelacao.count()]
    }

    def show(Congelacao congelacaoInstance) {
        respond congelacaoInstance
    }

    def create() {
        respond new Congelacao(params)
    }

    @Transactional
    def save(Congelacao congelacaoInstance) {
        if (congelacaoInstance == null) {
            notFound()
            return
        }

        if (congelacaoInstance.hasErrors()) {
            respond congelacaoInstance.errors, view:'create'
            return
        }

        congelacaoInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'congelacaoInstance.label', default: 'Congelacao'), congelacaoInstance.id])
                redirect congelacaoInstance
            }
            '*' { respond congelacaoInstance, [status: CREATED] }
        }
    }

    def edit(Congelacao congelacaoInstance) {
        respond congelacaoInstance
    }

    @Transactional
    def update(Congelacao congelacaoInstance) {
        if (congelacaoInstance == null) {
            notFound()
            return
        }

        if (congelacaoInstance.hasErrors()) {
            respond congelacaoInstance.errors, view:'edit'
            return
        }

        congelacaoInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Congelacao.label', default: 'Congelacao'), congelacaoInstance.id])
                redirect congelacaoInstance
            }
            '*'{ respond congelacaoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Congelacao congelacaoInstance) {

        if (congelacaoInstance == null) {
            notFound()
            return
        }

        congelacaoInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Congelacao.label', default: 'Congelacao'), congelacaoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'congelacaoInstance.label', default: 'Congelacao'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
