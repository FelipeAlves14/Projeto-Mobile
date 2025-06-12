package com.example.pratiler.models;

public class Livro {
    String titulo;
    String sinopse;
    String autor;
    String capa;

    public Livro(String titulo, String sinopse, String autor, String capa){
        this.titulo = titulo;
        this.sinopse = sinopse;
        this.autor = autor;
        this.capa = capa;
    }

    public String getTitulo() {
        return titulo;
    }

    public String getSinopse() {
        return sinopse;
    }

    public String getAutor() {
        return autor;
    }

    public String getCapa() {
        return capa;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public void setSinopse(String sinopse) {
        this.sinopse = sinopse;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public void setCapa(String capa) {
        this.capa = capa;
    }
}
