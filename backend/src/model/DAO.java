package model;

import java.sql.*;

public abstract class DAO{

    public abstract void cadastrar();

    public static void fecharConexao(AutoCloseable conexao) {
        if (conexao != null) {
            try {
                conexao.close();
            }
            catch(SQLException e) {
                e.printStackTrace();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static void fecharConexoes(AutoCloseable... conexoes){
        for(AutoCloseable conexao: conexoes){
            fecharConexao(conexao);
        }
    }
}