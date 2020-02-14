package model;

import enums.TipoUsuario;

public class Administrador extends Usuario {

    public Administrador() {
        this.setTipo(TipoUsuario.ADMIN);
    }

}
