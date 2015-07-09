package ifpi.capau.saude.modelo;

import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Paciente {

	@Id
	@GeneratedValue
	private Long id;

	@NotNull
	@Size(max = 100)
	private String nome;

	@NotNull
	@Size(max = 12)
	@Column(unique = true)
	private String rg;

	@NotNull
	@Size(max = 15)
	private String cartao_sus;

	@NotNull
	@Size(max = 11)
	private String vinculo;

	@NotNull
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	@Temporal(TemporalType.DATE)
	private Calendar data_nascimento;

	@Transient
	private int idade;

	@NotNull
	@Size(max = 9)
	private String sexo;

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

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getRg() {
		return rg;
	}

	public void setRg(String rg) {
		this.rg = rg;
	}

	public String getCartao_sus() {
		return cartao_sus;
	}

	public void setCartao_sus(String cartao_sus) {
		this.cartao_sus = cartao_sus;
	}

	public String getVinculo() {
		return vinculo;
	}

	public void setVinculo(String vinculo) {
		this.vinculo = vinculo;
	}

	public Calendar getData_nascimento() {
		return data_nascimento;
	}

	public void setData_nascimento(Calendar data_nascimento) {
		this.data_nascimento = data_nascimento;
	}

	public int getIdade() {
		return idade;
	}

	public void setIdade(int idade) {
		this.idade = idade;
	}

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
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
