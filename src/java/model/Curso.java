package model;

public class Curso extends Entity {

    private String nome;
    private String requisito;
    private String ementa;
    private Short cargaHoraria;
    private Double preco;

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getRequisito() {
        return requisito;
    }

    public void setRequisito(String requisito) {
        this.requisito = requisito;
    }

    public String getEmenta() {
        return ementa;
    }

    public void setEmenta(String ementa) {
        this.ementa = ementa;
    }

    public Short getCargaHoraria() {
        return cargaHoraria;
    }

    public void setCargaHoraria(Short cargaHoraria) {
        this.cargaHoraria = cargaHoraria;
    }

    public Double getPreco() {
        return preco;
    }

    public void setPreco(Double preco) {
        this.preco = preco;
    }
    
}
