/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.ejecutable.controlador;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.*;

/**
 *
 * @author condondeazucar
 */
public class Connector {
    
    private String USERNAME="root";
    private String PASSWORD=""; // "" 
    private String HOST="localhost";
    private String PORT="3306";
    private String DATABASE="SI_ejecutable"; // 
    private String CLASSNAME="com.mysql.jdbc.Driver";
    private String URL="jdbc:mysql://"+HOST+"/"+DATABASE;
    
    private Connection con;
    
    public Connector(){
        con = null;
        try{
            Class.forName(CLASSNAME);
            con = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Connector.class.getName())
                .log(Level.SEVERE, null, ex);
        }
    }
    
    public Connection getConecction(){
        return con;
    }
}
