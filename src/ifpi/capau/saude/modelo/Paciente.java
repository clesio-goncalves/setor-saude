package ifpi.capau.saude.modelo;

import java.util.Calendar;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
public class Paciente {

	@Id
	@GeneratedValue
	private Long codigo_paciente;
	@NotNull
	@Size(max = 255)
	private String nome_paciente;
	@NotNull
	@Size(max = 255)
	private String vinvulo_paciente;

	@NotNull
	@Temporal(TemporalType.DATE)
	private Calendar data_nascimento;

	@NotNull
	@Size(max = 255)
	private String sexo_paciente;
	@NotNull
	@Size(max = 255)
	private String alergia_alimento_medicamento;
	private String antecedentes_patologicos_familiares;
	private Boolean etilismo;
	private Boolean tabagismo;
	private Boolean drogas_ilicitas;

	public Long getCodigo_paciente() {
		return codigo_paciente;
	}

	public void setCodigo_paciente(Long codigo_paciente) {
		this.codigo_paciente = codigo_paciente;
	}

	public String getNome_paciente() {
		return nome_paciente;
	}

	public void setNome_paciente(String nome_paciente) {
		this.nome_paciente = nome_paciente;
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

	public String getAntecedentes_patologicos_familiares() {
		return antecedentes_patologicos_familiares;
	}

	public void setAntecedentes_patologicos_familiares(
			String antecedentes_patologicos_familiares) {
		this.antecedentes_patologicos_familiares = antecedentes_patologicos_familiares;
	}

	public Boolean getEtilismo() {
		return etilismo;
	}

	public void setEtilismo(Boolean etilismo) {
		this.etilismo = etilismo;
	}

	public Boolean getTabagismo() {
		return tabagismo;
	}

	public void setTabagismo(Boolean tabagismo) {
		this.tabagismo = tabagismo;
	}

	public Boolean getDrogas_ilicitas() {
		return drogas_ilicitas;
	}

	public void setDrogas_ilicitas(Boolean drogas_ilicitas) {
		this.drogas_ilicitas = drogas_ilicitas;
	}

}
