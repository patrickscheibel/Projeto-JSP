<%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import = "javax.servlet.http.*" %>
<%@ page import = "org.apache.commons.fileupload.*" %>
<%@ page import = "org.apache.commons.fileupload.disk.*" %>
<%@ page import = "org.apache.commons.fileupload.servlet.*" %>
<%@ page import = "org.apache.commons.io.output.*" %>

<%    
    // Para funcionar, deve baixar e adicionar a biblioteca commons-fileupload commons.io.
    
    File file;
    final int MAX_FILE_SIZE = 5000 * 1024;                 // Maior arquivo permitido
    final int MAX_MEMO_SIZE = 5000 * 1024;                 // Reseva de memoria para manter o arquivo
    final String OUT_FILE_DIR = "C:\\temp\\tempo";         // Diretório temporário
//    final String OUT_FILE_DIR = "C:\\Users\\Scheibel\\Desktop\\web\\projeto\\src\\imagem";         // Diretório temporário
    
    ServletContext context = pageContext.getServletContext();
    String filePath = context.getInitParameter("file-upload");

    // Qual o tipo do form ???
    String contentType = request.getContentType();

    if ((contentType.indexOf("multipart/form-data") >= 0)) {
        
        DiskFileItemFactory factory = new DiskFileItemFactory();
        factory.setSizeThreshold(MAX_MEMO_SIZE);
        factory.setRepository(new File(OUT_FILE_DIR));

        ServletFileUpload upload = new ServletFileUpload(factory);
        upload.setSizeMax(MAX_FILE_SIZE);

        try {
            List fileItems = upload.parseRequest(request);
            Iterator i = fileItems.iterator();

//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>JSP File upload</title>");
//            out.println("</head>");
//            out.println("<body>");

            while (i.hasNext()) {
                FileItem fi = (FileItem) i.next();
                if (!fi.isFormField()) {

                    String fileName = fi.getName();
                    //String fieldName = fi.getFieldName();                    
                    //boolean isInMemory = fi.isInMemory();
                    //long sizeInBytes = fi.getSize();

                    if (fileName.lastIndexOf("\\") >= 0) { // o diretório termina em \
                        file = new File(filePath + fileName.substring(fileName.lastIndexOf("\\")));
                        System.out.println(filePath + fileName.substring(fileName.lastIndexOf("\\")));
                    } else {
                        file = new File(filePath + fileName.substring(fileName.lastIndexOf("\\") + 1));
                        System.out.println(filePath + fileName.substring(fileName.lastIndexOf("\\") + 1));
                    }

                    fi.write(file);
//                    out.println("Uploaded Filename: " + filePath + fileName + "<br>");
                }
            }
//            out.println("</body>");
//            out.println("</html>");
//            out.println("</html>");
            
            out.write("<script>");
            out.write("location.href='upload.jsp'");
            out.write("</script>");
        } catch (Exception e) {
            System.out.println(e);
        }
    } else {
//        out.println("<html>");
//        out.println("<head>");
//        out.println("<title>Servlet upload</title>");
//        out.println("</head>");
//        out.println("<body>");
//        out.println("<p>No file uploaded</p>");
//        out.println("</body>");
//        out.println("</html>");
    }
%>