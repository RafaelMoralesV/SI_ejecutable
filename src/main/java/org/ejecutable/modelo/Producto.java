/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.ejecutable.modelo;

/**
 *
 * @author condondeazucar
 */
public class Producto {
    private String codProducto;
    private String categoria;
    private String nombre;
    private int precio;
    private String promocion;
    private int stock;
    
    public Producto(String codPro, String cat, String nom,
                    int prec, String prom, int sto){
        this.codProducto = codPro;
        this.categoria = cat;
        this.nombre = nom;
        this.precio = prec;
        this.promocion = prom;
        this.stock = stock;
    }
    
    public void agregarStock(int n){
        this.stock += n;
    }
}
