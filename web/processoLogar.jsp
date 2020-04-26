<%@page import="java.sql.*" %>
<%@page import="database.*" %>

<%       
    BancoDados bd = new BancoDados();
    Connection conexao = bd.getConexao();

    Statement st = conexao.createStatement();

    String usuario = request.getParameter("usuario");
    String senha = request.getParameter("senha");
    if(usuario != null && senha != null) {
        ResultSet rs = st.executeQuery("select * from cliente where usuario='" + usuario + "' and senha ='" + senha + "'");   

        boolean vazio = false;
        while (rs.next()) { 
            vazio = true;
        }

        if(vazio == true) {
            session.setAttribute("Logado", "o cara esta logado"); 
            response.sendRedirect("inicio.jsp");             
        } else {               
            response.sendRedirect("index.jsp");   
        }
    }
%>