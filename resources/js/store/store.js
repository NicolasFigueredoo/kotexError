import { createStore } from 'vuex';

export default createStore({
  state: {
    selectedProductId: null,
    selectedAplicacionId: null,
    registros: JSON.parse(localStorage.getItem('registros')) || [],

  },
  mutations: {
 
    agregarRegistro(state, nuevoRegistro ) {
      state.registros.push(nuevoRegistro);
      localStorage.setItem('registros', JSON.stringify(state.registros));
    },

    eliminarRegistro(state, idRegistro ) {
      state.registros = state.registros.filter(registro => registro.idRegistro !== idRegistro);
      localStorage.setItem('registros', JSON.stringify(state.registros));

    },
    setSelectedProductId(state, productId) {
        state.selectedProductId = productId;
    },

      setSelectedAplicacionId(state, aplicacionId) {
        state.selectedAplicacionId = aplicacionId;
      }
  },
  actions: {
    // Aquí defines las acciones para realizar operaciones asíncronas
  },
  getters: {
    getSelectedProductId(state) {
      return state.selectedProductId;
    },

    getSelectedAplicacionId(state) {
      return state.selectedAplicacionId;
    },
    
    obtenerRegistros(state) {
      return state.registros;
    },

    
  
  }
});
