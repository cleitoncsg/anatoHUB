package anato

/**
 * Autopsia
 * A domain class describes the data object and it's mapping to the database
 */
class Autopsia extends Exame {

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
	
	/*
	 * Methods of the Domain Class
	 */
//	@Override	// Override toString for a nicer / more descriptive UI 
//	public String toString() {
//		return "${name}";
//	}
}
