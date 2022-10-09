package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class AlunoDAO extends DAO {
	
	Aluno aluno;
	
	public AlunoDAO(Aluno aluno) {
		this.aluno = aluno;
	}
	
	@Override
	public void cadastrar() {
		Connection conn = ConnectionFactory.getConnection();
		PreparedStatement pstm = null;
		String SQL = "INSERT INTO tab_alunos(nome_aluno, curso) values (?, ?)";
		if(conn != null) {
			try {
				pstm = conn.prepareStatement(SQL);
				pstm.setString(1, aluno.getNome());
				pstm.setString(2, aluno.getCurso());
				pstm.execute();
				System.out.printf("%s Salvo com sucesso!\n", aluno.getNome());
			}
			catch(SQLException e) {
				e.printStackTrace();
			}
			catch(Exception e) {
				System.out.println("Outros problemas");
			}
			fecharConexao(pstm);
			fecharConexao(conn);
		}
		
	}
	

}
