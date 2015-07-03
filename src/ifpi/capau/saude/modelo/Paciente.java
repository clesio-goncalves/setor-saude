package ifpi.capau.saude.modelo;

import java.util.Calendar;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Paciente {

	@Id
	@GeneratedValue
	private Long id;

	@NotNull
	@Size(max = 255)
	private String nome_paciente;

	@NotNull
	@Size(max = 255)
	private String rg_paciente;

	@NotNull
	@Size(max = 15)
	private String cartao_sus_paciente;

	@NotNull
	@Size(max = 255)
	private String vinvulo_paciente;

	@DateTimeFormat(pattern = "dd/MM/yyyy")
	@Temporal(TemporalType.DATE)
	private Calendar data_nascimento;

	@NotNull
	@Size(max = 255)
	private String sexo_paciente;

	@NotNull
	@Size(max = 255)
	private String alergia_alimento_medicamento;

	@NotNull
	@Size(max = 255)
	private String problema_saude;

	@Size(max = 255)
	private String antecedentes_patologicos_familiares;

	private boolean etilismo;
	private boolean tabagismo;
	private boolean drogas_ilicitas;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNome_paciente() {
		return nome_paciente;
	}

	public void setNome_paciente(String nome_paciente) {
		this.nome_paciente = nome_paciente;
	}

	public String getRg_paciente() {
		return rg_paciente;
	}

	public void setRg_paciente(String rg_paciente) {
		this.rg_paciente = rg_paciente;
	}

	public String getCartao_sus_paciente() {
		return cartao_sus_paciente;
	}

	public void setCartao_sus_paciente(String cartao_sus_paciente) {
		this.cartao_sus_paciente = cartao_sus_paciente;
	}

	public String getVinvulo_paciente() {
		return vinvulo_paciente;
	}

	public void setVinvulo_paciente(String vinvulo_paciente) {
		this.vinvulo_paciente = vinvulo_paciente;
	}

	public Calendar getData_nascimento() {
		return data_nascimento;
	}

	public void setData_nascimento(Calendar data_nascimento) {
		this.data_nascimento = data_nascimento;
	}

	public String getSexo_paciente() {
		return sexo_paciente;
	}

	public void setSexo_paciente(String sexo_paciente) {
		this.sexo_paciente = sexo_paciente;
	}

	public String getAlergia_alimento_medicamento() {
		return alergia_alimento_medicamento;
	}

	public void setAlergia_alimento_medicamento(
			String alergia_alimento_medicamento) {
		this.alergia_alimento_medicamento = alergia_alimento_medicamento;
	}

	public String getProblema_saude() {
		return problema_saude;
	}

	public void setProblema_saude(String problema_saude) {
		this.problema_saude = problema_saude;
	}

	public String getAntecedentes_patologicos_familiares() {
		return antecedentes_patologicos_familiares;
	}

	public void setAntecedentes_patologicos_familiares(
			String antecedentes_patologicos_familiares) {
		this.antecedentes_patologicos_familiares = antecedentes_patologicos_familiares;
	}

	public boolean isEtilismo() {
		return etilismo;
	}

	public void setEtilismo(boolean etilismo) {
		this.etilismo = etilismo;
	}

	public boolean isTabagismo() {
		return tabagismo;
	}

	public void setTabagismo(boolean tabagismo) {
		this.tabagismo = tabagismo;
	}

	public boolean isDrogas_ilicitas() {
		return drogas_ilicitas;
	}

	public void setDrogas_ilicitas(boolean drogas_ilicitas) {
		this.drogas_ilicitas = drogas_ilicitas;
	}

}
