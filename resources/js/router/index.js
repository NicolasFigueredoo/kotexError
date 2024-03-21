import { createRouter, createWebHistory } from 'vue-router';
import Nosotros from '../components/Nosotros.vue';
import Catalogo from '../components/Catalogo.vue';
import ProductosLinea from '../components/ProductosLinea.vue';
import Home from '../components/Home.vue';


const routes = [
    {
        path: '/',
        component: Home
    },
    {
        path: '/home',
        component: Home
    },
    {
        path: '/nosotros',
        component: Nosotros
    },
    {
        path: '/productolinea',
        component: ProductosLinea
    },
    {
        path: '/catalogo',
        component: Catalogo
    }
];

const router = createRouter({
    history: createWebHistory(),
    routes
});

export default router;
