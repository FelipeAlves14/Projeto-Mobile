package com.example.pratiler.models;

public class Leitor {
    String nome;
    String username;
    String email;
    String fotoPerfil;

    Leitor(String nome, String username, String email, String fotoPerfil){
        this.nome = nome;
        this.username = username;
        this.email = email;
        this.fotoPerfil = fotoPerfil;
    }

    public String getNome() {
        return nome;
    }

    public String getUsername() {
        return username;
    }

    public String getEmail() {
        return email;
    }

    public String getFotoPerfil() {
        return fotoPerfil;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setFotoPerfil(String fotoPerfil) {
        this.fotoPerfil = fotoPerfil;
    }
}
