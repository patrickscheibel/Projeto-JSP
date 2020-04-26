<%@page import="java.sql.*" %>
<%@page import="database.*" %>

<%@ include file="menu.jsp"%> 

<html>
    <head>
        <title>Adicionar</title>
    </head>
    <body>
        <div class="container" style="margin: 20px auto; padding: 50px;">
            <div id="panel" class="panel panel-default no-padding" >
                <div class="panel-body no-padding"> 
                    <form action="processoAdicionar.jsp?table=3" method="POST">
                        <h1 class="card-header">Adicionar Produto</h1>
                        
                        <input type="text" name="nome" class="form-control" placeholder="Nome" required>
                        <br>
                        <input type="text" name="descricao" class="form-control" placeholder="Descrição" required>
                        <br>
                        
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <label class="input-group-text" for="inputGroupSelect01">Marca</label>
                            </div>
                            <select class="custom-select" name="marca_id" required>
                                <option selected disabled>Selecione</option>
                                <% 
                                BancoDados bd = new BancoDados();
                                Connection conexao = bd.getConexao();

                                Statement st = conexao.createStatement();
                                ResultSet rs = st.executeQuery("select * from marca");   

                                while (rs.next()) { 
                                %> 
                                    <option value="<%=rs.getInt("id") %>"><%=rs.getString("nome") %></option>
                                <%
                                }
                                %>
                            </select>
                        </div>
                        
                        <button type="submit" class="btn btn-lg btn-dark btn-block">Cadastrar</button> 
                        <a href='dadosMarca.jsp' class="btn btn-lg btn-dark btn-block">Voltar</a>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
