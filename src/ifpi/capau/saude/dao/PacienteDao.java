package ifpi.capau.saude.dao;

import ifpi.capau.saude.modelo.Paciente;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

@Repository
public class PacienteDao {

	@PersistenceContext
	private EntityManager manager;

	public void adiciona(Paciente paciente) {
		manager.persist(paciente);
	}

	public void altera(Paciente paciente) {
		manager.merge(paciente);
	}

	public List<Paciente> lista() {
		return manager.createQuery("select p from Paciente p").getResultList();
	}

	public Paciente buscaPorId(Long id) {
		return manager.find(Paciente.class, id);
	}

	public void remove(Paciente paciente) {
		Paciente pacienteARemover = buscaPorId(paciente.getId());
		manager.remove(pacienteARemover);
	}

}
