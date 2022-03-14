<%-- 
    Document   : contato
    Created on : 01/02/2022, 12:02:51
    Author     : jaoze
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title> Contato - Hotel do Gaúcho </title>
        <script type="text/javascript" src=""></script>
        <link href="css/hotel.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <jsp:include page="header.jsp" />



        <div class = "page-header1"><br><br>
            <h1 class= "title-page">Contato</h1>
        </div>
        <br>
        <br>
        <form action="Contatos" method="POST">
            <div id="bodycont">
                <div class="colunacont"> <h3><center> Entre em contato conosco!</center></h3>
                    <p> (44) 3522-1110 / 99824-2425 </p>
                    <p> hotel.gaucho@gmail.com </p>
                    <p> Avenida Mauro Mori, 475 - Goioerê - PR </p>
                    <p> CEP: 87360-000 </p>
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3639.581019565837!2d-53.02045331119573!3d-24.18642251087742!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94f28b6b08e9f9e5%3A0xc28f63aeccdbf0cb!2sHotel%20do%20Ga%C3%BAcho!5e0!3m2!1spt-BR!2sbr!4v1621541136998!5m2!1spt-BR!2sbr"
                            width="300" height="250" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                </div>

                <div class= "colunacont2">

                    <label for="nome"></label>

                    <input type="text" class="form-control form-contato" id="nome" name="nome"
                           placeholder="Nome"
                           size="50"
                           required maxlength="150">

                    <br>

                    <div class="colunacont2">
                        <label for="email"></label>

                        <input type="email" class="form-control form-contato" id="email" name="email"
                               placeholder="Email"
                               size="50"
                               required maxlength="50">
                    </div>

                    <br

                        <div class= "colunacont2">
                    <label for="telefone"></label>

                    <input type="text" class="form-control form-contato telefone" id="telefone" name="telefone"
                           placeholder="Telefone"
                           size="50"
                           required maxlength="20">
                </div>


                <div class= "colunacont2">
                    <label for="msg"></label>

                    <textarea name="mensagem" id="mensagem"
                              placeholder="Escreva aqui sua mensagem, opinião ou sugestão..."
                              rows="8"></textarea><br>
                    <Center> <input type="submit"></center>

                </div>
            </div>
        </form>
    </div>



    <br>
    <br>
    <br>
    <br>
    <br>

    <jsp:include page="footer.jsp"/>
     <c:if test="${param.mensagem != null}">
        <script type="text/javascript">
            window.alert('${param.mensagem}');
        </script>

</body>
</html>

