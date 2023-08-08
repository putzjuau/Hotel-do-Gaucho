/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlls;

import Entities.Arquivos;
import Models.ModelQuarto;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author jaoze
 */
@WebServlet(name = "Quartos", urlPatterns = {"/Quartos"})
public class Quartos extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        ModelQuarto model = new ModelQuarto();
        Arquivos a = new Arquivos();

        try {

        
            req.setAttribute("quartos", model.selecionar());
        } catch (SQLException ex) {
            Logger.getLogger(Quartos.class.getName()).log(Level.SEVERE, null, ex);
        }

        req.getRequestDispatcher("quartos.jsp").forward(req, resp);
    }

    private byte[] carregarArquivo(String path) throws FileNotFoundException, IOException {
        byte[] retorno;

        File file = new File(path);

        retorno = new byte[(int) file.length()];

        FileInputStream fileInputStream = new FileInputStream(file);
        fileInputStream.read(retorno);

        fileInputStream.close();

        return retorno;

    }

}
