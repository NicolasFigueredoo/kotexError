<template>
  <div>
    <div class="productoslinea">
      <div class="productos" >
        <div  v-for="producto in productos" :key="producto.id">
          <div class="producto"> 
            <img :src="'../../img/' + producto.imagen"  alt="imagen" @click="verProducto(producto.id, producto.nombre)">
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
      productos: [],
      mostrarProducto: 1
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
  },
  methods: {
    verProducto(id,nombre) {
      this.$emit('ver-producto', [this.mostrarProducto,id,nombre]);
    }
  }
}
</script>

<style scoped>
@import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap');


.productoslinea {
  display: flex;
  justify-content: center;
  width: 800px;
  margin-left: 26%;
  margin-right: auto;
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


.productos {
  /* height: 1200px; Quitar la altura fija */
  display: grid;
  grid-template-rows: auto; /* Usar tamaño de fila automático */
  grid-template-columns: repeat(4, 27%);
}

.producto img{
  width: 285px;
  height: 273px;
  cursor: pointer;

}
.producto{
  margin-top: 50px;
  width: 288px;
  height: 410px;
  background-color: white;
  color: #33447F;
  border-bottom: 1px solid rgba(147, 147, 147, 0.3);

}

</style>