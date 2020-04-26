<%@page import="java.sql.*" %>
<%@page import="database.*" %>

<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>          
        <title>Editar</title>
    </head>
    <body style="background-color: lightgray">
        <% 
            String chave = (String) session.getAttribute("Logado");     
            if(chave != null) {
                
            BancoDados bd = new BancoDados();
            Connection conexao = bd.getConexao();

            Statement st = conexao.createStatement();
            
            String id = request.getParameter("id");
            ResultSet rs = st.executeQuery("select * from marca where id='" + id + "'");   
                
            while (rs.next()) {                   
        %>
        <div class="container" style="margin: 5px auto; padding: 50px;">
            <div id="panel" class="panel panel-default no-padding" >
                <div class="panel-body no-padding"> 
                    <form action="processoEditar.jsp?table=2" method="POST">
                        <h1 class="card-header">Editar Marca</h1>
                        
                        <label>Id:</label>
                        <label class="form-control"><%=rs.getString("id") %></label>
                        <input type="hidden" class="form-control" name="id" value="<%=rs.getString("id") %>">
              
                        <label>Nome: </label>
                        <input type="text" class="form-control" name="nome" value="<%=rs.getString("nome") %>" required> 
                        
                        <label>Descrição: </label>
                        <input type="text" class="form-control" name="descricao" value="<%=rs.getString("descricao") %>" required> 

                        <br>
                        <button type="submit" class="btn btn-lg btn-dark btn-block">Salvar</button> 
                        <a href='dadosMarca.jsp' class="btn btn-lg btn-dark btn-block">Voltar</a>
                    </form>
                </div>
            </div>
        </div>
        <% 
            }
            } else {
                out.write("<script>");
                out.write("location.href='http://localhost:8080/projeto/index.jsp'");
                out.write("</script>");
            }
        %>
    </body>
</html>
