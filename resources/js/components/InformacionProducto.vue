<template>
    <div>
        <div class="informacionProducto">
          <div class="imgMinis">
            <img  src="../../img/1.jpg" alt="">
            <img  src="../../img/1.jpg" alt="">

          </div>
            <div class="imagenes">
              <img class="imgP" src="../../img/1.jpg" alt="">
            </div>
            <div class="textos">
              <div class="categoria">
                <p>
                  Productos de linea
                </p>
              </div>
              <div class="nombre">
                <p>Elasticos de embutir</p>
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
                <div>
                  <button type="button" class="btn btn-primary">Ropa interior masculina</button>
                  <button type="button" class="btn btn-primary">Trajes de baño</button>
                  <button type="button" class="btn btn-primary">Ropa de Niños</button>
                  <button type="button" class="btn btn-primary">Uniformes escolares</button>
                  <button type="button" class="btn btn-primary">Sábanas ajustables</button>
                  <button type="button" class="btn btn-primary">Calzas</button>
                  <button type="button" class="btn btn-primary">Ropa futura mamá</button>

                </div>
              </div>

              <div class="medidas">
                <p>Medidas</p>

                <div>
                  <button type="button" class="btn btn-primary">5 mm</button>
                  <button type="button" class="btn btn-primary">20 mm</button>
                  <button type="button" class="btn btn-primary">5 mm</button>
                  <button type="button" class="btn btn-primary">5 mm</button>
                  <button type="button" class="btn btn-primary">5 mm</button>
                  <button type="button" class="btn btn-primary">22 mm</button>
                  <button type="button" class="btn btn-primary">5 mm</button>
                  <button type="button" class="btn btn-primary">43 mm</button>
                  <button type="button" class="btn btn-primary">5 mm</button>
                  <button type="button" class="btn btn-primary">5 mm</button>
                  <button type="button" class="btn btn-primary">34 mm</button>
                  <button type="button" class="btn btn-primary">5 mm</button>
                  <button type="button" class="btn btn-primary">32 mm</button>
                  <button type="button" class="btn btn-primary">5 mm</button>
                  <button type="button" class="btn btn-primary">1 mm</button>

                </div>
              </div>
              

            </div>
            
        </div>


        <div class="tabla">
        <table class="table">
          <thead style="height: 40px;" >
            <tr>
              <th scope="col" class="encabezado">Cód.</th>
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
            <td class="rowT" scope="row">
              <select  class="form-select selects" id="codigo">
                <option selected>123</option>
                <option value="1">One</option>
                <option value="2">Two</option>
                <option value="3">Three</option>
              </select>            </td>
            <td class="rowT">
              <select  class="form-select selects" id="categoria">
                <option selected>Productos de linea</option>
                <option value="1">One</option>
                <option value="2">Two</option>
                <option value="3">Three</option>
              </select>
            </td>
            <td class="rowT">
              <select  class="form-select selects" id="nombre">
                <option selected>Elásticos de embutir</option>
                <option value="1">One</option>
                <option value="2">Two</option>
                <option value="3">Three</option>
              </select>
            </td>
            <td class="rowT">
              <select  class="form-select selects" id="color">
                <option selected>Blanco</option>
                <option value="1">One</option>
                <option value="2">Two</option>
                <option value="3">Three</option>
              </select>            </td>
            <td class="rowT">
              <select  class="form-select selects" id="medida">
                <option selected>5mm</option>
                <option value="1">One</option>
                <option value="2">Two</option>
                <option value="3">Three</option>
              </select>
            </td>
            <td class="rowT" >
              <select  class="form-select selects" id="unidadventa">
                <option selected>Rollo</option>
                <option value="1">One</option>
                <option value="2">Two</option>
                <option value="3">Three</option>
              </select>
            </td>

            <td style="padding-right: 0px;" >
              <select  class="form-select selects" id="cantidad">
                <option selected>1</option>
                <option value="1">One</option>
                <option value="2">Two</option>
                <option value="3">Three</option>
              </select>
            </td>

            <td id="botonAgregar" style="padding-right: 0px; padding-left: 0px;">
              <button id="agregar" type="button" style="border-radius: 0%;" class="btn btn-primary">
                Agregar
              </button>
            </td>


          </tr>
        </tbody>
      </table>
      <div class="botones">
        <button id="agregarProducto" type="button" style="border-radius: 0%;" class="btn btn-primary">+ AGREGAR MAS PRODUCTOS</button>
        <button id="verPresupuesto" type="button" style="border-radius: 0%;" class="btn btn-primary">VER PRESUPUESTO</button>

      </div>
      </div>

      <div class="productosRelacionados">
      <p class="productosR">Productos Relacionados</p>
      <div>
        <div class="productos">
          <div v-for="producto in productos.slice(0, 4)" :key="producto.id">
              <div class="producto"> 
                <img :src="'../../img/' + producto.imagen" alt="imagen">
                <p class="categoria">{{ producto.categoria }}</p>
                <p class="nombre">{{ producto.nombre }}</p>
              </div>
              
            </div>
          </div>

        </div>
      </div>

        <p>{{idProducto}}</p>
    </div>
    
  </template>
  
  <script>
  import AOS from 'aos';
  import axios from 'axios';
  import 'lightbox2/dist/css/lightbox.min.css'; 
  import 'lightbox2/dist/js/lightbox.min';
  export default {
  props: {
    idProducto: {
      type: Number
    }
  },
  data() {
    return {
      productos: [],
      settings: {
        itemsToShow: 1,
        snapAlign: 'center'
      }
    };
  },
  mounted() {


    AOS.init();
    axios.get('/api/productosdelinea')
      .then(response => {
        this.productos = response.data;
      })
      .catch(error => {
        console.error('Error al traer los productos:', error);
      });

    console.log('Dato recibido en ComponenteB:', this.idProducto);
  }
};
  </script>

  <style scoped>
  .informacionProducto{
    display: flex;
    margin-left: 17%;
  }
  .textos{
    width: 600px;
    margin-left: 20px;
  }
  .categoria{
    margin-left: 0px;

  }
  .categoria p{
    color: var(--azul, #33447F);
    font-family: "Montserrat";
    font-size: 18px;
    font-style: normal;
    font-weight: 700;
    line-height: normal;
    text-transform: uppercase;
  }

  .nombre p{
    color: #000;
    font-family: "Montserrat";
    font-size: 35px;
    font-style: normal;
    font-weight: 600;
    line-height: normal;
    margin-left: 0px;

  }

  .material span{
    color: #000;
    font-family: "Montserrat";
    font-size: 15px;
    font-style: normal;
    font-weight: 700;
    line-height: normal;
  }
  .material p{
    color: #000;
    font-family: "Montserrat";
    font-size: 15px;
    font-style: normal;
    font-weight: 300;
    line-height: normal;
  }

  .tipo span{
    color: #000;
    font-family: "Montserrat";
    font-size: 15px;
    font-style: normal;
    font-weight: 700;
    line-height: normal;
  }
  .tipo p{
    color: #000;
    font-family: "Montserrat";
    font-size: 15px;
    font-style: normal;
    font-weight: 300;
    line-height: normal;
  }
  
  .aplicaciones p{
    color: #000;
    font-family: "Montserrat";
    font-size: 15px;
    font-style: normal;
    font-weight: 700;
    line-height: 0px;
  }

  .aplicaciones button{
    display: inline-flex;
    padding: 6px;
    justify-content: center;
    align-items: center;
    gap: 10px;
    border: none;
    background: var(--Gris, #9D9EA2);
    margin-top: 5px;
    margin-right: 5px;

  }
  
  .medidas{
    margin-top: 10px;
  }
  .medidas p{
    color: #000;
    font-family: Montserrat;
    font-size: 15px;
    font-style: normal;
    font-weight: 700;
    line-height: 0px;
  }
  .medidas button{
    display: inline-flex;
    padding: 6px;
    justify-content: center;
    align-items: center;
    gap: 10px;
    border: none;
    background: var(--Gris, #33447F);
    margin-top: 5px;
    margin-right: 5px;  }

  .tabla{
  margin-top: 100px;
  margin-left: 17%;
  width: 66%;
}
#cantidad{
  width: 60px;
}
.selects{
  border-radius: 0%;
   background-color: rgba(245, 245, 245, 1);
    border: 1px solid rgba(204, 204, 204, 1)
}
.encabezado{
  background: rgba(51, 68, 127, 1); 
  color: white; 
  font-family: 'Montserrat'; 
  font-weight: 500; 
  font-size: 15px;
}
#agregar{
  border: 1px solid rgba(51, 68, 127, 1);
  background-color: white;
  color: rgba(51, 68, 127, 1);
}

#botonAgregar{
text-align: right;
}

#agregarProducto{
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

.botones{
  display: flex;
  justify-content: space-between;
}
#verPresupuesto{
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

.producto{
  width: 305px;
  height: 500px;
  background-color: white;
  color: #33447F;
  border-bottom: 1px solid rgba(147, 147, 147, 0.3);
  margin-right: 20px;
}

.producto img{
  width: 288px;
  height: 300px;
}

.productos{
  display: flex;
  margin-left: 0px;
}

.productosRelacionados{
  margin-left: 17%;
  margin-top: 80px;
}

.productosR{
  color: #000;
  font-family: Montserrat;
  font-size: 28px;
  font-style: normal;
  font-weight: 500;
  line-height: normal;
}
.nombre{
  font-size: 22px;
  color: black;
  font-family: "Montserrat", sans-serif;
  font-weight: 500;
  line-height: 26px;
  text-align: left;

}
.categoria{
  font-size: 14px;
  font-weight: 700;
  font-family: "Montserrat", sans-serif;
  color: #33447F;
  line-height: 17px;
  margin-top: 20px;
  text-align: left;
}

.imgP{
  width: 496px;
  height: 496px;
  flex-shrink: 0;
}
.imgMinis{
  display: flex;
  flex-direction: column;
}
.imgMinis img{
width: 80px;
height: 80px;
padding-right: 8px;
padding-bottom: 10px;
}
  </style>
  
