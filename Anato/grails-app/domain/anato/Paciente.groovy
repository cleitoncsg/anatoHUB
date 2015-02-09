package anato

class Paciente {

	static hasMany = [exames: Exame]
	
	String nome
	String prontuario
	Date dataDeNascimento
	String nomeDaMae

    static constraints = {
    }
}
