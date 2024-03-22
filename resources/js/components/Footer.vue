<template>
  <footer>
    <div class="footer">

        <div class="logoRedes">
            <img src="../../img/kotexfooter.png" alt="">
            <div class="iconos">
                <font-awesome-icon class="iconFooter" :icon="['fab', 'facebook-f']" />
                <font-awesome-icon class="iconFooter" :icon="['fab', 'instagram']" />
            </div>
    
        </div>
        <div class="textoEmpresa">
            <p id="tituloSecciones">Secciones</p>
            <p>Nosotros</p>
            <p>Productos de linea</p>
            <p>Productos Especiales</p>
            <p>Catalogo</p>
        </div>
        <div class="textoEmpresa2">
            <p>Aplicaciones</p>
            <p>Servicios</p>
            <p>Presupuesto</p>
            <p>Contacto</p>
        </div>
        <div class="textoEmpresa3">
            <p>Suscribite al Newsletter</p>
            <input type="email" name=""  placeholder="Ingresa tu Email">
        </div>
        <div class="textoEmpresa4">
            <p class="title4">Contacto</p>
            <div class="iconInfo"><font-awesome-icon class="iconEnd" :icon="['fas', 'location-dot']" /><p>República de Israel (calle 24) N. 3259, San Martín, <br>
                 Prov. de Buenos Aires, Argentina</p></div>
            <div class="iconInfo"><font-awesome-icon class="iconEnd" :icon="['fas', 'phone']" /><p>(011) 4754-6393</p></div>
            <div class="iconInfo"><font-awesome-icon class="iconEnd" :icon="['fab', 'whatsapp']" /><p>+54 9 11 4446-6664</p></div>
            <div class="iconInfo"><font-awesome-icon class="iconEnd" :icon="['far', 'envelope']" /><p>kotexsrl@hotmail.com</p></div>

        </div>

        
    </div>
    
    <div class="textoEmpresa5">
    <p>Copyright 2024 kotex S.R.L. Todos los derechos reservados</p>
    <p class="osole">By osole</p>
    </div>
    </footer>
   
</template>

<script>
export default {

}
</script>

<style>
@import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap');


.iconoR{
    margin-top: 10px;
}
.textoEmpresa5{
    padding-top: 10px;
    padding-right: 50px;
    padding-left: 50px;
    width: 100%;
    display: flex;
    justify-content: space-between;
    background-color: #2F3F78;
    color: rgba(255, 255, 255, 0.8);
    font-family: "Montserrat", sans-serif;
    font-size: 14px;

}
.iconEnd{
    margin-right: 20px;
    font-size: 23px;
}
.iconInfo{
    display: flex;
}
.title4{
    font-size: 20px;
}
.textoEmpresa4{
    margin-top: 50px;
    margin-left: 100px;
    color: white;
    font-family: "Montserrat", sans-serif;
    font-weight: 400px;
    font-size: 15px;

}
.iconRow{
    background-color: white;
    color: #33447F;
    font-size: 30px;
}
input{
    width: 250px;
    height: 50px;
}
.textoEmpresa3 p{
    font-size: 25px;
    font-family: "Montserrat", sans-serif;
    font-weight: 500px;
}
.textoEmpresa3{
    margin-top: 50px;
    margin-left: 50px;
    color: rgba(255, 255, 255, 0.8);

}
.textoEmpresa2{
    margin-top: 98px;
    margin-left: 100px;
    color: rgba(255, 255, 255, 0.8);
    font-family: "Montserrat", sans-serif;
    font-size: 15px;
}

#tituloSecciones{
    margin-bottom: 20px;
    font-size: 20px;
    color: white;
}
.textoEmpresa{
    margin-top: 50px;
    margin-left: 270px;
    padding-left: 25px;
    color: rgba(255, 255, 255, 0.8); 
    border-left: 1px solid rgba(255, 255, 255, 0.8);
    height: 250px;
    font-family: "Montserrat", sans-serif;
    font-size: 15px;


}
.iconos{
    display: flex;
    justify-content: center;
    margin-left: 300px;
}
.iconFooter{
    color: white;
    font-size: 30px;
    margin-left: 20px;
}
.logoRedes img{
    margin: 50px;
    width: 300px;
    height: 150px;
    margin-left: 150px;
}
.logoRedes{
    width: 300px;
    display: flex;
    flex-direction: column;
}
.footer{
    display: flex;
    background-color: #33447F;
    height: 350px;
    width: 100%;

}

</style>