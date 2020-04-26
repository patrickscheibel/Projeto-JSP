<%@page import="java.sql.*" %>
<%@page import="database.*" %>

<%       
    BancoDados bd = new BancoDados();
    Connection conexao = bd.getConexao();

    Statement st = conexao.createStatement();
    
    String table = request.getParameter("table");
    //table 1 = Cliente  
    //table 2 = Classificação  
    //table 3 = Produto
    
    if(table.equals("1")) {
        String id = request.getParameter("id");
        String usuario = request.getParameter("usuario");
        String senha = request.getParameter("senha");
        
        if(!id.equals("") && !usuario.equals("") && !senha.equals("")) {
            int rs = st.executeUpdate("update cliente set usuario='" + usuario + "', senha='" + senha + "' where id ='" + id + "'");   

            if(rs == 1) {
                response.sendRedirect("dadosCliente.jsp");             
            }

        } else {      
            response.sendRedirect("editarCliente.jsp");
        }
    }
    
    if(table.equals("2")){
        String id = request.getParameter("id");
        String nome = request.getParameter("nome");
        String descricao = request.getParameter("descricao");
        
        if(!id.equals("") && !nome.equals("") && !descricao.equals("")) {
            int rs = st.executeUpdate("update marca set nome='" + nome + "', descricao='" + descricao + "' where id ='" + id + "'");   

            if(rs == 1) {
                response.sendRedirect("dadosMarca.jsp");             
            }

        } else {      
            response.sendRedirect("editarMarca.jsp");
        }
    }
    
    if(table.equals("3")){
        int id = Integer.parseInt(request.getParameter("id"));
        String nome = request.getParameter("nome");
        String descricao = request.getParameter("descricao");
        int marcaId = Integer.parseInt(request.getParameter("marca_id"));
               
        if(id > 0 && !nome.equals("") && !descricao.equals("") && marcaId > 0) {
            int rs = st.executeUpdate("update produto set nome='" + nome + "', descricao='" + descricao + "', marca_id= " + marcaId + " where id =" + id);   

            if(rs == 1) {
                response.sendRedirect("dadosProduto.jsp");             
            }

        } else {      
            response.sendRedirect("editarProduto.jsp");
        }
    }
    
%>