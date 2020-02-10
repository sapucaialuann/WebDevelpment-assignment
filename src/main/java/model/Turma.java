package model;

import lombok.Getter;
import lombok.Setter;
import model.base.Entity;

import java.util.Date;

@Getter
@Setter
public class Turma extends Entity {

    private Instrutor instrutor;
    private Curso curso;
    private Date dataInicio;
    private Date dataFinal;
    private Short cargaHoraria;

}
