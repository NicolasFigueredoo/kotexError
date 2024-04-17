<template>
    <div class="productosLinea-view">
      <div class="indicador">
        <p v-if="nombreProducto">{{`Inicio > Productos de línea > ${nombreProducto}`}}</p>
        <p v-else>Inicio > Productos de línea</p>
      </div>

      <ProductosLinea v-if="variable === 0" @ver-producto="mostrarProducto"/>
      <InformacionProducto v-else :id-producto="idProducto" />
    </div>
  </template>
  
  <script>
  import ProductosLinea from "@/components/ProductosLinea.vue";
  import InformacionProducto from "@/components/InformacionProducto.vue";

  export default {
  components: {
    ProductosLinea,
    InformacionProducto
  },
  data() {
    return {
      variable: 0,
      idProducto: null,
      nombreProducto: '',
      id: null

    }
  },

 
  methods: {
  
    mostrarProducto(datosProducto) {
      this.variable = datosProducto[0];
      this.idProducto = datosProducto[1];
      this.nombreProducto = datosProducto[2];
    }
  }
}
  
  
  </script>

  <style>
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
  
  