<template>
    <div>
      <h2 class="display-4">Categorias</h2>
      <ul class="list-group">
        <li v-for="categoria in categorias" :key="categoria.idCategoria" class="list-group-item">{{ categoria.categoria }}</li>
      </ul>
    </div>
  </template>
  
  <script>
  import axios from "axios";
  
  export default {
    name: "ListaCategorias",
    data() {
      return {
        categorias: [],
      };
    },
    mounted() {
      axios
        .get("http://localhost:3000/categorias")
        .then((response) => {
          this.categorias = response.data;
        })
        .catch((error) => {
          console.error("Error fetching categorias:", error);
        });
    },
  };
  </script>
  