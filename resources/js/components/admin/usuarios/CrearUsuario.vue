<template>
    <div class="container">

        <div class="w-100 border-bottom">
            <h1>Crear usuario</h1>
        </div>

        <form class="mt-3">
            <div class="mb-3">
                <label class="form-label">Usuario</label>
                <input type="text" v-model="this.usuario" class="form-control" id="usuario" > 
            </div>

            <div class="mb-3">
                <label class="form-label">Email</label>
                <input type="text" v-model="this.email" class="form-control" id="email" > 
            </div>

            <div class="mb-3">
                <label class="form-label">Contraseña</label>
                <input type="text" v-model="this.contraseña" class="form-control" id="contraseña" > 
            </div>

            <button @click="crearUsuario()" type="btn" class="btn"
                style="background-color: rgb(52, 68, 127); color: white;">Crear</button>
        </form>



    </div>

</template>

<script>
import 'jquery';
import 'bootstrap';
import axios from 'axios';

export default {

    data() {
        return {
            usuario: null,
            email: null,
            contraseña: null
        }

    },
    methods: {
        guardarFoto() {
            const file = this.$refs.fotoSlider;
            this.foto = file.files[0]
        },
        crearUsuario() {
            axios.post('/api/crearUsuario', {
                usuario: this.usuario,
                email: this.email,
                contraseña: this.contraseña
            })
                .then(response => {
                    console.log(response)
                })
                .catch(error => {
                    console.error('Error ingresar Admin:', error);
                });
                 
        },
    },


}
</script>

