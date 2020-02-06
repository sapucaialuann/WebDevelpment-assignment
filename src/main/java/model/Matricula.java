package model;

import lombok.Getter;
import lombok.Setter;

import java.time.LocalDate;

@Getter
@Setter
public class Matricula extends Entity {

    private Aluno aluno;
    private Turma turma;
    private LocalDate dataMatricula;
    private Double nota;

}
