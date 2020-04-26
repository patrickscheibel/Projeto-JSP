<%@ include file="menu.jsp"%> 

<html>
    <head>
        <title>Adicionar</title>
    </head>
    <body>
        <div class="container" style="margin: 20px auto; padding: 50px;">
            <div id="panel" class="panel panel-default no-padding" >
                <div class="panel-body no-padding"> 
                    <form action="processoAdicionar.jsp?table=2" method="POST">
                        <h1 class="card-header">Adicionar Marca</h1>
                        
                        <input type="text" name="nome" class="form-control" placeholder="Nome" required>
                        <br>
                        <input type="text" name="descricao" class="form-control" placeholder="Descrição">
                        
                        <br>
                        <button type="submit" class="btn btn-lg btn-dark btn-block">Cadastrar</button> 
                        <a href='dadosMarca.jsp' class="btn btn-lg btn-dark btn-block">Voltar</a>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
