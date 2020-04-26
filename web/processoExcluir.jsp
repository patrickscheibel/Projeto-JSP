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
        if(id != null) {
            st.execute("delete from cliente where id='" + id + "'");
        }

        response.sendRedirect("dadosCliente.jsp");
    }
    
    if(table.equals("2")) {
        int id = Integer.parseInt(request.getParameter("id"));

        Statement stt = conexao.createStatement();
        ResultSet rss = stt.executeQuery("select * from produto where marca_id=" + id);   
        
        int i = 0;
        while (rss.next()) {
            if(!rss.getString("marca_id").equals("")){ 
                i = 1;
            } 
        }
              
        if(i > 0) {
            
        } else {           
            st.execute("delete from marca where id='" + id + "'");
        }
        
        response.sendRedirect("dadosMarca.jsp");
    }
    
    if(table.equals("3")) {
        String id = request.getParameter("id");
        if(id != null) {
            st.execute("delete from produto where id='" + id + "'");
        }

        response.sendRedirect("dadosProduto.jsp");
    }
%>