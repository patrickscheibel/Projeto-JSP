/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author patrick.scheibel
 */
public class BancoDados {

    private Connection conexao = null;

    public BancoDados() {
        String nomeDriver = "org.postgresql.Driver";
        String localBancoDados = "jdbc:postgresql://localhost:5432/postgres";
        String usuario = "postgres";
        String senha = "postgres";

        try {
            Class.forName(nomeDriver).newInstance();
            conexao = DriverManager.getConnection(localBancoDados, usuario, senha);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public Connection getConexao(){
        return conexao;
    }
}