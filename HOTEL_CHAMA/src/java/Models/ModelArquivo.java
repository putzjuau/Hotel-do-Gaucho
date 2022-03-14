/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import DAO.DaoArquivos;
import Entities.Arquivos;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author jaoze
 */
public class ModelArquivo {
   
   
     public Arquivos selecionararquivo(int  id) throws SQLException {
        DaoArquivos dao = new DaoArquivos();
        return dao.selecionararquivo(id);
    }
      public ArrayList<Arquivos> selecionartodos() throws SQLException  {
        DaoArquivos dao = new DaoArquivos();
        return dao.selecionar();
    }

    
}
