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
          <img src="../../img/cinta1.jpg" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
          <img src="../../img/kotex.jpg" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
          <img src="../../img/cinta3.jpg" class="d-block w-100" alt="...">
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
            <p class="text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus quis earum recusandae, architecto fugiat maiores, iure voluptates cumque nam at eligendi excepturi tenetur. Consectetur alias officia accusamus nihil nostrum numquam!</p>
            <p class="text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus quis earum recusandae, architecto fugiat maiores, iure voluptates cumque nam at eligendi excepturi tenetur. Consectetur alias officia accusamus nihil nostrum numquam!</p>
            <p class="text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus quis earum recusandae, architecto fugiat maiores, iure voluptates cumque nam at eligendi excepturi tenetur. Consectetur alias officia accusamus nihil nostrum numquam!</p>

        </div>
        <div class="imgInfo">
            <img src="../../img/cinta3.jpg" alt="">
        </div>


    </div>
    <div class="textoElegirnos">
        <p class="titulo2">¿Porque elegirnos?</p>
        <div class="tarjetas">
            <div class="tarjeta">
                <font-awesome-icon class="iconNosotros" :icon="['fas', 'bullseye']" />
                <p class="textoIcon">Misíon</p>
                <p class="infoIcon">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Pariatur enim temporibus consequuntur ullam quas aperiam magni nulla minima dolore quibusdam quo veritatis iusto suscipit unde, impedit ex aut perspiciatis rerum!</p>

            </div>

            <div class="tarjeta">
                <font-awesome-icon class="iconNosotros" :icon="['far', 'eye']" />
                <p class="textoIcon">Visíon</p>
                <p class="infoIcon">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Pariatur enim temporibus consequuntur ullam quas aperiam magni nulla minima dolore quibusdam quo veritatis iusto suscipit unde, impedit ex aut perspiciatis rerum!</p>


            </div>

            <div class="tarjeta">
                <font-awesome-icon class="iconNosotros" :icon="['far', 'circle-check']" />
                <p class="textoIcon">Valores</p>
                <p class="infoIcon">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Pariatur enim temporibus consequuntur ullam quas aperiam magni nulla minima dolore quibusdam quo veritatis iusto suscipit unde, impedit ex aut perspiciatis rerum!</p>

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

.infoIcon{
    margin: 50px;
}
.textoIcon{
    margin-top: 40px;
    color: #33447F;
    font-size: 25px;
    font-weight: bold;

}
.iconNosotros{
    margin-top: 70px;
    font-size: 80px;
    color: #33447F;

}
.tarjeta{
    width: 500px;
    height: 450px;
    background-color: white;
    margin-right: 20px;
    text-align: center;
}
.tarjetas{
    display: flex;
    justify-content: center;
}
.titulo2{
    font-size: 50px;
    font-weight: 500;
    margin-left: 120px;
}
.textoElegirnos{
    widows: 100%;
    height: 600px;
    background-color: #f5f5f5;
}
.titulo{
    font-size: 50px;
    font-weight: 500
}
.imgInfo img{
    width: 600px;
    height: 600px;
    filter: grayscale(100%); 
}
.imgInfo{
    margin-left: 200px;

}
.informacionNosotros{
    display: flex;
    margin-top: 100px;
    padding: 50px;
}

.informacion{
    width: 600px;
    margin-left: 100px;
}

.text{
    margin-top: 20px;
}

.textoImg{
    margin-top: 200px;
    margin-left: 90px;
    height: 50px;
    position: absolute;
    z-index: 1; 
}
.textoImg p{
    font-size: 50px;
    color: white;
}
.indicador{
    width: 100%;
    backdrop-filter: blur(8px); 
    height: 60px;
    position: absolute;
    z-index: 1; 
    color: black;
}
.indicador p{
    margin-top: 10px;
    margin-left: 100px;
}
.carousel-inner{
    height: 500px;
}

</style>