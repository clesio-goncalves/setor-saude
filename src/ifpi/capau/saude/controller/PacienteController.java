package ifpi.capau.saude.controller;

import ifpi.capau.saude.dao.PacienteDao;
import ifpi.capau.saude.modelo.Paciente;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Transactional
@Controller
public class PacienteController {

	@Autowired
	PacienteDao dao; // Usando apenas a interface (deixa genérico -
						// posso usar o jdbc se eu quiser)

	@RequestMapping("novoPaciente")
	public String novo() {
		return "paciente/novo";
	}

	@RequestMapping("adicionaPaciente")
	public String adiciona(Paciente paciente) {

		/*
		 * if (result.hasFieldErrors()) { return "paciente/novo"; }
		 */

		dao.adiciona(paciente);
		return "paciente/lista";
	}

	@RequestMapping("listaPaciente")
	public String lista(Model model) {
		model.addAttribute("pacientes", dao.lista());
		return "paciente/lista";
	}

	@RequestMapping("removePaciente")
	public String remove(Paciente paciente) {
		dao.remove(paciente);
		return "redirect:listaPaciente";
	}

	@RequestMapping("mostraPaciente")
	public String mostra(Long codigo, Model model) {
		model.addAttribute("paciente", dao.buscaPorCodigo(codigo));
		return "paciente/mostra";
	}

	@RequestMapping("alteraPaciente")
	public String altera(Paciente paciente) {
		dao.altera(paciente);
		return "redirect:listaPaciente";
	}

}
