<template>
  <div>
    <div class="indicador">
       <p>Inicio > Catalogo</p>
     </div>
     <div class="catalogo">
      <div class="informacionCatalogo">
        <img id="imgCatalogo" src="../../img/kotex.jpg" alt="">
      </div>
      <div class="catalogoBotones">
        <p class="catalogoTitle">Catalogo de productos</p>
        <div>
          <p>Descarga nuestro catalogo actualizado con todos nuestros productos en venta</p>     
        </div>
        <div class="botones">
          <button type="button" id="descargar" class="btn">Descargar</button>
          <button type="button" id="visualizar" class="btn">Visualizar</button>

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
  font-weight: bold;
}
.catalogoBotones p{
  font-size: 20px;
}
.catalogoBotones{
  display: flex;
  flex-direction: column;
  padding: 70px;
}
.botones{
  display: flex;
  justify-content: start;
}
.indicador{
    color: black;
    margin-top: 10px;
    margin-left: 100px;
  }
.catalogo{
  background-color: #FAFAFA;
  width: 700px;
  height: 500px;
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
  width: 200px;
  height: 100%;
}
</style>