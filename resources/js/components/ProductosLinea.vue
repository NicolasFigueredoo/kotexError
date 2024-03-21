<template>
  <div>
    <div class="indicador">
      <p>Inicio > Nosotros</p>
    </div>
    <div class="productoslinea">
      <div class="productos" >
        <div class="producto" v-for="producto in productos" :key="producto.id">
          <img :src="'../../img/' + producto.imagen"  alt="imagen">
          <p class="categoria">{{ producto.categoria }}</p>
          <p class="nombre">{{ producto.nombre }}</p>
  
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
}
.categoria{
  margin-top: 300px;
  font-size: 25px;
  font-weight: bold;
  color: #33447F;
}

.productos{
  margin-top: 100px;
  margin-left: 50px;
  width: 95%;
  height: 1000px;
  display: grid;
  grid-template-rows: repeat(2, 1fr 1fr);
  grid-template-columns: repeat(4, 400px);
  gap: 50px;
}
.producto{
  width: 400px;
  height: 400px;
  text-align: start;
}

.indicador{
    color: black;
    margin-top: 10px;
}
.indicador p{
    margin-bottom: 100px;
    margin-left: 100px;
}

</style>