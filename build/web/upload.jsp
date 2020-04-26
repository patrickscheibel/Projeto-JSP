<%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import = "javax.servlet.http.*" %>
<%@ page import = "org.apache.commons.fileupload.*" %>
<%@ page import = "org.apache.commons.fileupload.disk.*" %>
<%@ page import = "org.apache.commons.fileupload.servlet.*" %>
<%@ page import = "org.apache.commons.io.output.*" %>
<%@page import="org.apache.commons.io.FileUtils"%>

<%@ include file="menu.jsp"%> 
<%@ include file="stylesImage.html"%> 

<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    </head>
    <body>
        <h1 class="card-header">Upload de Imagens</h1>
         
       <form action = "processaUpload.jsp" method = "POST" enctype = "multipart/form-data">
            <div class="input-group mb-3" style="margin: 20px auto; padding: 50px;">       
                <div class="custom-file">             
                    <input type="file" name = "file" class="custom-file-input" id="inputGroupFile03" aria-describedby="inputGroupFileAddon03">
                    <label class="custom-file-label" for="inputGroupFile03">Choose file</label>
                </div>
                <div class="input-group-prepend">
                    <button id="upload" class="btn btn-outline-secondary" type="submit">Upload</button>
                </div>
            </div>
        </form>
        
        <%
        try {
            String filePath = "c:\\temp";
            File file = new File(filePath);
            File files[] = file.listFiles();
            int i = 0;
            for (int j = files.length; i < j; i++) {
                File arquivo = files[i];
                if (arquivo.getName().endsWith(".jpg") || arquivo.getName().endsWith(".gif") || arquivo.getName().endsWith(".png") || arquivo.getName().endsWith(".jpeg")) {

                    byte[] fileContent = FileUtils.readFileToByteArray(new File(filePath + "\\" + arquivo.getName()));
                    String encodedString = Base64.getEncoder().encodeToString(fileContent);
                    
                    out.write("<img id='myImg" + i + "' onclick='imageFull(this.id)' src='data:image/jpeg;base64," + encodedString + "' style='width:100%;max-width:600px;' class='img-fluid img-thumbnail'>");
                    
                }
                System.out.println(arquivo.getName());
            }
            
                out.write("<div id='myModal' class='modal'>");
                out.write("<span class='close'>&times;</span>");
                out.write("<img class='modal-content' id='img01'>");
                out.write("<div id='caption'></div>");
                out.write("</div>");
        } catch (Exception e) {
            e.printStackTrace();
        }
        %>
    
        <script>
            function imageFull(id) {
                // Get the modal
                var modal = document.getElementById("myModal");

                // Get the image and insert it inside the modal - use its "alt" text as a caption
                var img = document.getElementById(id + "");
                var modalImg = document.getElementById("img01");
                var captionText = document.getElementById("caption");
                img.onclick = function(){
                  document.getElementById('upload').style.display="none";  
                  modal.style.display = "block";
                  modalImg.src = this.src;
                  captionText.innerHTML = this.alt;
                }

                // Get the <span> element that closes the modal
                var span = document.getElementsByClassName("close")[0];

                // When the user clicks on <span> (x), close the modal
                span.onclick = function() {
                  document.getElementById('upload').style.display="block";
                  modal.style.display = "none";
                }
            }
        </script>
    </body>
</html>