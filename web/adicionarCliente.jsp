<%@ include file="menu.jsp"%> 

<html>
    <head>
        <title>Adicionar Cliente</title>
    </head>
    <body>
        <div class="container" style="margin: 20px auto; padding: 50px;">
            <div id="panel" class="panel panel-default no-padding" >
                <div class="panel-body no-padding"> 
                    <form action="processoAdicionar.jsp?table=1" method="POST">
                        <h1 class="card-header">Adicionar Cliente</h1>
                        
                        <input type="text" name="usuario" class="form-control" placeholder="Usuário" required>

                        <input type="password" name="senha" class="form-control" placeholder="Senha" required> 

                        <br>
                        <button type="submit" class="btn btn-lg btn-dark btn-block">Cadastrar</button> 
                        <a href='dadosCliente.jsp' class="btn btn-lg btn-dark btn-block">Voltar</a>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
