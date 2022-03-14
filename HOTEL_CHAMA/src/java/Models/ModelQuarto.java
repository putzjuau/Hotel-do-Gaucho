/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import Controlls.Quartos;
import DAO.DaoArquivos;
import DAO.DaoQuarto;
import Entities.Arquivos;
import Entities.Quarto;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author jaoze
 */
public class ModelQuarto {
    public void inserir(Quarto q, Arquivos a) throws SQLException{
        DaoQuarto dao = new DaoQuarto();
        DaoArquivos daoo = new DaoArquivos();
        daoo.inserir(a);
        dao.inserir(q, a);
    }
    public ArrayList<Quarto> selecionar() throws SQLException{
    DaoQuarto dao = new DaoQuarto();
    return dao.selecionarquarto();
    }
 
}
