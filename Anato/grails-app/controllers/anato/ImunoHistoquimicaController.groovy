package anato


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

/**
 * ImunoHistoquimicaController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
@Transactional(readOnly = true)
class ImunoHistoquimicaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ImunoHistoquimica.list(params), model:[imunoHistoquimicaInstanceCount: ImunoHistoquimica.count()]
    }

	def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ImunoHistoquimica.list(params), model:[imunoHistoquimicaInstanceCount: ImunoHistoquimica.count()]
    }

    def show(ImunoHistoquimica imunoHistoquimicaInstance) {
        respond imunoHistoquimicaInstance
    }

    def create() {
        respond new ImunoHistoquimica(params)
    }

    @Transactional
    def save(ImunoHistoquimica imunoHistoquimicaInstance) {
        if (imunoHistoquimicaInstance == null) {
            notFound()
            return
        }

        if (imunoHistoquimicaInstance.hasErrors()) {
            respond imunoHistoquimicaInstance.errors, view:'create'
            return
        }

        imunoHistoquimicaInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'imunoHistoquimicaInstance.label', default: 'ImunoHistoquimica'), imunoHistoquimicaInstance.id])
                redirect imunoHistoquimicaInstance
            }
            '*' { respond imunoHistoquimicaInstance, [status: CREATED] }
        }
    }

    def edit(ImunoHistoquimica imunoHistoquimicaInstance) {
        respond imunoHistoquimicaInstance
    }

    @Transactional
    def update(ImunoHistoquimica imunoHistoquimicaInstance) {
        if (imunoHistoquimicaInstance == null) {
            notFound()
            return
        }

        if (imunoHistoquimicaInstance.hasErrors()) {
            respond imunoHistoquimicaInstance.errors, view:'edit'
            return
        }

        imunoHistoquimicaInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ImunoHistoquimica.label', default: 'ImunoHistoquimica'), imunoHistoquimicaInstance.id])
                redirect imunoHistoquimicaInstance
            }
            '*'{ respond imunoHistoquimicaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ImunoHistoquimica imunoHistoquimicaInstance) {

        if (imunoHistoquimicaInstance == null) {
            notFound()
            return
        }

        imunoHistoquimicaInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ImunoHistoquimica.label', default: 'ImunoHistoquimica'), imunoHistoquimicaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'imunoHistoquimicaInstance.label', default: 'ImunoHistoquimica'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
