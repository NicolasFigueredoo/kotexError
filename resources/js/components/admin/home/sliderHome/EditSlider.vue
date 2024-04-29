<template>
    <div class="container">

        <div class="w-100 border-bottom">
            <h1>Editar Slider</h1>
        </div>

        <form class="mt-3">
            <div class="mb-3">
                <label class="form-label">Orden</label>
                <input type="text" class="form-control" id="orden" :value="this.slider.orden"> 
            </div>
            <div class="mb-3">
                <label class="form-label">Imagen (Tamaño recomendado 1400x720)</label>
                <input type="file" ref="fotoSlider" class="form-control" @change="guardarFoto()">
            </div>
            <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Texto</label>
                <textarea class="summernote" id="editor"></textarea>
            </div>

            <button @click="updateSlider()" type="btn" class="btn"
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
            jsonCodigoSlider: '',
            foto: null,
            orden: null,
            slider: ''
        }

    },
    computed:{
        idSlider(){
            return this.$store.getters['getidSliderHome'];
        }
    },
    methods: {
        guardarFoto() {
            const file = this.$refs.fotoSlider;
            this.foto = file.files[0]
        },
        updateSlider() {
            axios.post('/api/updateSlider', 
            {
                idSlider: this.idSlider,
                foto: this.foto,
                jsonCodigoSlider: $('#editor').summernote('code').toString(),
                orden: $('#orden').val()
            }
            , {
                headers: {
                    'Content-Type': 'multipart/form-data'
                }
            })
                .then(response => {
                    this.$store.commit('mostrarComponente', 1);

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
        obtenerSliderInformacion(){
            axios.get(`/api/obtenerSliderHome/${this.idSlider}`)
                .then(response => {
                    this.slider = response.data;
                    $('#editor').summernote('code', this.slider.texto);
                })
                .catch(error => {
                    console.error(error);
                });
        }
    },

    mounted() {

        this.summerNote();
        this.obtenerSliderInformacion();
        

    }

}
</script>

<style scoped>
.encabezado {
    background-color: rgb(52, 68, 127);
    color: white;
}
</style>
