package anato

class Biopsia extends Exame{

	static belongsTo = [paciente: Paciente]
	
	String informacoesClinicas
	String macropsia
	String micropsia
	String conclusao
	String notas
	String legenda

    static constraints = {
    }	
}
