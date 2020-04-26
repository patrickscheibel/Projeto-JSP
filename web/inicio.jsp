<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ include file="menu.jsp"%> 

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <main role="main">
            <!-- Main jumbotron for a primary marketing message or call to action -->
            <div class="jumbotron">
              <div class="container">
                <h1 class="display-3">Bem vindo</h1>
              </div>
            </div>

            <div class="container">
              <!-- Example row of columns -->
              <div class="row">
                <div class="col-md-3">
                  <h2>Clientes</h2>
                  <p><a class="btn btn-secondary" href="http://127.0.0.1:8080/projeto/dadosCliente.jsp" role="button">Detalhes</a></p>
                </div>
                <div class="col-md-3">
                  <h2>Produtos</h2>
                  <p><a class="btn btn-secondary" href="http://127.0.0.1:8080/projeto/dadosProduto.jsp" role="button">Detalhes</a></p>
                </div>
                <div class="col-md-3">
                  <h2>Marcas</h2>
                  <p><a class="btn btn-secondary" href="http://127.0.0.1:8080/projeto/dadosMarca.jsp" role="button">Detalhes</a></p>
                </div>
                <div class="col-md-3">
                  <h2>Imagens</h2>
                  <p><a class="btn btn-secondary" href="http://127.0.0.1:8080/projeto/upload.jsp" role="button">Detalhes</a></p>
                </div>
              </div>
              <hr>
            </div> <!-- /container -->
        </main>
    </body>
</html>
