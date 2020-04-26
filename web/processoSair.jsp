<% 
    session.removeAttribute("Logado");

    out.write("<script>");
    out.write("location.href='index.jsp'");
    out.write("</script>");
%>