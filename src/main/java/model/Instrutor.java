package model;

import lombok.Getter;
import lombok.Setter;
import model.base.Usuario;

@Getter
@Setter
public class Instrutor extends Usuario {

    private String email;
    private int valorHora;
    private String experiencia;

}
