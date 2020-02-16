<%@page import="model.Aluno"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <jsp:include page="../template/head.jsp" />
        <link rel="stylesheet" type="text/css" href="../../assets/css/register.css">
    </head>
    <body>
        <jsp:include page="../template/navbar.jsp" />
        <jsp:include page="../template/admin-navbar.jsp"/>
        <% Aluno a = (Aluno) request.getAttribute("aluno"); %>
        <div class="container">
            <section class="mb-5 w-75 p-5 section-login">
                <form class="needs-validation" id="alunos-form" method="POST" action="/administrador/aluno">
                    <h2>Aluno</h2>
                    <% if (a != null) {%>
                    <input type="hidden" name="id" value="<%=a.getId()%>">
                    <% } %>
                    <div class="form-group">
                        <label>Nome *</label>
                        <input type="text" class="form-control" minlength="3" maxlength="50" required name="nome"
                               value="<%if (a != null) {%><%=a.getNome()%><%}%>">
                    </div>
                    <div class="form-group ">
                        <label>Login *</label>
                        <input type="text" class="form-control" required minlength="3" maxlength="20" name="login"
                               value="<%if (a != null) {%><%=a.getLogin()%><%}%>">
                    </div>
                    <div class="form-group ">
                        <label>Senha *</label>
                        <input type="password" class="form-control" minlength="6" required name="senha"
                               value="<%if (a != null) {%><%=a.getSenha()%><%}%>">
                    </div>
                    <div class="form-group ">
                        <label>CPF *</label>
                        <input type="text" class="form-control cpf-mask" pattern="\d{11}" required name="cpf" placeholder="Ex: 99999999999"
                               value="<%if (a != null) {%><%=a.getCpf()%><%}%>">
                    </div>
                    <div class="form-group ">
                        <label>Email *</label>
                        <input placeholder="email@email.com" minlength="3" maxlength="50" type="email" class="form-control"
                               pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required name="email"
                               value="<%if (a != null) {%><%=a.getEmail()%><%}%>">
                    </div>
                    <div class="form-group">
                        <label>Celular *</label>
                        <input type="text" class="form-control cel-sp-mask" pattern="\(\d{2}\) \d{8,9}" 
                               placeholder="Ex: (99) 999999999" required name="celular"
                               value="<%if (a != null) {%><%=a.getCelular()%><%}%>">
                    </div>
                    <div class="form-row">
                        <div class="form-group">
                            <label>CEP</label>
                            <input class="form-control" placeholder="Ex: 99999-999"
                                   accept=""pattern="\d{5}\-\d{3}" type="text" name="cep"
                                   value="<%if (a != null) {%><%=a.getCep()%><%}%>"/>
                        </div>
                        <div class="form-group">
                            <label class=" form-margin-fix">Endereço</label>
                            <input class="form-control  form-margin-fix" id="logradouro" type="text" minlength="3"
                                   maxlength="50" name="endereco" value="<%if (a != null) {%><%=a.getEndereco()%><%}%>"/>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group">
                            <label>Bairro</label>
                            <input class="form-control" id="bairro" type="text" name="bairro" maxlength="30"
                                   value="<%if (a != null) {%><%=a.getBairro()%><%}%>"/>
                        </div>
                        <div class="form-group">
                            <label class=" form-margin-fix">Cidade</label>
                            <input class="form-control form-margin-fix" id="cidade" type="text" name="cidade"
                                   maxlength="30" value="<%if (a != null) {%><%=a.getCidade()%><%}%>"/>
                        </div>
                    </div>
                    <input type="hidden" value="<%if (a != null) {%><%=a.getComentario()%><%}%>"/>

                    <button class="btn btn-primary" type="submit">Persistir</button>
                </form>
            </section>
        </div>
        <jsp:include page="../template/footer.jsp" />
    </body>
</html>