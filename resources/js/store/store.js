import { createStore } from 'vuex';

export default createStore({
  state: {
    selectedProductId: null
  },
  mutations: {
    setSelectedProductId(state, productId) {
        state.selectedProductId = productId;
      }
  },
  actions: {
    // Aquí defines las acciones para realizar operaciones asíncronas
  },
  getters: {
    getSelectedProductId(state) {
      return state.selectedProductId;
      
    }
  }
});
