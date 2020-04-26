<%@ include file="menu.jsp"%> 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    </head>
    <body>      
        <div class="modal-content">
            <div class="modal-header modal-colored-header">
                <h4 class="modal-title" id="compose-header-modalLabel">Nova Messagem</h4>
            </div>
            <div class="modal-body p-3">
                <form class="p-1" action="#">
                    <div class="form-group mb-2">
                        <label for="msgto">Destinatário</label>
                        <input type="text" id="msgto" class="form-control" placeholder="">
                    </div>
                    <div class="form-group mb-2">
                        <label for="mailsubject">Assunto</label>
                        <input type="text" id="mailsubject" class="form-control" placeholder="">
                    </div>
                    <div class="form-group write-mdg-box mb-3">
                        <label>Mensagem</label>
                        <textarea class="form-control" id="simplemde1"></textarea>
                    </div>

                    <button type="button" class="btn btn-dark" data-dismiss="modal"><i class="mdi mdi-send mr-1"></i> Enviar Messagem</button>
                    <button type="button" class="btn btn-light" data-dismiss="modal">Cancelar</button>
                </form>
            </div>
        </div>
    </body>
</html>
