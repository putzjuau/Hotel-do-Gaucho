/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entities;

/**
 *
 * @author jaoze
 */
public class Arquivos {

        int id;
        String nome;
        String contentType;

        public Arquivos() {
        }

        public Arquivos(String nome, String contentType) {
            this.nome = nome;
            this.contentType = contentType;
        }

        public Arquivos(int id, String nome, String contentType) {
            this.id = id;
            this.nome = nome;
            this.contentType = contentType;
        }

    public Arquivos(String nome) {
      this.nome = nome;
    }
    
    
        public int getId() {
            return id;
        }

        public void setId(int id) {
            this.id = id;
        }

        public String getNome() {
            return nome;
        }

        public void setNome(String nome) {
            this.nome = nome;
        }

        public String getContentType() {
            return contentType;
        }

        public void setContentType(String contentType) {
            this.contentType = contentType;
        }

    }


