package model;

import enums.TipoUsuario;
import lombok.Getter;
import lombok.Setter;
import model.base.Usuario;

@Getter
@Setter
public class Administrador extends Usuario {

    public Administrador() {
        this.setTipo(TipoUsuario.ADMIN);
    }

}
