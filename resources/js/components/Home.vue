<template>
  <div class="home2">
    <div class="indicador">
    </div>
    <div class="home">
      <h1>Construyendo juntos el camino hacia la resistencia ¡Cintas rígidas para proyectos sólidos!</h1>
      <p class="titleProductos">Productos de Linea</p>

      
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
  </div>
</template>

<script>
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
        console.log(response.data)
      })
      .catch(error => {
        console.error('Error al traer los productos:', error);
      });
  }
}
</script>

<style scoped>

.nombre{
  font-size: 20px;
  color: black;
  text-align: start;

}
.categoria{
  font-size: 25px;
  font-weight: bold;
  color: #33447F;
  text-align: start;
}

.home2{
  background-image: url('../../img/fondo.jpg');
  background-size: 100%;
  background-repeat: no-repeat;
  background-position: right 100%;
}
.titleProductos{
  font-size: 20px;
  color: #33447F;
  font-weight: bold;
  margin-top: 50px;
}
.productos{
  height: 900px;
  display: grid;
  grid-template-rows: repeat(2, 1fr 1fr);
  grid-template-columns: repeat(4, 400px);
}

.producto img{
  width: 100%;
  height: 250px;
}
.producto{
  margin-top: 50px;
  height: 350px;
  padding: 10px;
  background-color: white;
  width: 280px;
  text-align: start;
  color: #33447F;

}

h1{
  padding-top: 100px;
  font-weight: 700;
  color: #33447F;

}
.home{
  margin-left: 200px;
  width: 1000px;

}

</style>