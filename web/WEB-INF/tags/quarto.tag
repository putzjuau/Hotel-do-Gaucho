<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@tag description="Modelo de quarto" pageEncoding="UTF-8"%>
<%-- The list of normal or fragment attributes can be specified here: --%>
<%@attribute name="quarto" required="true" type="Entities.Quarto"%>

<div id = "bodysobre">
    <!-- SESSÃO DE FOTOS -->
    <div>
        <section class="galeria">
            <div class="gallery autoplay items-${quarto.qtdArquivos} " >


                <c:forEach var="arquivo" items="${quarto.listaarquivos}">
                    <figure class="item">   <!--Slides 1-->
                        <img class="imagem2" src="${arquivo.nome}" >
                    </figure>
                </c:forEach>



                <div class="controls">
                    <c:forEach var="i" begin="1" end="${quarto.qtdArquivos}" >
                        <a href="#item-${i}" class="control-button">•</a>
                    </c:forEach>
                </div>
            </div>
        </section>
    </div>
    <!-- Colocando o texto -->
    <div>
        <div class="colunasobre">
            <h1  class = "tituloterceiro"> ${quarto.tipo}</h1> 
            ${quarto.colunasobre}
            <br><br>
            <center><button type="button" name="button" align= "center" onclick="window.location.href = 'Reserva?id=${quarto.id}'"> 
                    <font size= "5" color= white> <strong>RESERVAR </strong> </font></button></center>
        </div>
    </div>
</div>
<br><br><br><br><br><br><br>