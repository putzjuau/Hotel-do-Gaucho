/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entities;

import java.util.ArrayList;

/**
 *
 * @author jaoze
 */
public class Quarto {

    public Quarto(int id) {
        this.id = id;
    }
   
    
    private int id;
    private int numero;
    private String tipo;
    private int preco;
    private int quantidadepessoas;
    private ArrayList<Arquivos> listaarquivos;
    private String colunasobre;

    public String getColunasobre() {
        return colunasobre;
    }

    public void setColunasobre(String colunasobre) {
        this.colunasobre = colunasobre;
    }

    public ArrayList<Arquivos> getListaarquivos() {
        return listaarquivos;
    }

    public void setListaarquivos(ArrayList<Arquivos> listaarquivos) {
        this.listaarquivos = listaarquivos;
    }

    public int getQtdArquivos(){
        return listaarquivos.size();
    }
  
    public void adcionar(Arquivos a){
        listaarquivos.add(a);
    }
    
    public Quarto(int id, String tipo, int preco, int quantidadepessoas, String colunasobre) {
        this.id = id;
        this.tipo = tipo;
        this.preco = preco;
        this.quantidadepessoas = quantidadepessoas;
        this.colunasobre = colunasobre;
        
        this.listaarquivos = new ArrayList();
    }
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public int getPreco() {
        return preco;
    }

    public void setPreco(int preco) {
        this.preco = preco;
    }

    public int getQuantidadepessoas() {
        return quantidadepessoas;
    }

    public void setQuantidadepessoas(int quantidadepessoas) {
        this.quantidadepessoas = quantidadepessoas;
    }
    
    
    
}
