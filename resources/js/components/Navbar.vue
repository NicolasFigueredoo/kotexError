<template>
  <nav class="navbar navbar-expand-lg" style="background-color: white;">
  <div class="container-fluid">
    <img src="../../img/kotex.jpg" alt="">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
  

    <div id="container">

    <div id="contenidoNav">
        <div class="opcion">
            <font-awesome-icon class="iconNavbar" :icon="['fas', 'phone']" />
            <p>(011) 4754-6393</p>
        </div>
        <div class="opcion">
            <font-awesome-icon class="iconNavbar" :icon="['fab', 'whatsapp']" />
            <p>+54 9 11 4446-6664</p>
        </div>
        <div class="opcion">
            <font-awesome-icon class="iconNavbar" :icon="['far', 'envelope']" />
            <p>kotexsrl@hotmail.com</p>
        </div>
        <div class="opcion">
        <font-awesome-icon class="iconNavbar" :icon="['fas', 'magnifying-glass']" />
        </div>
        <p>|</p>
        <div class="opcion">
        <font-awesome-icon class="iconNavbar" :icon="['fab', 'facebook-f']" />
        </div>
        <div class="opcion">
        <font-awesome-icon class="iconNavbar" :icon="['fab', 'instagram']" />
        </div>


    </div>

    <div id="contenidoNav2">
        <div class="opcion">
        <router-link class="route" to="/Home">Home</router-link>
        </div>
        <div class="opcion">
        <router-link class="route" to="/nosotros">Nosotros</router-link>
        </div>
        <div class="opcion">
        <router-link class="route" to="/productolinea">Productos de linea</router-link>

        </div>
        <div class="opcion">
        <router-link class="route" to="/Catalogo">Catalogo</router-link>

        </div>
    </div>

    </div>

    
    
  </div>
</nav>
</template>

<script>
export default {

}
</script>

<style scoped>


.iconNavbar{
    align-items: center;
    font-size: 25px;
    color: #33447F;
    margin-top: 5px;
}
#container{
    display: flex;
    flex-direction: column;
    width: 1000px;
}

#contenidoNav2{
    display: flex;
}
#contenidoNav{
    display: flex;
}
#contenidoNav p{
    margin-left: 10px;
}
.opcion{
    display: flex;
    margin-left: 20px;
    font-size: 20px;
    font-weight: 500px;
}

.route{
    text-decoration: none;
    color: black;
}
</style>