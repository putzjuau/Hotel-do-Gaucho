
function slide1(){
document.getElementById('id').src="Imagens/fotosdoindex/frente3.jpeg";
setTimeout("slide2()", 3000)}

function slide2(){
document.getElementById('id').src="imagens/fotosdoindex/frente.jpeg";
setTimeout("slide3()", 3000)}

function slide3(){
document.getElementById('id').src="imagens/fotosdoindex/frente2.jpeg";
setTimeout("slide4()", 3000)}

function slide4(){
document.getElementById('id').src="imagens/fotosdoindex/lado.jpeg";
setTimeout("slide5()", 3000)}

function slide5(){
document.getElementById('id').src="imagens/fotosdoindex/frente4.jpeg";
setTimeout("slide6()", 3000)}

function slide6(){
setTimeout("slide1()", 3000)
}


