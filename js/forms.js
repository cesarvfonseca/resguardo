eventListener();

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
        var dataSession = new FormData();
            dataSession.append('_user', user);
            dataSession.append('_password', password);
            dataSession.append('_type', type);
        
        var xhr = new XMLHttpRequest();

        xhr.open('POST', 'inc/model/form.php', true);

        xhr.send(dataSession);

        xhr.onload = function(){
            if(this.status === 200) {
                var respuesta = JSON.parse(xhr.responseText);
                
                console.log(respuesta);
                // Si la respuesta es correcta
                if(respuesta.estado === 'OK') {
                    var destination = respuesta.log;
                    swal({
                        title: 'Acceso Correcto',
                        text: 'Bienvenido(a)',
                        type: 'success'
                    })
                    .then(resultado => {
                        if(resultado.value) {
                            window.location.href = 'index.php?request='+destination;
                        }
                    })
                } else {
                    // Hubo un error
                    swal({
                        title: 'Error',
                        text: 'Hubo un error',
                        type: 'error'
                    }).then(resultado => {
                        if(resultado.value) {
                            window.location.href = 'index.php';
                        }
                    })
                }
            }
        }       
    }
}