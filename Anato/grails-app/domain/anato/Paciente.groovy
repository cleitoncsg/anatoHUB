package anato

class Paciente {

	static hasMany = [biopsias: Biopsia, autopsias: Autopsia, citologias: Citologia, congelamentos: Congelacao, imuno: ImunoHistoquimica]
	static searchable = true
	String nome
    String cpf
	String nomeDaMae
    String nomeDoPai
    Date dataDeNascimento
	int nacimentoCodigo
    String sexo
    String naturalidade    
    String prontuario
    Date dataDoObito
    String rg
    String obersavao
    String prnt_ativo
    String sexoBiologico
    String numeroCartaoSaude

    static constraints = {
    	biopsias(blank: true)
    	autopsias(blank: true)
    	citologias(blank: true)
    	congelamentos(blank: true)
    	imuno(blank: true)

        cpf(blank: true)
        nomeDoPai(blank: true)
        nacimentoCodigo(blank: true)
        sexo(blank: true)
        naturalidade(blank: true)
        dataDoObito(blank: true)
        rg(blank: true)
        obersavao(blank: true)
        prnt_ativo(blank: true)
        sexoBiologico(blank: true)
        numeroCartaoSaude(blank: true)
    }

    String toString(){
  		return prontuario
	} 
}
