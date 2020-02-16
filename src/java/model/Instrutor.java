package model;

import enums.TipoUsuario;

public class Instrutor extends Usuario {

    private String email;
    private Integer valorHora;
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

    public Integer getValorHora() {
        return valorHora;
    }

    public void setValorHora(Integer valorHora) {
        this.valorHora = valorHora;
    }

    public String getExperiencia() {
        return experiencia;
    }

    public void setExperiencia(String experiencia) {
        this.experiencia = experiencia;
    }
    
    public String valorHora() {
        if (this.valorHora == null) {
            return "";
        } else {
            return this.valorHora.toString();
        }
    }

}
