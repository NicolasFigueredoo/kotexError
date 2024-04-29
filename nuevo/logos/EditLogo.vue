<template>
    <div class="container">

        <div class="w-100 border-bottom">
            <h1>Editar Logo</h1>
        </div>

        <form class="mt-3">
            <div class="mb-3">
                <label class="form-label">Texto</label>
                <input type="text" class="form-control" id="nombre" :value="this.logo.nombre"> 
            </div>
        
            <button @click="updateLogo()" type="button" class="btn"
                style="background-color: rgb(52, 68, 127); color: white;">Guardar</button>
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
            logo: []
        }

    },
    computed:{
        idLogo(){
            return this.$store.getters['getIdLogo'];
        }
    },
    methods: {
    
        updateLogo() {
            axios.post('/api/updateLogo', 
            {
                idLogo: this.idLogo,
                nombre: $('#nombre').val()

            })
                .then(response => {
                    this.$store.commit('mostrarComponente', 13);

                })
                .catch(error => {
                    console.error(error);
                });

                
        },
        obtenerLogo(){
            axios.get(`/api/obtenerLogo/${this.idLogo}`)
                .then(response => {
                    this.logo = response.data;
                })
                .catch(error => {
                    console.error(error);
                });
        }
    },

    mounted() {

        this.obtenerLogo();
        

    }

}
</script>

<style scoped>
.encabezado {
    background-color: rgb(52, 68, 127);
    color: white;
}
</style>
