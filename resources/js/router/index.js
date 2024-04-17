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
        name: 'Home',
        component: Home
    },
    {
        path: '/nosotros',
        name: 'Nosotros',
        component: Nosotros
    },  
    {
        path: '/productosdelinea/:id',
        name: 'ProductosLineaId',
        component: ProductosLinea
    },
   
    {
        path: '/productosdelinea',
        name: 'ProductosLinea',
        component: ProductosLinea
    },
    {
        path: '/catalogo',
        name: 'Catalogo',
        component: Catalogo
    },
    {
        path: '/aplicaciones',
        name: 'Aplicaciones',
        component: Aplicaciones
    },
    {
        path: '/presupuesto',
        name: 'Presupuesto',
        component: Presupuesto
    }
    ,
    {
        path: '/contacto',
        name: 'Contacto',
        component: Contacto
    }
];

const router = createRouter({
    history: createWebHistory(),
    routes
});

export default router;
