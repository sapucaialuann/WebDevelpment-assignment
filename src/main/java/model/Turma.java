package model;

import lombok.Getter;
import lombok.Setter;
import model.base.Entity;

import java.time.LocalDate;

@Getter
@Setter
public class Turma extends Entity {

    private Instrutor instrutor;
    private Curso curso;
    private LocalDate dataInicio;
    private LocalDate dataFinal;
    private Short cargaHoraria;

}
