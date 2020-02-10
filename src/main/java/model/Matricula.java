package model;

import lombok.Getter;
import lombok.Setter;
import model.base.Entity;

import java.util.Date;

@Getter
@Setter
public class Matricula extends Entity {

    private Aluno aluno;
    private Turma turma;
    private Date dataMatricula;
    private Double nota;

}
