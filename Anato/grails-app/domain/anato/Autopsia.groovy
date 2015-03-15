package anato


class Autopsia extends Exame{

	static belongsTo = [paciente: Paciente]

	String doencaPrincipal
	String doencaConsequenciasFinal
	String doencasContribuintes
	String doencasConsequencia
	String outrasDoencas
	String notas
	String legenda
	
    static	mapping = {
    }
    
	static	constraints = {
    }

}
