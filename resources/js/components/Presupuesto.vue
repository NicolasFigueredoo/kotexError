<template>
    <div>
      <div class="indicador"><p>Inicio > Presupuesto</p></div>
      <div class="formulario">

        <div class="casilla1">
          <span>Nombre*</span>
          <input type="text">

          <span>Apellido*</span>
          <input type="text">
        </div>

        <div class="casilla1">
          <span>Email*</span>
          <input type="text">

          <span>Celular</span>
          <input type="text">
        </div>


      </div>

      <div class="tabla">
        <table class="table">
          <thead>
            <tr>
              <th scope="col">#</th>
              <th scope="col">First</th>
              <th scope="col">Last</th>
              <th scope="col">Handle</th>
            </tr>
          </thead>
        <tbody>
          <tr>
            <th scope="row">1</th>
            <td>Mark</td>
            <td>Otto</td>
            <td>@mdo</td>
          </tr>
          <tr>
            <th scope="row">2</th>
            <td>Jacob</td>
            <td>Thornton</td>
            <td>@fat</td>
          </tr>
          <tr>
            <th scope="row">3</th>
            <td colspan="2">Larry the Bird</td>
            <td>@twitter</td>
          </tr>
        </tbody>
      </table>

      </div>
  
    </div>
  </template>
  
  <script>  
  export default {

  }
  </script>

  <style>
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
.casilla1{
  display: flex;
  flex-direction: column;
  justify-content: right;
  margin-left: 20px;
  
}
.casilla1 input{
  width: 620px;
  border: 1px solid #DEDEDE
}

.table{
  width: 600px;
}
</style>
  
