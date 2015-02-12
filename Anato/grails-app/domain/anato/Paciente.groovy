package anato

class Paciente {

	static hasMany = [exames: Exame]
	static searchable = true
	String nome
	String prontuario
	Date dataDeNascimento
	String nomeDaMae

    static constraints = {
    }
}
