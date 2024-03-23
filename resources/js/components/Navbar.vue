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
        <div class="palito">
        <p>|</p>
        </div>
        <div class="opcion1">
        <font-awesome-icon class="iconNavbar" :icon="['fab', 'facebook-f']" />
        </div>
        <div class="opcion1">
        <font-awesome-icon class="iconNavbar" :icon="['fab', 'instagram']" />
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
        <router-link class="route" to="/">Aplicaciones</router-link>
        </div>
              
        <div class="opcion2">
        <router-link class="route" to="/">Presupuesto</router-link>
        </div>
              
        <div class="opcion2">
        <router-link class="route" to="/">Contacto</router-link>
        </div>

        
    </div>
</div>

    
    
  </div>
</nav>
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

.palito{
    margin-left: 10px;
}
.navbar{
    height: 180px;
}
#imgkotex{
    width: 245px;
    height: 92px;
    margin-top: 31px;
    margin-left: 71px;
}
.iconNavbar{
    align-items: center;
    font-size: 20px;
    color: #33447F;
}
.containerN{
    display: flex;
    flex-direction: column;
    width: 1000px;
    height: 150px;
}

.contenidoNav2{
    display: flex;
    margin-top: 20px;
    margin-left: 200px;

}
.contenidoNav{
    display: flex;
    margin-left: 250px;
    margin-top: 50px;

}

.opcion2{
    font-weight: 500;
    font-family: "Montserrat", sans-serif;
    line-height: 18px;
    font-size: 15px;
    line-height: 18px;
    margin-left: 20px;


}
.opcion1{
    display: flex;
    margin-left: 18px;
    font-weight: 500;
    font-family: "Montserrat", sans-serif;
    line-height: 18px;
    font-size: 15px;
}
.opcion1 p{
    margin-left: 10px;
}

.route{
    text-decoration: none;
    color: black;
}
</style>