/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author jaoze
 */
public class ConectionFactory {

    public Connection getConnection(){
        try {
            return DriverManager.getConnection("jdbc:derby://localhost:1527/HOTEL");
           
         } catch (SQLException e) {
             e.printStackTrace();
                throw new RuntimeException();
        }

    }
}
