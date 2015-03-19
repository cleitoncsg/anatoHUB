package anato

class Paciente {

	static hasMany = [biopsias: Biopsia, autopsias: Autopsia, citologias: Citologia, congelamentos: Congelacao, imuno: ImunoHistoquimica]
	static searchable = true
	String nome
	String prontuario
	Date dataDeNascimento
	String nomeDaMae

    static constraints = {
    	biopsias(blank: true)
    	autopsias(blank: true)
    	citologias(blank: true)
    	congelamentos(blank: true)
    	imuno(blank: true)
    }

    String toString(){
  		return prontuario
	} 
}
