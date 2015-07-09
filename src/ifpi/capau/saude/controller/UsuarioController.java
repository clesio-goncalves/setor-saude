package ifpi.capau.saude.controller;

import ifpi.capau.saude.dao.UsuarioDao;
import ifpi.capau.saude.modelo.Usuario;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UsuarioController {

	private final UsuarioDao dao;

	@Autowired
	public UsuarioController(UsuarioDao dao) {
		this.dao = dao;
	}

	@RequestMapping("login")
	public String login() {
		return "usuario/login";
	}

	@RequestMapping("efetuaLogin")
	public String efetuaLogin(Usuario usuario, HttpSession session) {
		if (dao.existeUsuario(usuario)) {
			session.setAttribute("usuarioLogado", usuario);
			return "redirect:index";
		}

		return "redirect:login";
	}

	@RequestMapping("sair")
	public String sair(HttpSession session) {
		session.invalidate();
		return "redirect:login";
	}

}
