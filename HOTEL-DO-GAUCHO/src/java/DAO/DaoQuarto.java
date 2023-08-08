/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Conection.ConectionFactory;
import Entities.Arquivos;
import Entities.Quarto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DaoQuarto {

    public void inserir(Quarto q, Arquivos a) throws SQLException {

        String sql = "INSERT INT QUARTOS(NUMERO, TIPO, PRECO, QTDPESSOAS, COLUNASOBRE ) VALUES"
                + "(?,?,?,?, ?,?)";
        Connection con = new ConectionFactory().getConnection();

        PreparedStatement stmt = con.prepareStatement(sql);

        stmt.setInt(1, q.getNumero());
        stmt.setString(2, q.getTipo());
        stmt.setInt(3, q.getPreco());
        stmt.setInt(4, q.getQuantidadepessoas());
        stmt.setString(5, q.getColunasobre());
        stmt.setInt(6, a.getId());
        stmt.execute();
        stmt.close();
        con.close();

    }

    public ArrayList<Quarto> selecionarquarto() throws SQLException {
        String sql = "SELECT q.id, q.TIPO, q.PRECO, q.QTDPESSOAS, q.COLUNASOBRE, A.NOME FROM QUARTOS as q INNER JOIN ARQUIVOS as A ON ID_QUARTO = q.ID";
        ArrayList<Quarto> q1 = new ArrayList();
        Connection con = new ConectionFactory().getConnection();

        PreparedStatement stmt = con.prepareStatement(sql);

        ResultSet rs = stmt.executeQuery();

        while (rs.next()) {
            int id = rs.getInt("ID");
            String tipo = rs.getString("TIPO");
            int preco = rs.getInt("PRECO");
            int qtdpessoas = rs.getInt("QTDPESSOAS");
            String nome = rs.getString("NOME");
            String colunasobre = rs.getString("COLUNASOBRE");
            Quarto q = new Quarto(id, tipo, preco, qtdpessoas, colunasobre);
            Arquivos a = new Arquivos(nome);
            q.adcionar(a);
            
           int h = verificaid(q1, id);

            if (h > -1) {
               q1.get(h).adcionar(a);
                
            }else{
             q1.add(q);
            }
        }

        return q1;

    }

    public int verificaid(ArrayList<Quarto> q, int id) {
        for (int i = 0; i < q.size(); i++) {
            if (q.get(i).getId() == id) {
                return i;
            }

        }
        return -1;
    }
}
