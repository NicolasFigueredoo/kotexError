import { createRouter, createWebHistory } from 'vue-router';
import Nosotros from '../views/nosotros/NosotrosView.vue';
import Catalogo from '../views/catalogo/CatalogoView.vue';
import ProductosLinea from '../views/productosDeLinea/ProductosLineaView.vue';
import Presupuesto from '../views/presupuesto/PresupuestoView.vue';
import Contacto from '../views/contacto/ContactoView.vue';

import Aplicaciones from '../components/Aplicaciones.vue';

import Home from '../views/home/HomeView.vue';


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
    },
    {
        path: '/aplicaciones',
        component: Aplicaciones
    },
    {
        path: '/presupuesto',
        component: Presupuesto
    }
    ,
    {
        path: '/contacto',
        component: Contacto
    }
];

const router = createRouter({
    history: createWebHistory(),
    routes
});

export default router;
