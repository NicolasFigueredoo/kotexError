<template>
    <div class="productosLinea-view">
      <div class="indicador">
        <p v-if="nombreProducto">{{`Inicio > Productos Especiales > ${nombreProducto}`}}</p>
        <p v-else>Inicio > Productos Especiales</p>
      </div>

      <productosEspeciales v-if="mostrarComponente === 0" @ver-producto="mostrarProducto"/>
      <InformacionProducto v-else :id-producto="idProducto" />
    </div>
  </template>
  
  <script>
  import productosEspeciales from "@/components/ProductosEspeciales.vue";
  import InformacionProducto from "@/components/InformacionProducto.vue";
  import { computed } from 'vue';
  import { useStore } from 'vuex';
  
  export default {
  components: {
    productosEspeciales,
    InformacionProducto
  },

  data() {
    return {
      mostrarComponente: 0,
      idProducto: null,
      nombreProducto: '',
    };
  },

  methods: {
    mostrarProducto(datosProducto) {
      this.mostrarComponente = datosProducto[0];
      this.idProducto = datosProducto[1];
      this.nombreProducto = datosProducto[2];
    }
  },

  created() {
    const store = useStore();
    const selectedProductId = computed(() => store.getters['getSelectedProductId']);
    

    if (selectedProductId.value !== null) {
      this.mostrarComponente = 1;
      this.idProducto = selectedProductId.value;
    }
  }
};
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
  
  