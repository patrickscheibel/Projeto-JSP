<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>    
        <title>Login</title>
    </head>
    <body class="text-center" style="background-color: lightgray">
        <% 
            String chave = (String) session.getAttribute("Logado");     
            if(chave == null) {
        %>
        <div class="container" style="margin: 20px auto; padding: 30px;">
            <div id="panel" class="panel panel-default no-padding" >
                <div class="panel-body no-padding">      
                    <form action="processoLogar.jsp" method="POST">           
                        <h1 class="card-header">Login</h1>

                        <input type="text" name="usuario" class="form-control" placeholder="Usuário" required> 

                        <br>
                        <input type="password" name="senha" class="form-control" placeholder="Senha" required> 

                        <br>
                        <button type="submit" class="btn btn-lg btn-dark btn-block">Entrar</button> 
                    </form>
                </div>
            </div>
        </div>
   
        <% 
            } else {
                out.write("<script>");
                out.write("location.href='menu.jsp'");
                out.write("</script>");
            }
        %>
    </body>
</html>