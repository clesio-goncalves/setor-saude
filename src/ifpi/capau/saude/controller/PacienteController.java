package ifpi.capau.saude.controller;

import ifpi.capau.saude.dao.PacienteDao;
import ifpi.capau.saude.modelo.Paciente;

import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

@Transactional
@Controller
public class PacienteController {

	private final PacienteDao dao;

	@Autowired
	public PacienteController(PacienteDao dao) {
		this.dao = dao;
	}

	@RequestMapping("novoPaciente")
	public String novo() {
		return "paciente/novo";
	}

	@RequestMapping("adicionaPaciente")
	public String adiciona(@Valid Paciente paciente, BindingResult result) {
		if (result.hasFieldErrors()) {
			return "paciente/novo";
		}

		dao.adiciona(paciente);
		return "redirect:listaPacientes";
	}

	@RequestMapping("listaPacientes")
	public String lista(Model model) {
		model.addAttribute("pacientes", dao.lista());
		return "paciente/lista";
	}

	@RequestMapping("removePaciente")
	public String remove(Paciente paciente) {
		dao.remove(paciente);
		return "redirect:listaPacientes";
	}

	@RequestMapping("editarPaciente")
	public String editar(Long id, Model model) {
		model.addAttribute("paciente", dao.buscaPorId(id));
		return "paciente/editar";
	}

	@RequestMapping("exibirPaciente")
	public String exibir(Long id, Model model) {
		model.addAttribute("paciente", dao.buscaPorId(id));
		return "paciente/exibir";
	}

	@RequestMapping("alteraPaciente")
	public String altera(@Valid Paciente paciente, BindingResult result) {

		if (result.hasFieldErrors()) {
			return "paciente/editar";
		}

		dao.altera(paciente);
		return "redirect:listaPacientes";
	}

}
