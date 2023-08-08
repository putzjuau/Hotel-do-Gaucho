/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlls;

import Entities.Contato;
import Models.ModelContato;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "Contatos", urlPatterns = {"/Contatos"})
public class Contatos extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       req.getRequestDispatcher("contato.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        String nome = req.getParameter("nome");
        String email = req.getParameter("email");
        int telefone = Integer.parseInt(req.getParameter("telefone"));
        String diga = req.getParameter("mensagem");
        
        Contato c = new Contato(nome, email, telefone, diga);
      ModelContato model = new ModelContato();
        try {
            model.inserir(c);
        } catch (SQLException ex) {
            Logger.getLogger(Contatos.class.getName()).log(Level.SEVERE, null, ex);
        }
        resp.sendRedirect("Contatos?mensagem= obrigado pelo contato, até mais!");
        
        
    }

   
}
