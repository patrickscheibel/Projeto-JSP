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
        String usuario = request.getParameter("usuario");
        String senha = request.getParameter("senha");
        if(!usuario.equals("") && !senha.equals("")) {
            int rs = st.executeUpdate("insert into cliente values(default, '" + usuario + "', '" + senha + "')");   

            if(rs == 1) {
                response.sendRedirect("dadosCliente.jsp");             
            } 
        } else {      
            response.sendRedirect("adicionarCliente.jsp");
        }
    }
    
    if(table.equals("2")) {
        String nome = request.getParameter("nome");
        String descricao = request.getParameter("descricao");
        if(!nome.equals("")) {
            int rs = st.executeUpdate("insert into marca values(default, '" + nome + "', '" + descricao + "')");   

            if(rs == 1) {
                response.sendRedirect("dadosMarca.jsp");             
            } 
        } else {      
            response.sendRedirect("adicionarMarca.jsp");
        }
    }
    
    if(table.equals("3")) {
        String nome = request.getParameter("nome");
        String descricao = request.getParameter("descricao");
        int marcaId = Integer.parseInt(request.getParameter("marca_id"));
              
        if(!nome.equals("") && !descricao.equals("") && marcaId > 0) {
            int rs = st.executeUpdate("insert into produto values(default, '" + nome + "', '" + descricao + "', " + marcaId + ")");   
            
            if(rs == 1) {
                response.sendRedirect("dadosProduto.jsp");             
            } 
        } else {      
            response.sendRedirect("adicionarProduto.jsp");
        }
    }
%>