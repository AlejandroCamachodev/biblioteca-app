<template>
    <div>
      <h2 class="display-4">Subcategorias</h2>
      <ul class="list-group">
        <li v-for="subcategoria in subcategorias" :key="subcategoria.idSubcategoria" class="list-group-item">{{ subcategoria.subcategoria }}</li>
      </ul>
    </div>
  </template>
  
  <script>
  import axios from "axios";
  
  export default {
    name: "ListaSubcategorias",
    data() {
      return {
        subcategorias: [],
      };
    },
    mounted() {
      axios
        .get("http://localhost:3000/subcategorias")
        .then((response) => {
          this.subcategorias = response.data;
        })
        .catch((error) => {
          console.error("Error fetching subcategorias:", error);
        });
    },
  };
  </script>
  