/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlls;

import Entities.Reservas;
import Models.ModelReserva;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
@WebServlet(name = "Reserva", urlPatterns = {"/Reserva"})
public class Reserva extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("reserva.jsp").forward(req, resp);
    }
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int idquarto = Integer.parseInt(req.getParameter("id"));
        String adultos = req.getParameter("adultos");
        String criancas = req.getParameter("criancas");
        SimpleDateFormat formato = new SimpleDateFormat("yyyy-MM-dd");

//        Parte do usuario
        String nome = req.getParameter("nome");
        String sobrenome = req.getParameter("sobrenome");
        String email = req.getParameter("email");
        int telefone = Integer.parseInt(req.getParameter("telefone"));
        int cpf = Integer.parseInt(req.getParameter("CPF"));
       
            Date dataentrada = null;
        try {
            dataentrada = formato.parse(req.getParameter("dataentrada"));
        } catch (ParseException ex) {
            Logger.getLogger(Reserva.class.getName()).log(Level.SEVERE, null, ex);
        }
            Date datasaida = null;
        try {
            datasaida = formato.parse(req.getParameter("datasaida"));
        } catch (ParseException ex) {
            Logger.getLogger(Reserva.class.getName()).log(Level.SEVERE, null, ex);
        }
            Reservas r = new Reservas(adultos, criancas, dataentrada, datasaida, nome, sobrenome, email, telefone, cpf, idquarto);
            ModelReserva model = new ModelReserva();
            model.inserir(r);
             
       
        resp.sendRedirect("Quartos?mensagem=Reserva feita com sucesso!");
        
    }
    
}
