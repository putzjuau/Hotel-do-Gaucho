<%-- 
    Document   : galeria
    Created on : 20/01/2022, 12:37:36
    Author     : jaoze
--%>
<html>
<head>
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Galeria - Hotel do Gaúcho </title>
    <script type="text/javascript" src=""> </script>
     <link href="css/hotel.css" rel="stylesheet" type="text/css" />
     <style>
          .imagem{
          width:300px;
          border: 5px  solid #F5F5DC;
          cursor: hand;

          }
          .imagem:hover{
            border: 3px  solid #556B2F;
            zoom:126%;
          }






     </style>
</head>
<body>
  <!-- PARTE DO MENU -->
  <jsp:include page="header.jsp"/>
    <div class = "page-header1"><br><br>
        <h1 class= "title-page">Galeria de Fotos</h1>
    </div>

    <br><br>
<div class="w.fotos">
  <!-- Fotos -->

  <img class = "imagem" src="Imagens/Frente/frente1.jpg">
  <img class = "imagem"src="Imagens/Frente/frente2.jpg"/>
  <img class = "imagem" src="Imagens/Frente/frente3.jpg"/>
  <img  class = "imagem"src="Imagens/Frente/frente4.jpg"/>
  <!--Final fotos da frente-->
  <!-- começo fotos de lazer-->
    <img class = "imagem" src="Imagens/Lazer/lazer4.jpg"/>
    <img class = "imagem"src="Imagens/Lazer/lazer2.jpg"/>
    <img class = "imagem" src="Imagens/Lazer/lazer1.jpg"/>
    <img class = "imagem" src="Imagens/Lazer/lazer3.jpg"/>
      <!-- final fotos de lazer -->
      <!-- começo fotos do vidro -->
      <img class = "imagem" src="Imagens/Vidro/vidro2.jpg"/>
      <img class = "imagem" src="Imagens/Vidro/vidro3.jpg"/>
      <!-- fim fotos do vidro -->
      <!--   começo fotos da Gastronomia -->
      <img class = "imagem" src="Imagens/gastronomia/gastro2.jpg"/>
      <img class = "imagem" src="Imagens/gastronomia/gastro3.jpg"/>
      <img class = "imagem" src="Imagens/gastronomia/gastro6.jpg"/>
      <img class = "imagem" src="Imagens/gastronomia/gastro7.jpg"/>
      <img class = "imagem"src="Imagens/gastronomia/gastro9.jpg"/>
      <!-- fotos de café da manha -->
      <img class = "imagem"src="Imagens/gastronomia/Café/cafe.jpg"/>
      <img class = "imagem"src="Imagens/gastronomia/Café/cafe2.jpg"/>
      <img class = "imagem"src="Imagens/gastronomia/Café/cafe3.jpg"/>
      <img class = "imagem"src="Imagens/gastronomia/Café/cafe4.jpg"/>
      <img class = "imagem"src="Imagens/gastronomia/Café/cafe5.jpg"/>
      <!-- fotos de almoço e janta -->
      <img class = "imagem"src="Imagens/gastronomia/Comidas/comida.jpeg"/>
      <img class = "imagem"src="Imagens/gastronomia/Comidas/comida1.jpeg"/>
      <img class = "imagem"src="Imagens/gastronomia/Comidas/comida2.jpeg"/>
      <img class = "imagem"src="Imagens/gastronomia/Comidas/comida3.jpeg"/>
      <img class = "imagem"src="Imagens/gastronomia/Comidas/comida4.jpeg"/>
      <img class = "imagem"src="Imagens/gastronomia/Comidas/comida5.jpeg"/>
      <img class = "imagem"src="Imagens/gastronomia/Comidas/comida6.jpeg"/>
      <img class = "imagem"src="Imagens/gastronomia/Comidas/comida7.jpeg"/>
      <img class = "imagem"src="Imagens/gastronomia/Comidas/comida8.jpeg"/>
      <img class = "imagem"src="Imagens/gastronomia/Comidas/comida9.jpeg"/>
      <img class = "imagem"src="Imagens/gastronomia/Comidas/comida10.jpeg"/>
      <img class = "imagem"src="Imagens/gastronomia/Comidas/comida11.jpeg"/>
      <!-- fim fotos de almoço e janta -->
      <!-- começo fotos quartos -->
      <img class = "imagem"src="Imagens/Quarto/Comar/Comar1.jpeg"/>
      <img class = "imagem"src="Imagens/Quarto/Comar/Comar2.jpeg"/>
      <img class = "imagem"src="Imagens/Quarto/Comar/Comar3.jpeg"/>
      <!-- fim -->
      <!-- começo  compartilhado  -->
        <img class = "imagem"src="Imagens/Quarto/Compartilhado/compartilhado1.jpeg"/>
        <img class = "imagem"src="Imagens/Quarto/Compartilhado/compartilhado2.jpeg"/>
        <img class = "imagem"src="Imagens/Quarto/Compartilhado/compartilhado3.jpeg"/>
        <img class = "imagem"src="Imagens/Quarto/Compartilhado/compartilhado4.jpeg"/>
        <!-- fim  -->
        <!-- começo simples -->
          <img class = "imagem"src="Imagens/Quarto/Simples/Simples1.jpeg"/>
          <img class = "imagem"src="Imagens/Quarto/Simples/Simples2.jpeg"/>
          <img class = "imagem"src="Imagens/Quarto/Simples/Simples3.jpeg"/>
          <img class = "imagem"src="Imagens/Quarto/Simples/Simples4.jpeg"/>
          <!-- fim  -->
          <!-- começo suite -->
            <img class = "imagem"src="Imagens/Quarto/Suite/Suite1.jpeg"/>
            <img class = "imagem"src="Imagens/Quarto/Suite/Suite2.jpeg"/>
            <img class = "imagem"src="Imagens/Quarto/Suite/Suite3.jpeg"/>
            <img class = "imagem" src="Imagens/Quarto/Suite/Suite4.jpeg"/>
            <img class = "imagem"src="Imagens/Quarto/Suite/Suite5.jpeg"/>
            <!-- fim  -->
            <!-- começo suitecompleta -->
              <img class="imagem" src="Imagens/Quarto/SuiteCompleta/Suitecompleta1.jpeg"/>
              <img class="imagem" src="Imagens/Quarto/SuiteCompleta/Suitecompleta2.jpeg"/>
              <img class="imagem" src="Imagens/Quarto/SuiteCompleta/Suitecompleta3.jpeg"/>
              <img class="imagem" src="Imagens/Quarto/SuiteCompleta/Suitecompleta4.jpeg"/>
              <img class="imagem" src="Imagens/Quarto/SuiteCompleta/Suitecompleta5.jpeg"/>
              <img class="imagem" src="Imagens/Quarto/SuiteCompleta/Suitecompleta6.jpeg"/>
              <!-- fim  -->
              <!-- começo Suitehidro-->
                <img class="imagem" src="Imagens/Quarto/Suitehidro/Suiteh1.jpeg"/>
                <img class="imagem" src="Imagens/Quarto/Suitehidro/Suiteh2.jpeg"/>
                <img class="imagem" src="Imagens/Quarto/Suitehidro/Suiteh3.jpeg"/>
                <img class="imagem" src="Imagens/Quarto/Suitehidro/Suiteh4.jpeg"/>
                <img class="imagem" src="Imagens/Quarto/Suitehidro/Suiteh5.jpeg"/>
                <img class="imagem" src="Imagens/Quarto/Suitehidro/Suiteh6.jpeg"/>
                <img class="imagem" src="Imagens/Quarto/Suitehidro/Suiteh7.jpeg"/>
                <img class="imagem" src="Imagens/Quarto/quarto.jpg"/>
                  <img class="imagem" src="Imagens/Frente/frente5.jpeg"/>
                    <img class="imagem" src="Imagens/Funcionarios/func.jpeg"/>
                    <img class="imagem" src="Imagens/fotohotel.jpg"/>
</div>

    <jsp:include page="footer.jsp"/>
  </body>

</html>