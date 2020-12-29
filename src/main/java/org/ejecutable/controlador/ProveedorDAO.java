/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.ejecutable.controlador;

import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author condondeazucar
 */
public class ProveedorDAO {
    private static Connector con = new Connector();
    
    private ProveedorDAO(){
        throw new IllegalStateException("Clase de utilidad");
    }
    
    
    public static void agregarProveedor(String nombre, String rut, String direccion, String telefono){
        String query = "INSERT INTO proveedor(rut, nombre, direccion, telefono)"
                + " VALUE(?, ?, ?, ?)";
        
        try{
            PreparedStatement ps = con.getConecction().prepareStatement(query);
            ps.setString(1, rut);
            ps.setString(2, nombre);
            ps.setString(3, direccion);
            ps.setInt(4, Integer.valueOf(telefono));
            
            ps.executeUpdate();
        }
        catch(SQLException sqle){
            System.out.println(sqle);
        }
    }
}
