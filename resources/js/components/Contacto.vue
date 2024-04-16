<template>
    <div>
      <div class="contenedor">
            <div class="contenedorImg">
                <img class="prueba" src=".../../../../img/prueba.png" alt="">  
            </div>
        
            <div class="contacto">
                <div >
                    <p class="titulo">Contacto</p>
                </div>
                <div class="formulario">
                    <div class="informacion">
                        <div class="ubicacion">
                            <font-awesome-icon class="iconContacto" :icon="['fas', 'location-dot']" />
                            <p>República de Israel (calle 24) N. 3259, San Martín, Prov. de Buenos Aires, Argentina</p>
                        </div>
                        <div class="telefono">
                            <font-awesome-icon class="iconContacto" :icon="['fas', 'phone']" /><p>(011) 4754-6393</p>
                        </div>
                        <div class="email">
                            <font-awesome-icon class="iconContacto" :icon="['far', 'envelope']" />
                            <p>kotexsrl@hotmail.com</p>
                        </div>
                    </div>
        
                    <div class="inputs">
                            <div class="casilla">
                                <div>
                                    <span>Nombre*</span>
                                    <input type="text">
                                </div>
                                <div style="margin-left: 35px;">
                                    <span>Apellido*</span>
                                    <input type="text">
                                </div>
                            </div>
                            <div class="casilla" style="margin-top: 10px; ">
                                <div>
                                    <span>Email*</span>
                                    <input type="text">
                                </div>
                                <div style="margin-left: 35px; ">
                                    <span>Celular</span>
                                    <input type="text">
                                </div>
                            </div>
        
                            <div style="justify-content: left; margin-top: 10px;" class="casilla">
                                <div>
                                    <span>Mensaje</span>
                                    <textarea class="form-control" style="width: 415px; height: 150px; border-radius: 0%;"></textarea>
                                </div>
                                <div class="enviar">
                                    <div>
                                        <p>*Datos Obligatorios</p>
                                    </div>
                                    <div>
                                        <button id="enviarContacto" type="button" style="border-radius: 0%;" class="btn btn-primary">ENVIAR CONSULTA</button>
                                    </div>
                                </div>
                            </div>
                            
                    </div>
                    
        
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
  @import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap');
  .contenedor{
    height: 1400px;
  }
  .contenedorImg{
    width: 100%;
  }
  .prueba{
    width: 100%;

    background-size: contain;
  }
  .contacto{
    background-color: white;
    height: 300px;
    margin-top: 50px;
    
  }

  .titulo{
    font-family: "Montserrat", sans-serif;
    font-size: 35px;
    font-weight: 600;
    line-height: 42.67px;
    margin-left: 17%;
  }

  .informacion{
    margin-left: 17.5%;
    font-size: 18px;
    font-family: "Montserrat", sans-serif;
    font-weight: 400;
    line-height: 21.94px;
    margin-top: 18px;
  }
  .ubicacion{
    display: flex;
    width: 280px;
  }

  .telefono{
    display: flex;
  }

  .email{
    display: flex;
  }
  
  .iconContacto{
    align-items: center;
    font-size: 20px;
    color: #33447F;
    margin-right: 20px;
}

.formulario{
    display: flex;
}
.inputs{
  display: flex;
  flex-direction: column;
  margin-left: 5.5%;
}
.casilla{
  display: flex;
  flex-direction: flex;
  
}
.casilla input{
  width: 415px;
  height: 50px;
  border: 1px solid #DEDEDE;
  margin-top: 5px;

}

.casilla span{
    font-size: 16px;
    font-family: 'Montserrat'; 
    font-weight: 500;
}

.casilla div{
    display: flex;
    flex-direction: column;
}

#enviarContacto{
  margin-top: 58px;
  background: rgba(51, 68, 127, 1);
  border: none;
  font-family: "Montserrat";
  font-size: 16px;
  font-weight: 300;
  width: 420px;
  height: 50px;
}

.enviar{
    display: flex;
    flex-direction: column;
    margin-top: 20px;
    margin-left: 30px;
}


  </style>