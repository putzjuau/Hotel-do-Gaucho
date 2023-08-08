/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entities;

import java.util.Date;

/**
 *
 * @author jaoze
 */
public class Reservas {

    private int id;
    private String adultos;
    private String criancas;
    private Date dataentrada;
    private Date datasaida;
    private String nome;
    private String sobrenome;
    private String email;
    private int telefone;
    private int cpf;
    private int idquarto;

    public Reservas( String adultos, String criancas, Date dataentrada, Date datasaida, String nome, String sobrenome, String email, int telefone, int cpf, int idquarto) {
        this.id = id;
        this.adultos = adultos;
        this.criancas = criancas;
        this.dataentrada = dataentrada;
        this.datasaida = datasaida;
        this.nome = nome;
        this.sobrenome = sobrenome;
        this.email = email;
        this.telefone = telefone;
        this.cpf = cpf;
        this.idquarto = idquarto;
    }

    public int getIdquarto() {
        return idquarto;
    }

    public void setIdquarto(int idquarto) {
        this.idquarto = idquarto;
    }
     

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAdultos() {
        return adultos;
    }

    public void setAdultos(String adultos) {
        this.adultos = adultos;
    }

    public String getCriancas() {
        return criancas;
    }

    public void setCriancas(String criancas) {
        this.criancas = criancas;
    }

    public Date getDataentrada() {
        return dataentrada;
    }

    public void setDataentrada(Date dataentrada) {
        this.dataentrada = dataentrada;
    }

    public Date getDatasaida() {
        return datasaida;
    }

    public void setDatasaida(Date datasaida) {
        this.datasaida = datasaida;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSobrenome() {
        return sobrenome;
    }

    public void setSobrenome(String sobrenome) {
        this.sobrenome = sobrenome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getTelefone() {
        return telefone;
    }

    public void setTelefone(int telefone) {
        this.telefone = telefone;
    }

    public int getCpf() {
        return cpf;
    }

    public void setCpf(int cpf) {
        this.cpf = cpf;
    }
    
}
