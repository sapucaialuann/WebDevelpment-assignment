package model;

import lombok.Getter;
import lombok.Setter;
import model.base.Entity;

@Getter
@Setter
public class Curso extends Entity {

    private String nome;
    private String requisito;
    private String ementa;
    private Short cargaHoraria;
    private Double valor;

}
