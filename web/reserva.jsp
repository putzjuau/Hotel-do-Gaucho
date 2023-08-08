<%-- 
    Document   : reserva
    Created on : 25/01/2022, 11:58:28
    Author     : jaoze
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title> Hotel do Gaúcho </title>
        <script type="text/javascript" src=""></script>
        <link href="css/hotel.css" rel="stylesheet" type="text/css" />
    </head>
    <body>

        <jsp:include page="header.jsp"/>


        <br>
        <div id= "reserva">

            <font face="candara" size= "3" color= black align= "left">
            <form action="Reserva" method="post">
                <input type="hidden" name="id" value="${param.id}" />
                <fieldset>
                    <legend> • HÓSPEDES/ACOMODAÇÕES E DADOS PESSOAIS</legend>
                    <br>
                    <label for = "Adultos">  Adultos:</label>
                    <select name="adultos" type = "text"> <!-- função select-->

                        <option value="selecionar" disabled>selecionar</option> <!-- passa o valor que vai para o sistema 1, depois o vai
                          aparecer o selecionar-->

                        <option value="1">1</option><!-- passa o valor que vai para o sistema 1, depois o vai
                          aparecer o selecionar-->

                        <option value="2">2</option><!-- passa o valor que vai para o sistema 1, depois o vai
                          aparecer o selecionar-->

                        <option value="3">3</option><!-- passa o valor que vai para o sistema 1, depois o vai
                          aparecer o selecionar-->

                        <option value="4">4</option><!-- passa o valor que vai para o sistema 1, depois o vai
                          aparecer o selecionar-->

                        <option value="5">5+</option><!-- passa o valor que vai para o sistema 1, depois o vai
                          aparecer o selecionar-->

                    </select>
                    <br><br>

                    <label for = "Crianças">Crianças:</label>
                    <select name="criancas" type = "text"> <!-- função select-->

                        <option value="0" >0</option> <!-- passa o valor que vai para o sistema 1, depois o vai
                        aparecer o selecionar-->

                        <option value="1">1</option><!-- passa o valor que vai para o sistema 1, depois o vai
                        aparecer o selecionar-->

                        <option value="2">2</option><!-- passa o valor que vai para o sistema 1, depois o vai
                        aparecer o selecionar-->

                        <option value="3">3</option><!-- passa o valor que vai para o sistema 1, depois o vai
                        aparecer o selecionar-->

                        <option value="4">4</option><!-- passa o valor que vai para o sistema 1, depois o vai
                        aparecer o selecionar-->

                        <option value="5">5+</option><!-- passa o valor que vai para o sistema 1, depois o vai
                        aparecer o selecionar-->

                    </select>
                    <br><br>

                    <label for="data"> Data Entrada: </label> <input type="date" name="dataentrada">  
                    <label for="data"> Data Saída: </label> <input type="date" name="datasaida">
                    <br><br>

                    <label for = "nome">Nome: </label>
                    <input type = "text" name = "nome">

                    <label for = "sobrenome">Sobrenome: </label>
                    <input type = "text" name = "sobrenome">
                    <br><br>

                    <label for="email">E-mail: </label>
                    <input type="text" name="email">
                    <br><br>

                    <label for = "telefone">Telefone:</label>
                    <input type = "number" name = "telefone">
                    <br><br>

                    <label for = "CPF">CPF:</label>
                    <input type = "number" name = "CPF" >
                    <br><br>
                    <Center> <input type="submit" value="Cadastrar"/></center>
                </fieldset>
            </form>
        </div>
        <br>



        <br><br>
        <jsp:include page="footer.jsp"/>


    </body>
</html>

