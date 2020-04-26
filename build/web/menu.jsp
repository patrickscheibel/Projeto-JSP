<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>    
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        <title>Menu</title>
    </head>
    <body style="background-color: lightgray">
        <% 
            String chave = (String) session.getAttribute("Logado");     
            if(chave != null) {                  
        %>
        <nav class="navbar navbar-expand-md navbar-dark bg-dark">
        <a class="navbar-brand" href="inicio.jsp">In�cio</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">           
                    <li class="nav-item dropdown active">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          Clientes
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown" >
                          <a class="dropdown-item" href="dadosCliente.jsp">Dados dos Clientes<span class="sr-only">(current)</span></a>
                          <a class="dropdown-item" href="adicionarCliente.jsp">Adicionar<span class="sr-only">(current)</span></a>
                        </div>
                    </li>    
                    <li class="nav-item dropdown active">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          Produto
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown" >
                          <a class="dropdown-item" href="dadosProduto.jsp">Dados dos Produtos<span class="sr-only">(current)</span></a>
                          <a class="dropdown-item" href="adicionarProduto.jsp">Adicionar<span class="sr-only">(current)</span></a>
                        </div>
                    </li> 
                    <li class="nav-item dropdown active">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          Marca
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown" >
                          <a class="dropdown-item" href="dadosMarca.jsp">Dados das Marcas<span class="sr-only">(current)</span></a>
                          <a class="dropdown-item" href="adicionarMarca.jsp">Adicionar<span class="sr-only">(current)</span></a>
                        </div>
                    </li>    
                    <li class="nav-item active">
                      <a class="nav-link" href="upload.jsp">Upload<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                      <a class="nav-link" href="email.jsp">Email<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                      <a class="nav-link" href="processoSair.jsp">Sair<span class="sr-only">(current)</span></a>
                    </li>                 
                </ul>
            </div>
        </nav>
        <% 
            } else {
                out.write("<script>");
                out.write("location.href='index.jsp'");
                out.write("</script>");
            }
        %>
    </body>
</html>