<template>
    <div class="container">

        <div class="w-100 border-bottom">
            <h1>Editar Categorias</h1>
        </div>

        <form class="mt-3">
            <div class="mb-3">
                <label class="form-label">Orden</label>
                <input type="text" class="form-control" id="orden" :value="this.categoria.orden"> 
            </div>
            <div class="mb-3">
                <label class="form-label">Imagen (Tamaño recomendado 1400x720)</label>
                <input type="file" ref="fotoCategoria" class="form-control" @change="guardarFoto()">
            </div>
            <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Texto</label>
                <textarea class="summernote" id="editor"></textarea>
            </div>

            <button @click="updateCategoria()" type="btn" class="btn"
                style="background-color: rgb(52, 68, 127); color: white;">Guardar</button>
        </form>



    </div>

</template>

<script>
import 'jquery';
import 'bootstrap';
import 'summernote';
import 'summernote/dist/summernote-bs4.css';
import axios from 'axios';
export default {

    data() {
        return {
            jsonCodigoCategoria: '',
            foto: null,
            orden: '',
            categoria: ''
        }

    },
    computed:{
        idCategoria(){
            return this.$store.getters['getidCategoriaHome'];
        }
    },
    methods: {
        guardarFoto() {
            const file = this.$refs.fotoCategoria;
            this.foto = file.files[0]
        },
        updateCategoria() {
            let formData = new FormData(); 
            formData.append('idCategoria', this.idCategoria);
            formData.append('foto', this.foto);
            formData.append('jsonCodigoCategoria', $('#editor').summernote('code').toString());
            formData.append('orden', $('#orden').val());

            console.log(formData, '??')


            axios.post('/api/updateCategoriaHome', formData, {
                headers: {
                    'Content-Type': 'multipart/form-data'
                }
            })
                .then(response => {
                    this.$store.commit('mostrarComponente', 3);

                })
                .catch(error => {
                    console.error(error);
                });

                
        },
        summerNote() {
            $('#editor').summernote({
                height: 300,
            });
            $('.summernote').summernote();
            var noteBar = $('.note-toolbar');
            noteBar.find('[data-toggle]').each(function () {
                $(this).attr('data-bs-toggle', $(this).attr('data-toggle')).removeAttr('data-toggle');
            });
        },
        obtenerCategoriaInformacion(){
            axios.get(`/api/obtenerCategoriaHome/${this.idCategoria}`)
                .then(response => {
                    this.categoria = response.data;
                    $('#editor').summernote('code', this.categoria.texto);
                })
                .catch(error => {
                    console.error(error);
                });
        }
    },

    mounted() {

        this.summerNote();
        this.obtenerCategoriaInformacion();
        

    }

}
</script>

<style scoped>
.encabezado {
    background-color: rgb(52, 68, 127);
    color: white;
}
</style>
