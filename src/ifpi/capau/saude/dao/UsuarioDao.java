package ifpi.capau.saude.dao;

import ifpi.capau.saude.modelo.Usuario;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

@Repository
public class UsuarioDao {

	@PersistenceContext
	private EntityManager manager;

	public void adiciona(Usuario usuario) {
		manager.persist(usuario);
	}

	public void altera(Usuario usuario) {
		manager.merge(usuario);
	}

	public List<Usuario> lista() {
		return manager.createQuery("select u from Usuario u").getResultList();
	}

	public Usuario buscaPorId(Long id) {
		return manager.find(Usuario.class, id);
	}

	public void remove(Usuario usuario) {
		Usuario usuarioARemover = buscaPorId(usuario.getId());
		manager.remove(usuarioARemover);
	}

	public boolean existeUsuario(Usuario usuario) {

		if (usuario == null) {
			throw new IllegalArgumentException("Usuário não deve ser nulo!");
		}

		Query query = manager
				.createQuery("select u from Usuario u where u.login = :loginUsuario and u.senha = :senhaUsuario and u.ativo = :ativoUsuario");
		query.setParameter("loginUsuario", usuario.getLogin());
		query.setParameter("senhaUsuario", usuario.getSenha());
		query.setParameter("ativoUsuario", true);

		List<Usuario> lista = query.getResultList();

		boolean resultado = (lista.size() == 1) ? true : false;

		return resultado;

	}
}
