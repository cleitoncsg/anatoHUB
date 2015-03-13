package anato

class Paciente {

	static hasMany = [biopsias: Biopsia, autopsias: Autopsia]
	static searchable = true
	String nome
	String prontuario
	Date dataDeNascimento
	String nomeDaMae

    static constraints = {
    	biopsias(blank: true)
    	autopsias(blank: true)
    }

    String toString(){
  		return prontuario
	} 
}
