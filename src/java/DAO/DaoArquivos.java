/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Conection.ConectionFactory;
import Entities.Arquivos;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


public class DaoArquivos {
    
     public Arquivos inserir(Arquivos a) throws SQLException {

        String sql = "INSERT INTO ARQUIVOS (NOME, CONTENTTYPE) VALUES (?,?)";

        Connection con = new ConectionFactory().getConnection();

        PreparedStatement stmt = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

        stmt.setString(1, a.getNome());
        stmt.setString(2, a.getContentType());
        stmt.execute();
        ResultSet rs = stmt.getGeneratedKeys();
        if (rs.next()) {
            a.setId(rs.getInt(1));
        }

        stmt.close();

        con.close();
        return a;
    }
      public Arquivos selecionararquivo(int id) throws SQLException {
        Arquivos    a = null;
        String sql = "SELECT NOME, CONTENTTYPE FROM ARQUIVOS WHERE ID = ?";

        Connection con = new ConectionFactory().getConnection();

        PreparedStatement stmt = con.prepareStatement(sql);
        stmt.setInt(1, id);

        ResultSet rs = stmt.executeQuery();

        while (rs.next()) {
            String nome = rs.getString("NOME");
            String contenttype = rs.getString("CONTENTTYPE");
            a = new Arquivos(id, nome, contenttype);
        }

        return a;
    }
     public ArrayList<Arquivos> selecionar() throws SQLException {
       ArrayList<Arquivos> a = null;
        String sql = "SELECT NOME, CONTENTTYPE FROM ARQUIVOS";

        Connection con = new ConectionFactory().getConnection();

        PreparedStatement stmt = con.prepareStatement(sql);
        

        ResultSet rs = stmt.executeQuery();
       

        while (rs.next()) {
            String nome = rs.getString("NOME");
            String contenttype = rs.getString("CONTENTTYPE");
            a.add(new Arquivos( nome, contenttype));
        }

        return a;
    }

}
