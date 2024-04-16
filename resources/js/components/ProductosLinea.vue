<template>
  <div>
    <div class="indicador"><p>Inicio > Productos de linea</p></div>
    <div class="productoslinea">
      <div class="productos" >
        <div  v-for="producto in productos" :key="producto.id">
          <div class="producto"> 
            <img :src="'../../img/' + producto.imagen"  alt="imagen">
            <p class="categoria">{{ producto.categoria }}</p>
            <p class="nombre">{{ producto.nombre }}</p>

          </div>
  
        </div>
  
      </div>

    </div>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  data() {
    return {
      productos: []
    };
  },
  mounted() {
    axios.get('/api/productosdelinea')
      .then(response => {
        this.productos = response.data;
      })
      .catch(error => {
        console.error('Error al traer los productos:', error);
      });
  }
}
</script>

<style scoped>
@import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap');


.productoslinea{
  display: flex;
  justify-content: center;
  width: 800px;
  margin-left: 26%;

}
.nombre{
  font-size: 22px;
  color: black;
  font-family: "Montserrat", sans-serif;
  font-weight: 500;
  line-height: 26px;
  margin-left: 10px;
}
.categoria{
  font-size: 14px;
  font-weight: 700;
  font-family: "Montserrat", sans-serif;
  color: #33447F;
  line-height: 17px;
  margin-top: 20px;
  margin-left: 10px;

}


.productos{
  height: 1200px;
  display: grid;
  grid-template-rows: repeat(2, 40%);
  grid-template-columns: repeat(4, 27%);
}

.producto img{
  width: 285px;
  height: 273px;
}
.producto{
  margin-top: 50px;
  width: 288px;
  height: 410px;
  background-color: white;
  color: #33447F;
  border-bottom: 1px solid rgba(147, 147, 147, 0.3);

}

.indicador{
    color: black;
    margin-top: 10px;
    margin-left: 17%;
    font-size: 15px;
    font-weight: 500;
    font-family: "Montserrat", sans-serif;
    line-height: 60px;
}


</style>