<template>
  <div>
    <div class="indicador">
      <p>Inicio > Nosotros</p>
    </div>

   
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


.productoslinea{
  display: flex;
  justify-content: center;
}
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

.indicador{
    color: black;
    margin-top: 10px;
}
.indicador p{
    margin-bottom: 100px;
    margin-left: 100px;
}

</style>