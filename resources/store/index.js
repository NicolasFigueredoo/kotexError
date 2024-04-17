// store/index.js

import { createStore } from 'vuex';

const store = createStore({
  state: {
    productos: [],
    idProducto: null
  },
  mutations: {
    setProductoId(state, id) {
        state.productoId = id;
    },
    
  },
  getters: {
    productoId: (state) => state.productoId,
  },
 
});

export default store;
