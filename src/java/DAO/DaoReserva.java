/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Conection.ConectionFactory;
import Entities.Reservas;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author jaoze
 */
public class DaoReserva {
    public void Adicionarreserva(Reservas r) {
        try {
            String sql = "INSERT INTO RESERVA( ADULTOS, CRIANCAS, DATAENTRADA, DATASAIDA, NOME, SOBRENOME,"
                    + "CPF, TELEFONE, EMAIL, ID_QUARTO) "
                    + "VALUES ( ?, ?, ?, ?, ?, ? , ?,?,?,?)";

            Connection con = new ConectionFactory().getConnection();

            PreparedStatement stmt = con.prepareStatement(sql);

            stmt.setString(1,r.getAdultos());
            stmt.setString(2, r.getCriancas());
            stmt.setDate(3, new Date(r.getDataentrada().getTime()));
            stmt.setDate(4, new Date(r.getDatasaida().getTime()));
            stmt.setString(5, r.getNome());
            stmt.setString(6, r.getSobrenome());
            stmt.setInt(7, r.getCpf());
            stmt.setInt(8, r.getTelefone());
            stmt.setString(9, r.getEmail());
            stmt.setInt(10, r.getIdquarto());

            stmt.execute();

            stmt.close();

            con.close();
        } catch (SQLException e) {
            Logger.getLogger(DaoReserva.class.getName()).log(Level.SEVERE, null, e);
        }

    }
}
