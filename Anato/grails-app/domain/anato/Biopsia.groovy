package anato

/**
 * Biopsia
 * A domain class describes the data object and it's mapping to the database
 */
class Biopsia extends Exame{

	static belongsTo = [paciente: Paciente]
	
	String informacoesClinicas
	String macropsia
	String micropsia
	String conclusao
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
