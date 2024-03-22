<template>
  <div id="app">
    <!-- Navbar de Bootstrap -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <div class="container">
        <router-link class="navbar-brand" to="/">Home</router-link>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav">
            <li class="nav-item">
              <router-link class="nav-link" to="/autores">Autores</router-link>
            </li>
            <li class="nav-item">
              <router-link class="nav-link" to="/categorias">Categorías</router-link>
            </li>
            <li class="nav-item">
              <router-link class="nav-link" to="/subcategorias">Subcategorías</router-link>
            </li>
            <li class="nav-item">
              <router-link class="nav-link" to="/titulos">Títulos</router-link>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Usamos router-view para mostrar las vistas del enrutador -->
    <router-view /> 
  </div>
</template>

<script>
export default {
  name: 'App'
};
</script>
