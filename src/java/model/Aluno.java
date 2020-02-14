package model;

import enums.Aprovacao;
import enums.TipoUsuario;

public class Aluno extends Usuario {

    private String cpf;
    private String email;
    private String celular;
    private String endereco;
    private String cidade;
    private String bairro;
    private String cep;
    private String comentario;
    private Aprovacao aprovado = Aprovacao.REPROVADO;

    public Aluno() {
        this.setTipo(TipoUsuario.ALUNO);
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public String getCep() {
        return cep;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }

    public String getComentario() {
        return comentario;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }

    public Aprovacao getAprovado() {
        return aprovado;
    }

    public void setAprovado(Aprovacao aprovado) {
        this.aprovado = aprovado;
    }
    
}
