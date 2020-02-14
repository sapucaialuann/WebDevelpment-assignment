package model;

import enums.TipoUsuario;

public class Instrutor extends Usuario {

    private String email;
    private int valorHora;
    private String experiencia;

    public Instrutor() {
        this.setTipo(TipoUsuario.INSTRUTOR);
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getValorHora() {
        return valorHora;
    }

    public void setValorHora(int valorHora) {
        this.valorHora = valorHora;
    }

    public String getExperiencia() {
        return experiencia;
    }

    public void setExperiencia(String experiencia) {
        this.experiencia = experiencia;
    }

}
