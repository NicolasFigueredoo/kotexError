<template>
    <div class="presupuestoDiv">
      <div class="indicador"><p>Inicio > Presupuesto</p></div>
      <div class="formulario">

        <div class="casilla">
          <div class="inputs">
            <div>
              <span>Nombre*</span>
              <input type="text">
            </div>
            <div style="margin-left: 35px;">
              <span>Apellido*</span>
              <input type="text">
            </div>
          </div>

          <div class="inputs" style="margin-top: 20px;">
            <div>
              <span>Email*</span>
              <input type="text">
            </div>

            <div style="margin-left: 35px;">
            <span>Celular</span>
            <input type="text">
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
              <th scope="row">123</th>
            <td>
              <select class="form-select selects" id="codigo">
                <option selected>Productos de línea</option>
                <option value="1">One</option>
                <option value="2">Two</option>
                <option value="3">Three</option>
              </select>
            </td>
            <td>
              <select class="form-select selects" id="nombre">
                <option selected>Elásticos de embutir</option>
                <option value="1">One</option>
                <option value="2">Two</option>
                <option value="3">Three</option>
              </select>
            </td>
            <td>
              <select  class="form-select selects" id="color">
                <option selected>Blanco</option>
                <option value="1">One</option>
                <option value="2">Two</option>
                <option value="3">Three</option>
              </select>
            </td>

            <td>
              <select  class="form-select selects" id="medida">
                <option selected>5mm</option>
                <option value="1">One</option>
                <option value="2">Two</option>
                <option value="3">Three</option>
              </select>
            </td>

            
            <td>
              <select  class="form-select selects" id="unidadventa">
                <option selected>Rollo</option>
                <option value="1">One</option>
                <option value="2">Two</option>
                <option value="3">Three</option>
              </select>
            </td>

            
            <td>
              <select  class="form-select selects" id="cantidad">
                <option selected>1</option>
                <option value="1">One</option>
                <option value="2">Two</option>
                <option value="3">Three</option>
              </select>
            </td>

            <td>
              <button id="agregar" type="button" style="border-radius: 0%;" class="btn btn-primary">AGREGAR</button>
            </td>


          </tr>
        </tbody>
      </table>
      <div class="addProducto">
        <p>+ AGREGAR MAS PRODUCTOS</p>
      </div>
      </div>

      <div class="foot">
        <div class="form-floating mensaje">
          <span>Mensaje</span>
          <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 177px; border-radius: 0%;"></textarea>
        </div>
        <div class="file">
          <div>
            <span>Adjuntar archivo</span>
          </div>
          <div class="file-select" id="src-file1" >
            <input type="file" name="src-file1" aria-label="Archivo">
          </div>

          <div>
            <button id="presupuesto" type="button" style="border-radius: 0%;" class="btn btn-primary">ENVIAR PRESUPUESTO</button>
          </div>
        </div>

      </div>
  
    </div>
  </template>
  
  <script>  
  export default {

  }
  </script>

  <style scoped>
  .presupuestoDiv{
    height: 950px;
  }
  .indicador{
    color: black;
    margin-top: 10px;
    margin-left: 17%;
    font-size: 15px;
    font-weight: 500;
    font-family: "Montserrat", sans-serif;
    line-height: 60px;
}
.formulario{
  display: flex;
  flex-direction: row;
  width: 100%;
  padding-left: 16%;
}
.casilla{
  display: flex;
  flex-direction: column;
  justify-content: right;
  margin-left: 20px;
}
.casilla div{
  display: flex;
  flex-direction: row;
}

.inputs div{
  display: flex;
  flex-direction: column;
}
.casilla input{
  width: 610px;
  border: 1px solid #DEDEDE
}
.casilla span{
  font-size: 16px;
  font-family: 'Montserrat'; 
  font-weight: 500;
}
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
.addProducto{
  margin-top: 50px;
  text-align: right;
  color: rgba(51, 68, 127, 1);

}
.foot{
  margin-top: 50px;
  margin-left: 17.5%;
  display: flex;

}
.mensaje{
  width: 650px;
}
.file{
  display: flex;
  flex-direction: column;
  margin-left: 2%;
}

.file-select {
  position: relative;
  display: inline-block;
}

.file-select::before {
  padding-left: 10px;
  background-color: white;
  color: rgba(204, 204, 204, 1);
  display: flex;
  justify-content: left;
  align-items: center;
  border-radius: 0px;
  content: 'Selccionar archivo'; 
  position: absolute;
  left: 0;
  right: 0;
  top: 0;
  bottom: 0;
  border: 1px solid rgba(222, 222, 222, 1)
}

.file-select input[type="file"] {
  opacity: 0;
  width: 565px;
  height: 45px;
  display: inline-block;
}

#presupuesto{
  margin-left: 49%;
  margin-top: 80px;
  background: rgba(51, 68, 127, 1);
  border: none;
  font-family: "Montserrat";
  font-size: 16px;
  font-weight: 300;
  width: 290px;
  height: 50px;
}

</style>
  
