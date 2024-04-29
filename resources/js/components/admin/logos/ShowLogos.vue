<template>
    <div class="container">

        <div class="w-100 border-bottom">
            <h1>Logos</h1>
        </div>

        <form class="mt-3">
          

            <div class="row">
                <div class="col-md-6">
                    <label class="form-label">Logo Barra</label>
                    <input type="file" class="form-control" id="email" >
                </div>
                <div class="col-md-6">
                    <label class="form-label">Logo Footer</label>
                    <input type="file" class="form-control" id="telefono" >                </div>
            </div>
            <div class="row mt-3">
                <div class="col-md-6">
                    <img class="w-25 vh-25" src="../../../../img/kotex.jpg" alt="">

                </div>

                <div class="col-md-6">
                    <img class="w-25 vh-25" src="../../../../img/kotex.jpg" alt="">

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

export default {

    data(){
        return{
            logos:[]
        }
    },
    
    methods:{
  
    obtenerLogo(){
        axios.get('/api/obtenerLogos')
                .then(response => {
                    this.logos = response.data
                })
                .catch(error => {
                    console.error(error);
                });
    }
    },
    mounted(){
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
