package anato

class Exame {

	static belongsTo = [paciente: Paciente]

	Date coletaDeMaterial
	Date dataDeRequisicao
	Date recebimentoDoMaterial
	String materialRecebido
	String medicoRequisitante
	String medicoResidente
    
    static constraints = {
    }
}
