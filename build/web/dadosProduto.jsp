<%@page import="java.sql.*" %>
<%@page import="database.*" %>

<%@ include file="menu.jsp"%> 

<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>          
        <title>Clientes</title>
    </head>
    <body>  
        <h1 class="card-header">Tabela dos Produtos</h1>
        <table class="table" style="padding: 15%; margin: 30px;">
            <thead>              
                <tr style="background-color: silver">
                    <th scope="col"><b>Id</b></th>
                    <th scope="col"><b>Nome</b></th>
                    <th scope="col"><b>Descrição</b></th>
                    <th scope="col"><b>Marca</b></th>
                    <th scope="col"><b>Ações</b></th>
                </tr>
            </thead>
            <tbody>
            <% 
            BancoDados bd = new BancoDados();
            Connection conexao = bd.getConexao();

            Statement st = conexao.createStatement();
            ResultSet rs = st.executeQuery("select * from produto");   

            while (rs.next()) { 
            %>              
                <tr>
                    <td><%=rs.getString("id") %></td>
                    <td><%=rs.getString("nome") %></td>
                    <td><%=rs.getString("descricao") %></td>
                    
                    <% 
                    Statement stt = conexao.createStatement();
                    ResultSet rss = stt.executeQuery("select * from marca where id = " + rs.getString("marca_id"));   

                    while (rss.next()) { 
                    %>           
                    <td><%=rss.getString("nome") %></td>
                    <% 
                    } 
                    %>

                    <td>
                        <a href="editarProduto.jsp?id=<%=rs.getString("id") %>" style="text-decoration:none;"> 
                            <img src="https://pngimage.net/wp-content/uploads/2018/06/icono-modificar-png-5.png" class="img-fluid" style="width: 2%">
                        </a>
                        <a href="processoExcluir.jsp?table=3&id=<%=rs.getString("id") %>">
                            <img src="https://cdn2.iconfinder.com/data/icons/filled-icons/493/x-512.png" class="img-fluid" style="width: 2%">                      
                        </a>                                  
                    </td>               
                </tr>    
                <%    
                }
                %>
            </tbody>
        </table>
    </body>
</html>
