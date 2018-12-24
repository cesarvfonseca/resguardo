// ELIMINAR EQUIPO DE COMPUTO
function deleteComputer(computerRow) {
    var jobType = 'deleteComputer', deviceCode = computerRow.closest("tr").find(".trCode").text();
    // console.log(deviceCode);
    Swal({
        title: 'Eliminar el registro',
        text: '¿Estas seguro de eliminar este registro?',
        type: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        cancelButtonText: 'Cancelar',
        confirmButtonText: 'Si, borrar!'
    }).then((result) => {
        if (result.value) {
            var dataComputer = new FormData();
            dataComputer.append('jobType', jobType);
            dataComputer.append('deviceCode', deviceCode);
            var xhr = new XMLHttpRequest();
            xhr.open('POST', 'inc/model/control.php', true);
            xhr.send(dataComputer);
            xhr.onload = function () {
                if (this.status === 200) {
                    var respuesta = JSON.parse(xhr.responseText);
                    // console.log(respuesta);
                    computerRow.parents("tr").remove(); //ELIMINAR LINEA DEL REGISTRO BORRADO
                    if (respuesta.estado === 'OK') {
                        Swal('Registro eliminado!', 'El registro ' + deviceCode + 'fue eliminado exitosamente.', 'success');
                    }
                    else {
                        // Hubo un error
                        swal({
                            title: 'Error!',
                            text: 'Hubo un error',
                            type: 'error'
                        });
                    }
                }
            };
        }
    });
}
