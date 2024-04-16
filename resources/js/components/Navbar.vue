<template>
  <nav class="navbar navbar-expand-lg" style="background-color: white; box-shadow: 0 3px 23px 0 rgba(0, 0, 0, 0.1);">
  <div class="container-fluid">
    <img id="imgkotex" src="../../img/kotex.jpg" alt="">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
  

    <div class="containerN">

    <div class="contenidoNav">
        <div class="opcion1">
            <font-awesome-icon class="iconNavbar" :icon="['fas', 'phone']" />
            <b-icon icon="exclamation-circle-fill" variant="success"></b-icon>

            <p>(011) 4754-6393</p>
        </div>
        <div class="opcion1">
            <font-awesome-icon class="iconNavbar" :icon="['fab', 'whatsapp']" />
            <p>+54 9 11 4446-6664</p>
        </div>
        <div class="opcion1">
            <font-awesome-icon class="iconNavbar" :icon="['far', 'envelope']" />
            <p>kotexsrl@hotmail.com</p>
        </div>
        <div class="opcion1">
        <font-awesome-icon class="iconNavbar" :icon="['fas', 'magnifying-glass']" />
        </div>
        <div class="opcion4">
        <p>|</p>
        </div>
        <div class="opcion3">
        <font-awesome-icon class="iconNavbar2" :icon="['fab', 'facebook-f']" />
        </div>
        <div class="opcion3">
        <font-awesome-icon class="iconNavbar2" :icon="['fab', 'instagram']" />
        </div>

    </div>
    
    <div class="contenidoNav2">

        <div class="opcion2">
        <router-link class="route" to="/home" :style="{ fontWeight: isRouteActive('/home') ? 'bold' : '500' }">Home</router-link>
        </div>

        <div class="opcion2">
            <router-link class="route" to="/nosotros" :style="{ fontWeight: isRouteActive('/nosotros') ? 'bold' : '500' }">Nosotros</router-link>
        </div>

        <div class="opcion2">
        <router-link class="route" to="/productolinea" :style="{ fontWeight: isRouteActive('/productolinea') ? 'bold' : '500' }">Productos de linea</router-link>
    
        </div>

        <div class="opcion2">
        <router-link class="route" to="/catalogo" :style="{ fontWeight: isRouteActive('/catalogo') ? 'bold' : '500' }">Catalogo</router-link>
        </div>
              
        <div class="opcion2">
        <router-link class="route" to="/aplicaciones" :style="{ fontWeight: isRouteActive('/aplicaciones') ? 'bold' : '500' }">Aplicaciones</router-link>
        </div>
              
        <div class="opcion2">
        <router-link class="route" to="/presupuesto" :style="{ fontWeight: isRouteActive('/presupuesto') ? 'bold' : '500' }">Presupuesto</router-link>

        </div>
              
        <div class="opcion2">
        <router-link class="route" to="/contacto" :style="{ fontWeight: isRouteActive('/contacto') ? 'bold' : '500' }">Contacto</router-link>
        </div>

        
    </div>
</div>

    
    
  </div>
</nav>

<div class="whatsapp-container">
  <a href="https://wa.me/xxxxxxxxxx" target="_blank" class="whatsapp-link">
    <font-awesome-icon class="contactoWhat" :icon="['fab', 'whatsapp']" />
  </a>
</div>


</template>

<script>
export default {
  methods: {
    isRouteActive(route) {
      return this.$route.path === route;
    }
  }
}
</script>

<style scoped>
@import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap');


.navbar{
    height: 160px;
}
#imgkotex{
    width: 245px;
    height: 92px;
    margin-left: 310px;
}
.iconNavbar{
    align-items: center;
    font-size: 20px;
    color: #33447F;
}

.iconNavbar2{
    align-items: center;
    font-size: 17px;
    color: #33447F;

}
.containerN{
    display: flex;
    flex-direction: column;
    height: 150px;
    width: 100%;
}
.contenidoNav{
    display: flex;
    margin-top: 50px;
    margin-left: 24%;

}
.contenidoNav2{
    display: flex;
    margin-top: 20px;
    margin-left: 17.3%;

}

.opcion4{
    display: flex;
    font-weight: 500;
    font-family: "Montserrat", sans-serif;
    line-height: 18px;
    font-size: 16px;
    margin-left: 10px;
}
.opcion3{
    margin-left: 10px;
    display: flex;
    font-weight: 500;
    font-family: "Montserrat", sans-serif;
    line-height: 18px;
    font-size: 16px;
}
.opcion2{
    font-weight: 500;
    font-family: "Montserrat", sans-serif;
    line-height: 18px;
    font-size: 16px;
    line-height: 18px;
    margin-left: 22px;
}
.opcion1{
    display: flex;
    margin-left: 18px;
    font-weight: 500;
    font-family: "Montserrat", sans-serif;
    line-height: 18px;
    font-size: 16px;
}
.opcion1 p{
    margin-left: 10px;
}

.route{
    text-decoration: none;
    color: black;
}

.whatsapp-container {
  position: fixed;
  bottom: 20px;
  right: 20px;
  z-index: 1000;
}

.whatsapp-link {
  display: block;
  width: 60px;
  height: 60px;
  background-color: #00C820; 
  border-radius: 50%; 
  text-align: center;
  line-height: 60px; 
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3); 
  transition: transform 0.3s ease;
}

.whatsapp-link:hover {
  transform: scale(1.1); 
}

.contactoWhat{
    font-size: 30px;
    color: white;
    padding-top: 15px;
}

</style>