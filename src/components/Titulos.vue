<template>
  <div>
    <h2 class="display-4">Títulos</h2>
    <ul class="list-group">
      <li
        v-for="titulo in titulos"
        :key="titulo.idTitulo"
        class="list-group-item"
      >
        {{ titulo.titulo }}
      </li>
    </ul>
  </div>
</template>

<script>
import axios from "axios";

export default {
  name: "ListaTitulos",
  data() {
    return {
      titulos: [],
    };
  },
  mounted() {
    axios
      .get("http://localhost:3000/titulos")
      .then((response) => {
        this.titulos = response.data;
      })
      .catch((error) => {
        console.error("Error fetching titulos:", error);
      });
  },
};
</script>
