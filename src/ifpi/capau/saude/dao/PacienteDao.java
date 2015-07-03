package ifpi.capau.saude.dao;

import ifpi.capau.saude.modelo.Paciente;

import java.util.List;

public interface PacienteDao {
	Paciente buscaPorId(Long id);

	List<Paciente> lista();

	void adiciona(Paciente paciente);

	void altera(Paciente paciente);

	void remove(Paciente paciente);
}