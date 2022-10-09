package teste;

import model.Aluno;
import model.AlunoDAO;

public class Teste {

	public static void main(String[] args) {
		
		Aluno aluno = new Aluno("Naruto Uzumaki", "CC");
		AlunoDAO alunoDAO = new AlunoDAO(aluno);
		alunoDAO.cadastrar();
	}

}
