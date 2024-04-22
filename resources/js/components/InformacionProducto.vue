<template>
    <div>
        <div class="informacionProducto">
            <div class="imgMinis">
                <img src="../../img/kotexfooter.png" alt="" />
                <img src="../../img/kotexfooter.png" alt="" />
            </div>
            <div class="imagenes">
                <img class="imgP" src="../../img/kotexfooter.png" alt="" />
            </div>
            <div class="textos">
                <div class="categoria">
                    <p>Productos de linea</p>
                </div>
                <div class="nombre">
                    <p>{{ nombreProducto }}</p>
                </div>
                <div class="material">
                    <span>Material</span>
                    <p>Poliester, tipo, crochet</p>
                </div>
                <div class="tipo">
                    <span>Tipo</span>

                    <p>Crochet</p>
                </div>
                <div class="aplicaciones">
                    <p>Aplicaciones</p>
                    <div class="botonesAplicacion">
                        <div
                            v-for="aplicacion in aplicaciones"
                            :key="aplicacion.id"
                        >
                            <div>
                                <button
                                    type="button"
                                    class="btn btn-primary botonAplicacion"
                                >
                                    {{ aplicacion }}
                                </button>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="medidas">
                    <p>Medidas</p>
                    <div class="botonesMedidas">
                        <div v-for="medida in medidas" :key="medida.id">
                            <div>
                                <button
                                    type="button"
                                    class="btn btn-primary botonMedida"
                                >
                                    {{ medida }}
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="tabla">
            <p>Presupuesto</p>
            <table class="table">
                <thead style="height: 40px">
                    <tr>
                        <th scope="col" class="encabezado">Categoria</th>
                        <th scope="col" class="encabezado">Nombre</th>
                        <th scope="col" class="encabezado">Color</th>
                        <th scope="col" class="encabezado">Medida</th>
                        <th scope="col" class="encabezado">Unidad de Venta</th>
                        <th scope="col" class="encabezado">Cant.</th>
                        <th class="encabezado"></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="rowT" style="padding-left: 0px;">
                            <select v-model="categoriaSeleccionada" class="form-select selects" id="categoria" @change="obtenerProductosNombres">
                                <option selected>Seleccione</option>
                                <option v-for="categoria in categorias" :key="categoria.id" :value="categoria.nombre">{{ categoria.nombre }}</option>

                            </select>
                        </td>
                        <td class="rowT">
                            <select v-model="productoSeleccionado" class="form-select selects" id="nombre" @change="obtenerColorProducto">
                              <option selected>Seleccione</option>
                              <option v-for="producto in productosC" :key="producto.id" :value="producto.nombre">{{ producto.nombre }}</option>
                            </select>
                        </td>
                        <td class="rowT">
                            <select v-model="colorSeleccionado" class="form-select selects" id="color" @change="obtenerMedidas">
                              <option selected>Seleccione</option>
                              <option v-for="productoColor in coloresS" :key="productoColor.id" :value="productoColor">{{ productoColor }}</option>

                            </select>
                        </td>
                        <td class="rowT">
                            <select v-model="medidaSeleccionada" class="form-select selects" id="medida" @change="obtenerUnidadVenta">
                                <option selected>Seleccione..</option>
                                <option v-for="medida in medidasS" :key="medida.id" :value="medida">{{ medida }}</option>

                            </select>
                        </td>
                        <td class="rowT">
                            <select v-model="unidadSeleccionada" class="form-select selects" id="unidadventa">
                                <option selected>Seleccione..</option>
                                <option v-for="unidad in unidadesS" :key="unidad.id" :value="unidad">{{ unidad }}</option>

                            </select>
                        </td>
                        <td  style="padding-right: 0px">
                          <input v-model="cantidadSeleccionada" type="number" class="form-control inputCantidad" placeholder="0" aria-label="Cantidad" aria-describedby="basic-addon2" min="0">
                        </td>

                        <td id="botonAgregar" style="padding-right: 0px; padding-left: 0px">
                            <button id="agregar" type="button" style="border-radius: 0%" class="btn btn-primary" @click="guardarProducto">
                                Agregar
                            </button>
                        </td>
                    </tr>
                    <tr>
                        <td class="rowT" style="padding-left: 0px;">
                        
                        </td>
                        <td class="rowT">
                          
                        </td>
                        <td class="rowT">
                        
                        </td>
                        <td class="rowT">
                          
                        </td>
                        <td class="rowT">
                          
                        </td>
                        <td style="padding-right: 0px">
                          
                        </td>

                        <td id="botonAgregar" style="padding-right: 0px; padding-left: 0px">
                            <button id="agregar" type="button" style="border-radius: 0%" class="btn btn-primary">
                              <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
                                <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5m2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5m3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0z"/>
                                <path d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4zM2.5 3h11V2h-11z"/>
                              </svg>
                            </button>
                        </td>
                    </tr>
                </tbody>
            </table>
            <div class="botones">

                <button
                    id="agregarProducto"
                    type="button"
                    style="border-radius: 0%"
                    class="btn btn-primary"
                >
                    + AGREGAR MAS PRODUCTOS
                </button>
                
                <button
                    id="verPresupuesto"
                    type="button"
                    style="border-radius: 0%"
                    class="btn btn-primary"
                >
                    VER PRESUPUESTO
                </button>
            </div>
        </div>

        <div class="productosRelacionados">
            <p class="productosR">Productos Relacionados</p>
            <div>
                <div class="productos">
                    <div
                        v-for="producto in productos.slice(0, 4)"
                        :key="producto.id"
                    >
                        <div class="producto">
                            <img
                                :src="'../../img/' + producto.imagen"
                                alt="imagen"
                            />
                            <p class="categoria">{{ producto.categoria }}</p>
                            <p class="nombre">{{ producto.nombre }}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <h1>{{ idProducto }}</h1>
    </div>
</template>

<script>
import AOS from "aos";
import axios from "axios";

export default {
    props: {
        idProducto: {
            type: Number,
        },
    },
    data() {
        return {
            productos: [],
            medidas: [],
            aplicaciones: [],
            nombreProducto: "",
            categorias: [],
            productosC:[],
            medidasS: [],
            coloresS: [],
            unidadesS: [],
            registros: [],
            categoriaSeleccionada: null,
            productoSeleccionado: null,
            colorSeleccionado: null,
            medidaSeleccionada: null,
            unidadSeleccionada: null,
            cantidadSeleccionada: null,
            settings: {
                itemsToShow: 1,
                snapAlign: "center",
            },
        };
    },
    methods: {
        obtenerInformacionProducto() {
            axios
                .get(`/api/obtenerInformacionProducto/${this.idProducto}`)
                .then((response) => {
                    this.medidas = response.data.medidas;
                    this.aplicaciones = response.data.aplicaciones;
                    this.nombreProducto = response.data.nombre_producto;
                })
                .catch((error) => {
                    console.error(
                        "Error al obtener informacion producto:",
                        error
                    );
                });
        },

        obtenerCategorias(){
          axios.get(`/api/obtenerCategorias`)
                .then((response) => {
                    this.categorias = response.data
                })
                .catch((error) => {
                    console.error(
                        "Error al obtener categorias",
                        error
                    );
                });
        },

        obtenerProductosNombres() {
            axios
                .get(`/api/obtenerNombresProducto/${this.categoriaSeleccionada}`)
                .then((response) => {
                  console.log(response.data)
                  this.productosC = response.data;
            
                })
                .catch((error) => {
                    console.error(
                        "Error al obtener informacion nombre producto:",
                        error
                    );
                });
        },

        obtenerColorProducto(){
          axios.get(`/api/obtenerColorProducto/${this.productoSeleccionado}`)
                .then((response) => {
                    this.coloresS = response.data
                })
                .catch((error) => {
                    console.error(
                        "Error al obtener medidas",
                        error
                    );
                });
        },

        obtenerMedidas(){
          axios.get(`/api/obtenerMedidasProducto`, {
            params: {
              productoId: this.productoSeleccionado,
              color: this.colorSeleccionado
            }
          })
                .then((response) => {
                    this.medidasS = response.data
                })
                .catch((error) => {
                    console.error(
                        "Error al obtener medidas",
                        error
                    );
                });
        },

        obtenerUnidadVenta(){
          axios.get(`/api/obtenerUnidadVenta`, {
            params: {
              productoId: this.productoSeleccionado,
              color: this.colorSeleccionado,
              medida: this.medidaSeleccionada
            }
          })
                .then((response) => {
                    this.unidadesS = response.data
                })
                .catch((error) => {
                    console.error(
                        "Error al obtener unidad venta",
                        error
                    );
                });
        },

        guardarProducto(){

          const nuevoRegistro = {
            categoria: this.categoriaSeleccionada,
            nombre: this.productoSeleccionado,
            color: this.colorSeleccionado,
            medida: this.medidaSeleccionada,
            unidadVenta: this.unidadSeleccionada,
            cantidad: this.cantidadSeleccionada
          };


          this.registros.push(nuevoRegistro);


          const jsonData = JSON.stringify(this.registros);
          console.log(jsonData)



        }
   
    },
    mounted() {
        AOS.init();
        this.obtenerCategorias();
        this.obtenerInformacionProducto();
    },
};
</script>

<style scoped>
.informacionProducto {
    display: flex;
    margin-left: 17%;
}
.textos {
    width: 600px;
    margin-left: 20px;
}
.categoria {
    margin-left: 0px;
}
.categoria p {
    color: var(--azul, #33447f);
    font-family: "Montserrat";
    font-size: 18px;
    font-style: normal;
    font-weight: 700;
    line-height: normal;
    text-transform: uppercase;
}

.nombre p {
    color: #000;
    font-family: "Montserrat";
    font-size: 35px;
    font-style: normal;
    font-weight: 600;
    line-height: normal;
    margin-left: 0px;
}

.material span {
    color: #000;
    font-family: "Montserrat";
    font-size: 15px;
    font-style: normal;
    font-weight: 700;
    line-height: normal;
}
.material p {
    color: #000;
    font-family: "Montserrat";
    font-size: 15px;
    font-style: normal;
    font-weight: 300;
    line-height: normal;
}

.tipo span {
    color: #000;
    font-family: "Montserrat";
    font-size: 15px;
    font-style: normal;
    font-weight: 700;
    line-height: normal;
}
.tipo p {
    color: #000;
    font-family: "Montserrat";
    font-size: 15px;
    font-style: normal;
    font-weight: 300;
    line-height: normal;
}

.botonesAplicacion {
    width: 100%;
    display: flex;
    flex-wrap: wrap;
}

.aplicaciones {
    margin-top: 20px;
}
.aplicaciones p {
    color: #000;
    font-family: "Montserrat";
    font-size: 15px;
    font-style: normal;
    font-weight: 700;
    line-height: 0px;
}

.botonAplicacion {
    height: 30px;
    font-size: 15px;
    border: none;
    background: var(--Gris, #9d9ea2);
    margin-top: 8px;
    margin-right: 5px;
    font-family: "Montserrat";
    font-weight: 400;
    flex: 1 0 auto;
    line-height: 18.29px;
}

.botonAplicacion:hover {
    height: 30px;
    font-size: 15px;
    border: none;
    background: var(--Gris, #9d9ea2);
    margin-top: 8px;
    margin-right: 5px;
    font-family: "Montserrat";
    font-weight: 400;
    flex: 1 0 auto;
    line-height: 18.29px;
}

.medidas {
    margin-top: 30px;
}
.medidas p {
    color: #000;
    font-family: Montserrat;
    font-size: 15px;
    font-style: normal;
    font-weight: 700;
    line-height: 0px;
}
.botonesMedidas {
    width: 100%;
    display: flex;
    flex-wrap: wrap;
}
.botonMedida {
    height: 30px;
    font-size: 15px;
    border: none;
    background: var(--Gris, rgba(51, 68, 127, 1));
    margin-top: 8px;
    margin-right: 5px;
    font-family: "Montserrat";
    font-weight: 400;
    line-height: 18.29px;
    flex: 1 0 auto;
}

.botonMedida:hover {
    height: 30px;
    font-size: 15px;
    border: none;
    background: var(--Gris, rgba(51, 68, 127, 1));
    margin-top: 8px;
    margin-right: 5px;
    font-family: "Montserrat";
    font-weight: 400;
    line-height: 18.29px;
    flex: 1 0 auto;
}

.tabla {
    margin-top: 100px;
    margin-left: 17%;
    width: 66%;
}
.tabla p {
    font-family: "Montserrat";
    font-size: 28px;
    font-weight: 500;
    line-height: 34.13px;
    text-align: left;
}
#cantidad {
    width: 60px;
}
.selects {
    border-radius: 0%;
    background-color: rgba(245, 245, 245, 1);
    border: 1px solid rgba(204, 204, 204, 1);
}
.encabezado {
    background: rgba(51, 68, 127, 1);
    color: white;
    font-family: "Montserrat";
    font-weight: 500;
    font-size: 15px;
}
#agregar {
    border: 1px solid rgba(51, 68, 127, 1);
    background-color: white;
    color: rgba(51, 68, 127, 1);
}

#botonAgregar {
    text-align: right;
}

#agregarProducto {
    border: 1px solid rgba(51, 68, 127, 1);
    color: rgba(51, 68, 127, 1);
    background-color: white;
    width: 275px;
    height: 49px;
    font-family: "Montserrat";
    font-size: 15px;
    font-weight: 500;
    margin-top: 20px;
}

.botones {
    display: flex;
    justify-content: space-between;
}
#verPresupuesto {
    border: none;
    color: white;
    background-color: rgba(51, 68, 127, 1);
    width: 275px;
    height: 49px;
    font-family: "Montserrat";
    font-size: 15px;
    font-weight: 400;
    margin-top: 20px;
}

.producto {
    width: 305px;
    height: 500px;
    background-color: white;
    color: #33447f;
    border-bottom: 1px solid rgba(147, 147, 147, 0.3);
    margin-right: 20px;
}

.producto img {
    width: 288px;
    height: 300px;
}

.productos {
    display: flex;
    margin-left: 0px;
}

.productosRelacionados {
    margin-left: 17%;
    margin-top: 80px;
}

.productosR {
    color: #000;
    font-family: Montserrat;
    font-size: 28px;
    font-style: normal;
    font-weight: 500;
    line-height: normal;
}
.nombre {
    font-size: 22px;
    color: black;
    font-family: "Montserrat", sans-serif;
    font-weight: 500;
    line-height: 26px;
    text-align: left;
}
.categoria {
    font-size: 14px;
    font-weight: 700;
    font-family: "Montserrat", sans-serif;
    color: #33447f;
    line-height: 17px;
    margin-top: 20px;
    text-align: left;
}

.imgP {
    width: 496px;
    height: 496px;
    flex-shrink: 0;
}
.imgMinis {
    display: flex;
    flex-direction: column;
}
.imgMinis img {
    width: 80px;
    height: 80px;
    padding-right: 8px;
    padding-bottom: 10px;
}

.inputCantidad{
  border-radius: 0%;
  background-color: rgba(245, 245, 245, 1);
  border: 1px solid rgba(204, 204, 204, 1);
  height: 38px;
  width: 60px;
}
</style>
