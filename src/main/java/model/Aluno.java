package model;

import enums.Aprovacao;
import enums.TipoUsuario;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
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

}
