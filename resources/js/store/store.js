import { createStore } from 'vuex';

export default createStore({
  state: {
    selectedProductId: null,
    selectedAplicacionId: null,
    registros: JSON.parse(localStorage.getItem('registros')) || [],
    mostrarComponente: 0,
    idSliderHome: null,
    idCategoriaHome: null

  },
  mutations: {

    setCategoriaIdComponent(state,idCategoriaHome){
      state.idCategoriaHome = idCategoriaHome
    },
    setSliderIdComponent(state,idSliderHome){
      state.idSliderHome = idSliderHome
    },
    mostrarComponente(state,idComponente){
      state.mostrarComponente = idComponente
    },
 
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
    getidCategoriaHome(state) {
      return state.idCategoriaHome;
    },
    getidSliderHome(state) {
      return state.idSliderHome;
    },
    getMostrarComponente(state) {
      return state.mostrarComponente;
    },
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
