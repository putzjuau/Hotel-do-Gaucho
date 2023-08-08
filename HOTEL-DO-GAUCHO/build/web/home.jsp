<%-- 
    Document   : home.jsp
    Created on : 20/01/2022, 12:34:42
    Author     : jaoze
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Hotel do Gaúcho </title>
    <script type="text/javascript" src="trab.js"> </script>
    <link href="css/hotel.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <jsp:include page="header.jsp" />


<body onload="slide1()" align= "center">


<a id="aId"><img id="id"></a>

        <script src="trab.js"> </script> <!-- utilizando a pasta que contém código javascript -->

        <div class= "texto">
            <p> <center><h1>Nossos clientes merecem o melhor! </center></h1> </p>
            <p> <center>O Hotel do Gaúcho tem recepção 24 horas, TV e banheiro em todos os quartos, WiFi disponível para todos
            e garagem coberta. Também possui restaurante integrado ao hotel, com jantar e café da manhã
            incluso na hospesagem.
            Quartos dos mais variáveis tipos e valores para suprir suas necessidades! </p>
            <p> Profissionais preparados para melhor lhe atender! </p>
            <p>  Sua casa fora de casa!</p> </center></p>
        </div>

<div id= "imagenscolunaindex">
  <div class= "img1">
    <a href="gastronomia.html">
    <img src= "Imagens/gastronomia/cafe2.jpg">
  </div>

<div class="img2">
  <p> <center><h4> Quartos </center></h4> </p>
  <p> <center> Quartos mobiliados com conforto para fazer da sua hospedagem, a melhor!
     Os mais variados tipos e valores! Escolha já o seu! </center></p>
</div>
</div>

<div id="imagenscolunaindex">
  <div class="img2">
    <p> <center><h4> Gastronomia </center></h4> </p>
    <p> <center> Aprecie nossos pratos e delicioso churrasco, assim como nosso café da
    manhã completo! </center></p>
  </div>
  <div class= "img1">
    <a href="contato.html">
    <img src= "Imagens/Quarto/quarto.jpg">
    </a>
</div>
</div>

<br>
<br>
<div class= "container">
          <div class= "caixaindex">
             <img src= "Imagens/icones/icon-estacionamento.png" height="40" width="50">
              <p>Estacionamento coberto</p>
            </div>

            <div class= "caixaindex">
              <img src ="Imagens/icones/icon-cafe.png" height="40" width="50">
              <p> Café da Manhã incluso </p>
            </div>

            <div class= "caixaindex">
              <img src ="Imagens/icones/icon-wifi.png" height="40" width="30">
              <p> Wifi Grátis </p>
            </div>

            <div class= "caixaindex">
              <img src ="Imagens/icones/icon-lavanderia.png" height="40" width="50">
              <p> Lavanderia Própria </p>
            </div>

            <div class= "caixaindex">
              <img src ="Imagens/icones/icon-rest (2).png" height="40" width="50">
              <p> Restaurante </p>
            </div>
            <br>
          </div>
<br>
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3639.581019565837!2d-53.02045331119573!3d-24.18642251087742!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94f28b6b08e9f9e5%3A0xc28f63aeccdbf0cb!2sHotel%20do%20Ga%C3%BAcho!5e0!3m2!1spt-BR!2sbr!4v1621541136998!5m2!1spt-BR!2sbr"
    width="1350" height="250" style="border:0;" allowfullscreen="" loading="lazy"></iframe>

<div>
<script src="trab.js"> </script>
</div>

<jsp:include page="footer.jsp"/>
</body>
</html>

