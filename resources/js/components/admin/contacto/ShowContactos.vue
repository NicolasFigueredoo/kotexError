<template>
    <div class="container">

        <div class="w-100 border-bottom">
            <h1>Contacto</h1>
        </div>


        <form class="mt-3">
            <div class="mb-3">
                <label class="form-label">Direccion</label>
                <input type="text" class="form-control" id="direccion" :value="this.contacto.direccion">
            </div>

            <div class="row">
                <div class="col-md-6">
                    <label class="form-label">Email</label>
                    <input type="text" class="form-control" id="email" :value="this.contacto.email">
                </div>
                <div class="col-md-6">
                    <label class="form-label">Teléfono</label>
                    <input type="text" class="form-control" id="telefono" :value="this.contacto.telefono">
                </div>
            </div>

            <div class="row mt-2">
                <div class="col-md-6">
                    <label class="form-label">WhatsApp</label>
                    <input type="text" class="form-control" id="whatsapp" :value="this.contacto.whatsapp">
                </div>
                <div class="col-md-6">
                    <label class="form-label">Facebook</label>
                    <input type="text" class="form-control" id="facebook" :value="this.contacto.facebook">
                </div>
            </div>

            <div class="row mt-2">
                <div class="col-md-6">
                    <label class="form-label">Instagram</label>
                    <input type="text" class="form-control" id="instagram" :value="this.contacto.instagram">
                </div>
            </div>

            <div class="w-100 d-flex justify-content-end">

                <button @click="updateContacto()" type="button" class="btn mt-3"
                    style="background-color: rgb(52, 68, 127); color: white;">Actualizar</button>

            </div>

        </form>

    </div>

</template>

<script>
import axios from 'axios';
import 'jquery';
export default {

    data() {
        return {
            contacto: []
        }
    },

    methods: {
        updateContacto() {
            axios.post('/api/updateContacto',
                {
                    direccion: $('#direccion').val(),
                    email: $('#email').val(),
                    telefono: $('#telefono').val(),
                    whatsapp: $('#whatsapp').val(),
                    facebook: $('#facebook').val(),
                    instagram: $('#instagram').val()
                })
                .then(response => {
                    this.$store.commit('mostrarComponente', 11);

                })
                .catch(error => {
                    console.error(error);
                });


        },
        obtenerContacto() {
            axios.get('/api/obtenerContacto')
                .then(response => {
                    console.log(response.data)
                    this.contacto = response.data[0]
                })
                .catch(error => {
                    console.error(error);
                });
        }
    },
    mounted() {
        this.obtenerContacto();
    }
}
</script>


<style scoped>
.encabezado {
    background-color: rgb(52, 68, 127);
    color: white;
}
</style>
