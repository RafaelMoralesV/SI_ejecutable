/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.ejecutable.controlador;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.ejecutable.modelo.Producto;

/**
 *
 * @author condondeazucar
 */
public class ProductoDAO {
    private ProductoDAO(){
        throw new IllegalStateException("Clase de utilidad");
    }
    
    private static Connector con = new Connector();
    
    public List<Producto> enlistar(){
        List<Producto> lista = new ArrayList<>();
        String query = "SELECT * FROM producto";
        
        try{
            PreparedStatement ps = con.getConecction().prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                Producto p = new Producto(
                        rs.getString("codProducto"),
                        rs.getString("categoria"),
                        rs.getString("nombre"),
                        rs.getInt("precio"),
                        rs.getString("promocionBool"),
                        rs.getInt("stock")
                );
                lista.add(p);
            }
        } catch (SQLException sqle) {
            
        }
        return lista;
    }
}

