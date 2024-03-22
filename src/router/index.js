import { createRouter, createWebHistory } from 'vue-router'; 
import Autores from '../components/Autores.vue';
import Categorias from '../components/Categorias.vue'; 
import Subcategorias from '../components/Subcategorias.vue'; 
import Titulos from '../components/Titulos.vue'; 

const routes = [
  {
    path: '/autores',
    name: 'Autores',
    component: Autores
  },
  {
    path: '/categorias', 
    name: 'Categorias',
    component: Categorias
  },
  {
    path: '/subcategorias', 
    name: 'Subcategorias',
    component: Subcategorias
  },
  {
    path: '/titulos', 
    name: 'Titulos',
    component: Titulos
  }
];

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
});

export default router;
