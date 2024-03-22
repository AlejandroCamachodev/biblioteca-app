<template>
    <div>
      <h2 class="display-4">Autores</h2>
      <ul class="list-group">
        <li v-for="autor in autores" :key="autor.idAutor" class="list-group-item">{{ autor.nombre }}</li>
      </ul>
    </div>
  </template>
  
  <script>
  import axios from "axios";
  
  export default {
    name: "ListaAutores",
    data() {
      return {
        autores: [],
      };
    },
    mounted() {
      axios
        .get("http://localhost:3000/autores")
        .then((response) => {
          this.autores = response.data;
        })
        .catch((error) => {
          console.error("Error fetching autores:", error);
        });
    },
  };
  </script>
  