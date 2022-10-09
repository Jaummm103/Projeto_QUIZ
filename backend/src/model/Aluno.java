package model;

public class Aluno {
	
	private long id;
	private String nome;
	private String curso;
	
	public String getNome() {
		return nome;
	}

	public String getCurso() {
		return curso;
	}

	public Aluno(String nome, String curso) {
		super();
		this.nome = nome;
		this.curso = curso;
	}
	  
	
	
}
