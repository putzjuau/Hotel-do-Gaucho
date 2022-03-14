/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import DAO.DaoContato;
import Entities.Contato;
import java.sql.SQLException;

/**
 *
 * @author jaoze
 */
public class ModelContato {
    public void inserir(Contato c) throws SQLException{
        DaoContato dao = new DaoContato();
        dao.inserir(c);
    }
}
