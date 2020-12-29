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

    public String getCodProducto() {
        return codProducto;
    }

    public void setCodProducto(String codProducto) {
        this.codProducto = codProducto;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }

    public String getPromocion() {
        return promocion;
    }

    public void setPromocion(String promocion) {
        this.promocion = promocion;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }
    
    
}
