package com.example.pratiler.models;

import java.util.Date;

public class Postagem {
    String texto;
    Leitor leitor;
    Livro livro;
    Integer paginaInicial;
    Integer paginaFinal;
    Date dataPostagem;

    Postagem(String texto, Leitor leitor, Livro livro, Integer paginaInicial, Integer paginaFinal, Date dataPostagem){
        this.texto = texto;
        this.leitor = leitor;
        this.livro = livro;
        this.paginaInicial = paginaInicial;
        this.paginaFinal = paginaFinal;
        this.dataPostagem = dataPostagem;
    }
    public String getTexto() {
        return texto;
    }

    public Leitor getLeitor() {
        return leitor;
    }

    public Livro getLivro() {
        return livro;
    }

    public Integer getPaginaInicial() {
        return paginaInicial;
    }

    public Integer getPaginaFinal() {
        return paginaFinal;
    }

    public Date getDataPostagem() {
        return dataPostagem;
    }

    public void setTexto(String texto) {
        this.texto = texto;
    }

    public void setLeitor(Leitor leitor) {
        this.leitor = leitor;
    }

    public void setLivro(Livro livro) {
        this.livro = livro;
    }

    public void setPaginaInicial(Integer paginaInicial) {
        this.paginaInicial = paginaInicial;
    }

    public void setPaginaFinal(Integer paginaFinal) {
        this.paginaFinal = paginaFinal;
    }

    public void setDataPostagem(Date dataPostagem) {
        this.dataPostagem = dataPostagem;
    }
}
