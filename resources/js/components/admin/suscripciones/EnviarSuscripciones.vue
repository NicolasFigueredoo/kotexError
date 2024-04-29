<template>
    <div class="container">

        <div class="w-100 border-bottom">
            <h1>Enviar mensaje</h1>
        </div>

        <form class="mt-3">
            <div class="mb-3">
                <label class="form-label">Asunto</label>
                <input type="text" class="form-control" id="asunto" > 
            </div>

            <div class="mb-3">
                <label class="form-label">Mensaje</label>
                <textarea type="text" class="form-control" id="texto" style="height: 200px;" > </textarea>
            </div>
        
            <button @click="enviarMensajeSub()" type="button" class="btn"
                style="background-color: rgb(52, 68, 127); color: white;">Enviar</button>
        </form>



    </div>

</template>

<script>
import 'jquery';
import 'bootstrap';
import axios from 'axios';
export default {

    methods: {
        enviarMensajeSub() {
            axios.post('/api/enviarMensajeSub', 
            {
                asunto: $('#asunto').val(),
                texto: $('#texto').val()

            })
                .then(response => {
                    this.$store.commit('mostrarComponente', 9);

                })
                .catch(error => {
                    console.error(error);
                });

                
        },
     
    }

}
</script>

<style scoped>
.encabezado {
    background-color: rgb(52, 68, 127);
    color: white;
}
</style>
