/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Conection.ConectionFactory;
import Entities.Contato;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author jaoze
 */
public class DaoContato {

    public void inserir(Contato c) throws SQLException {

        String sql = "INSERT INTO CONTATO(NOME, TELEFONE, EMAIL, MENSAGEM) VALUES (?,?,?,?)";

        Connection con = new ConectionFactory().getConnection();

        PreparedStatement stmt = con.prepareStatement(sql);

        stmt.setString(1, c.getNome());
        
        stmt.setInt(2, c.getTelefone());
        stmt.setString(3, c.getEmail());
        stmt.setString(4, c.getMensagem());

        stmt.execute();

        stmt.close();

        con.close();

    }
}
