<%-- 
    Document   : quartos
    Created on : 25/01/2022, 11:47:36
    Author     : jaoze
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags/" prefix="ctag"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title> Quartos - Hotel do Gaúcho </title>
        <script type="text/javascript" src=""></script>
        <link href="css/hotel.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="css/gallery.css">
        <link rel="stylesheet" href="css/gallery.theme.css">
        <script type="text/javascript"></script>
        <style>

            /* imagem responsiva (muda o tamanho no celular/pc) */
            .galeria{
                width: 0%;
                position: relative;
                margin: 0 5%;
                padding: 2px;
                display: flex;
                border: white;
            }

            @media (min-width: 480px) { /*tamanho para o pc */
                .galeria{
                    width: 550px; /* tamanho das fotos */
                    margin: auto;
                }
            }

        </style>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
            <div class = "page-header1">
                <h1 class = "title-page">Acomodações</h1>
            </div>
        <c:forEach var="quarto" items="${quartos}" >
            <ctag:quarto quarto="${quarto}"/> 
        </c:forEach>
        <jsp:include page="footer.jsp"/>
    </body>
    
    <c:if test="${param.mensagem != null}">
        <script type="text/javascript">
            window.alert('${param.mensagem}');

        </script>
    </c:if>
</html>

