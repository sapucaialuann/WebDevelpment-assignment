package model;

import java.util.Date;

public class Turma extends Entity {

    private Instrutor instrutor;
    private Curso curso;
    private Date dataInicio;
    private Date dataFinal;
    private Short cargaHoraria;

    public Instrutor getInstrutor() {
        return instrutor;
    }

    public void setInstrutor(Instrutor instrutor) {
        this.instrutor = instrutor;
    }

    public Curso getCurso() {
        return curso;
    }

    public void setCurso(Curso curso) {
        this.curso = curso;
    }

    public Date getDataInicio() {
        return dataInicio;
    }

    public void setDataInicio(Date dataInicio) {
        this.dataInicio = dataInicio;
    }

    public Date getDataFinal() {
        return dataFinal;
    }

    public void setDataFinal(Date dataFinal) {
        this.dataFinal = dataFinal;
    }

    public Short getCargaHoraria() {
        return cargaHoraria;
    }

    public void setCargaHoraria(Short cargaHoraria) {
        this.cargaHoraria = cargaHoraria;
    }

}
