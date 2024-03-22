<template>
  <div>
    <div class="indicador">
       <p>Inicio > Catalogo</p>
     </div>
     <div class="catalogo">
      <div class="informacionCatalogo">
        <img id="imgCatalogo" src="../../img/catalogo.jpg" alt="">
      </div>
      <div class="catalogoBotones">
        <p class="catalogoTitle">Catálogo de productos</p>
        <div class="catalogoText">
          <p>Descargá nuestro catálogo actualizado con todos nuestros artículos en venta</p>     
        </div>
        <div class="botones">
          <button type="button" id="descargar" class="btn" style="width: 184px; height: 50px;">Descargar</button>
          <button type="button" id="visualizar" class="btn" style="width: 184px; height: 50px;">Visualizar</button>

        </div>
  
       </div>

      </div>


  </div>
  
</template>

<script>
export default {

}
</script>

<style scoped>
@import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap');

#descargar{
  background-color: #2F3F78;
  color: white;
  border-radius: 0%;
}
#visualizar{
  background-color: white;
  color: black;
  border-radius: 0%;
  margin-left: 20px;

}

.catalogoTitle{
  font-weight: 600;
  font-family: "Montserrat", sans-serif;
  font-size: 24px;

}

.catalogoText{
  font-weight: 400;
  font-family: "Montserrat", sans-serif;
  font-size: 16px;
}

.catalogoBotones{
  display: flex;
  flex-direction: column;
  padding: 70px;
  font-weight: 400;
  font-family: "Montserrat", sans-serif;
  font-size: 13px;
}
.botones{
  display: flex;
  justify-content: start;
}
.indicador{
    color: black;
    margin-top: 10px;
    margin-left: 150px;
    font-size: 15px;
    font-weight: 500;
    font-family: "Montserrat", sans-serif;
    line-height: 60px;
}
.catalogo{
  background-color: #FAFAFA;
  width: 900px;
  height: 420px;
  display: flex;
  align-items: center;
  margin: 100px;
  margin-left: 600px;

}
.informacionCatalogo{
  display: flex;
  justify-content: start;
}

#imgCatalogo{
  width:320px;
  height: 420px;
}
</style>