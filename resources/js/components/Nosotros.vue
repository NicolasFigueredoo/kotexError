<template>
  <div>
    <div class="indicador"><p>Inicio > Empresa</p></div>
    <div class="textoImg"><p>Nuestra Empresa</p></div>

    <div id="carouselExampleIndicators" class="carousel slide">
      <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
      </div>
      <div class="carousel-inner">
        
        <div class="carousel-item active">
          <img src="../../img/imgNosotros.png" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
          <img src="../../img/imgNosotros.png" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
          <img src="../../img/imgNosotros.png" class="d-block w-100" alt="...">
        </div>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div>

    <div class="informacionNosotros">
        <div class="informacion">
            <p class="titulo">¿Quiénes somos?</p>
            <div class="infotext">
                <p class="text"><b class="kotex">Kotex SRL</b>, fábrica de cintas elásticas y rígidas de crochet, es una empresa familiar con casi 30 años en el rubro textil.</p>
                <p class="text">Por la calidad de nuestros productos y especial enfoque en la “atención personalizada” ocupamos un lugar de preferencia entre las empresas confeccionistas de reconocidas marcas.</p>
                <p class="text">Es nuestro deseo es seguir creciendo día a día junto con nuestros clientes brindándoles soluciones eficientes y procurando mantener balanceados los parámetros de: Precio, Calidad y Servicio.</p>
            </div>

        </div>
        <div class="imgInfo">
            <img src="../../img/imgNosotros2.png" alt="">
        </div>


    </div>
    <div class="textoElegirnos">
        <p class="titulo2">¿Porque elegirnos?</p>
        <div class="tarjetas">
            <div class="tarjeta">
                <font-awesome-icon class="iconNosotros" :icon="['fas', 'bullseye']" />
                <p class="textoIcon">Misíon</p>
                <p class="infoIcon">Profesionalismo y experiencia de nuestros empleados a disposición del cliente.Aprendizaje y adaptabilidad continúa.</p>

            </div>

            <div class="tarjeta">
                <font-awesome-icon class="iconNosotros" :icon="['far', 'eye']" />
                <p class="textoIcon">Visíon</p>
                <p class="infoIcon">Identificar y satisfacer las necesidades de clientes, integrando gestión eficiente y mejora continua en la comercialización de nuestros insumos y servicios.</p>


            </div>

            <div class="tarjeta">
                <font-awesome-icon class="iconNosotros" :icon="['far', 'circle-check']" />
                <p class="textoIcon">Valores</p>
                <p class="infoIcon">La disponibilidad permanente de nuestros variados productos, permite enviar en forma rápida y precisa a todos los centros de comercialización.</p>

            </div>

        </div>
    </div>
  </div>  

</template>

<script>

export default {
    name: 'Nosotros',
 
}
</script>

<style scoped>
@import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap');

.kotex{
    font-weight: 700;
}
.carousel-indicators .active {
    opacity: 1;
    height: 7px;
    width: 35px;
    background-color: #939393;

}

.carousel-indicators button {
    opacity: 1;
    height: 7px;
    width: 35px;
    background-color: #939393;
    opacity: 50%;

}
.carousel-indicators {
 right: 44.5%;
 margin-left: 0px;
 bottom: 100px;
 height: 10px;
}
.carousel-control-prev,
.carousel-control-next {
  display: none; 
}
.infoIcon{
    padding: 10px;
    font-family: "Montserrat", sans-serif;
    font-size: 16px;
    font-weight: 400;

}
.textoIcon{
    margin-top: 40px;
    color: #33447F;
    font-size: 20px;
    font-weight: 700;
    font-family: "Montserrat", sans-serif;


}
.iconNosotros{
    margin-top: 70px;
    font-size: 60px;
    color: #33447F;

}
.tarjeta{
    width: 392px;
    height: 362px;
    background-color: white;
    margin-right: 45px;
    text-align: center;
}
.tarjetas{
    display: flex;
    justify-content: left;
    margin-left: 17%;
}
.titulo2{
    font-size: 35px;
    font-family: "Montserrat", sans-serif;
    font-weight: 600;
    margin-left: 17%;
    padding-top: 40px;
    padding-bottom: 20px;

}
.textoElegirnos{
    width: 100%;
    height: 580px;
    background-color: #f5f5f5;
}
.titulo{
    font-size: 35px;
    font-family: "Montserrat", sans-serif;
    font-weight: 600;
    margin-left: 30%;
    margin-top: 20px;
}
.imgInfo img{
    width: 585px;
    height: 550px;
    filter: grayscale(100%); 
}
.imgInfo{
    margin-left: 250px;

}
.informacionNosotros{
    display: flex;
    justify-content: start;
    margin-top: 45px;
    padding: 50px;
    margin-left: 100px;
}

.informacion{
    width: 600px;
}
.infotext{
    margin-top: 90px;
    margin-left: 30%;
    width: 600px;
}
.text{
    font-size: 20px;
    font-family: "Montserrat", sans-serif;
    font-weight: 400
}

.textoImg{
    margin-top: 200px;
    margin-left: 17%;
    height: 50px;
    position: absolute;
    z-index: 1; 
   
}
.textoImg p{
    color: white;
    font-weight: 400;
    font-family: "Montserrat", sans-serif;
    font-size: 50px;
}
.indicador{
    background-color: rgba(246, 246, 246, 0.13);
    width: 100%;
    height: 80px;
    position: absolute;
    z-index: 1; 
    color: black;
    margin-left: 0%;
    margin-top: 0%;
}
.indicador p{
    margin-left: 17.3%;
    margin-top: 10px;
    color: white;
    font-size: 15px;
    font-weight: 400;
    font-family: "Montserrat", sans-serif;
    line-height: 60px;
}
.carousel-inner{
    height: 500px;
}

</style>