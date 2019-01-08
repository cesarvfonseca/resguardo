eventListener();

// document.querySelector('#btnSalir').addEventListener('submit', cerrarSesion);

function eventListener()
{
    document.querySelector('#loginForm').addEventListener('submit', checkIN);
}

function checkIN (e) 
{
    e.preventDefault();
    var user = document.querySelector('#txtUser').value,
        password = document.querySelector('#txtPwd').value,
        type = document.querySelector('#type').value;

    // console.log(user + ' ' + password + ' ' + type);
    if(user === '' || password === '')
    {
        // la validación falló
        swal({
          type: 'error',
          title: 'Error!',
          text: 'Ambos campos son obligatorios!'
      })
    }
    else
    {

        $.ajax({
            url: 'http://187.188.159.205:8090/web_serv/accessWeb/inc/model/forms.php',//esto con un archivo php
            type: 'GET',//tipo de petición
            dataType: 'jsonp',//tipo de datos
            jsonp: 'accion',//nombre de la variable get para reconocer la petición
            data: 'usuario=' + user +'&clave=' + password +'&tipo=' + type,
            error: function(xhr, status, error) {
                alert("error");
            },
            success: function(jsonp) { 
                var estado = jsonp.estado,
                    sesion = jsonp.sesion;
                if(estado === 'OK')
                {
                    if(sesion)
                    {
                        // console.log(jsonp.mensaje);
                        var tipo = jsonp.tipo,
                            accion = 'ingresar',
                            titulo = jsonp.mensaje,
                            ubicacion = jsonp.ubicacion,
                            mensaje = jsonp.informacion,
                            usuario_activo = jsonp.usuario_activo,
                            usuario_nombre = jsonp.usuario_nombre;
                            //INICIAR SESION METODO 1
                            // xmlhttp = new XMLHttpRequest();
                            // xmlhttp.open('GET','inc/model/crear_sesion.php?id='+usuario_activo+'&name='+usuario_nombre,false);
                            // xmlhttp.send();
                            //INICIAR SESION METODO 2 (SEGURA)
                            asignarSesion(usuario_activo, usuario_nombre);
                        swal({
                            type: tipo,
                            title: titulo,
                            text: mensaje + ' ' + usuario_nombre,
                            timer: 1800,
                            showConfirmButton: false,
                            backdrop: `
                                rgba(13, 63, 114, 0.6)
                                center top
                                no-repeat
                            `
                        }).then(function(){ 
                            // location.reload();
                            window.location.href = 'index.php?request='+ubicacion;
                        })

                    }else{
                        console.log(jsonp.mensaje);
                        var tipo = jsonp.tipo,
                            titulo = jsonp.mensaje,
                            mensaje = jsonp.informacion;
                        swal({
                            type: tipo,
                            title: titulo,
                            text: mensaje,
                            timer: 1800,
                            showConfirmButton: false,
                            backdrop: `
                                rgba(13, 63, 114, 0.6)
                                center top
                                no-repeat
                            `
                        }).then(function(){ 
                            location.reload();
                        })
                    }
                }else{
                    console.log('Error');
                }
            }
        });


    }
}


function asignarSesion( id, name ){

        var u_nombre = name,
            u_activo = id;
    
        console.log(u_nombre + ' ' + u_activo);
        $.ajax({
            url: 'inc/model/newSession.php',
            type: 'GET',
            data: 'id=' + u_activo + '&name=' + u_nombre,
            error: function(xhr, status, error) {
                alert("error");
            }
        });
    }