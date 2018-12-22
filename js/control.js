$('#link_1').click(function(){
    console.log('Link 1');
    var url = "index.php?request=computers";
    $(location).attr('href',url);
});

$('#link_2').click(function(){
    console.log('Link 2');
    var url = "index.php?request=smartphone";
    $(location).attr('href',url);
});

$('#link_3').click(function(){
    console.log('Link 3');
    var url = "index.php?request=printers";
    $(location).attr('href',url);
});

if (window.location.href.indexOf("?request=computers") > -1) {
    console.log('Computers page');
    var action  = 'registry';
    var dataTable = new FormData();
    dataTable.append('action', action);
    var xmlhr = new XMLHttpRequest();
    xmlhr.open('POST', 'inc/model/data-service.php', true);
    xmlhr.onload = function(){
        if (this.status === 200) {
          var respuesta = JSON.parse(xmlhr.responseText);
        //   console.log(respuesta);
          if (respuesta.status === 'OK') {
            var informacion = respuesta.data;
            // console.log(informacion);
            for(var i in informacion){
                computersTable(informacion[i]);
            }     
          } else if(respuesta.status === 'error'){
            var informacion = respuesta.data;
          }
        }
        }
    xmlhr.send(dataTable);

    function computersTable(rowInfo){
        
        var st = rowInfo.status,
            estado = '';
        
        if(st === 'A'){
            estado = "table-secondary";
        } else if(st === 'I'){
            estado = "table-danger";
        } else if(st === 'X'){
            estado = "table-warning";
        }
        var row = $("<tr class='" + estado + "'>");
        
        $("#dataTable").append(row); //this will append tr element to table... keep its reference for a while since we will add cels into it
        // NUMERO DE EQUIPO
        row.append($("<td class='text-muted trCode'>" + rowInfo.code + " </td>"));
        // NOMINA DEL EMPLEADO
        row.append($("<td> " + rowInfo.id_employee + " </td>"));
        // NOMBRE DEL EMPLEADO
        row.append($("<td> " + rowInfo.employee_name + " </td>"));
        // TIPO DE SUCURSAL
        row.append($("<td> " + rowInfo.branch + " </td>"));
        // COLUMNA DEPARTAMENTO
        row.append($("<td>" + rowInfo.workstation + "</td>"));
        // COLUMNA MARCA
        row.append($("<td>" + rowInfo.brand + "</td>"));
        // COLUMNA MODELO
        row.append($("<td>" + rowInfo.model + "</td>"));
        // COLUMNA # SERIE
        row.append($("<td>" + rowInfo.serial + "</td>"));
        // COLUMNA # PRODUCTO
        row.append($("<td>" + rowInfo.product + "</td>"));
        // COLUMNA FECHA
        row.append($("<td>" + rowInfo.date + "</td>"));
        // COLUMNA # FACTURA
        row.append($("<td>" + rowInfo.invoicenbr + "</td>"));    
        // COLUMNA ACCION
        row.append($("<td class='text-center'>"
                    + "<a tabindex='0' class='btn btn-sm btn-primary btnEdit' data-code='"+rowInfo.code+"' role='button' title='Editar registro'><i class='fas fa-pen-square'></i></a>"
                    + "<a tabindex='1' class='btn btn-sm btn-warning mx-2 btnHelp' role='button' title='Soporte tecnico'><i class='far fa-bookmark'></i></a>" 
                    + "<a tabindex='2' class='btn btn-sm btn-danger btnDelete' role='button' title='Eliminar registro'><i class='fas fa-trash'></i></a>" 
                    + "</td>"));
                
        $(".btnDelete").unbind().click(function() {
            deleteComputer($(this));
        });

        $(".btnEdit").unbind().click(function() {
            var deviceCode = $((this)).data('code'),
                url = "index.php?request=editcomputer";
            // console.info(deviceCode);
            localStorage.setItem('deviceCode', deviceCode);//GUARADR CODIGO DEL EQUIPO EN LA MEMORIA LOCAL DEL NAVEGADOR
            $(location).attr('href',url);
        });

    }
        

}

if (window.location.href.indexOf("?request=newcomputer") > -1) {
    console.log('New Computer');

}

if (window.location.href.indexOf("?request=editcomputer") > -1) {
    console.log('Edit Computer');
    var jobType = 'queryDevice';
    var deviceCode = localStorage.getItem('deviceCode'); //OBTENER EL CODIGO DEL EQUIPO DE LA MEMORIA LOCAL DEL NAVEGADOR
    localStorage.removeItem('deviceCode'); //ELIMINAR EL CODIGO DEL EQUIPO DE LA MEMORIA LOCAL DEL NAVEGADOR
    console.info(deviceCode);
    var dataComputer = new FormData();
    dataComputer.append('action', jobType);
    dataComputer.append('deviceCode', deviceCode);
    var xhr = new XMLHttpRequest();
    xhr.open('POST', 'inc/model/data-service.php', true);
    xhr.send(dataComputer);
    xhr.onload = function(){
        if (this.status === 200) {
            var respuesta = JSON.parse(xhr.responseText);
            console.log(respuesta);
            if (respuesta.status === 'OK') {
                var informacion = respuesta.data;
                for(var i in informacion){
                    editDevice(informacion[i]);
                }
            }
        }
    }

    $( "#ipBranch" ).autocomplete({
        source: function(request, response) {
            $.getJSON(
                "inc/model/search.php",
                { value:$('#ipBranch').val(),action:'searchBranch' }, 
                response
            );
        }
    });

    $( "#ipBrand" ).autocomplete({
        source: function(request, response) {
            $.getJSON(
                "inc/model/search.php",
                { value:$('#ipBrand').val(),action:'searchBrand' }, 
                response
            );
        }
    });

}

function editDevice(rowInfo){
    $('#ipdeviceCode').val(rowInfo.code);
    $('#ipEmployeecode').val(rowInfo.id_employee);
    $('#ipEmployeecode_').val(rowInfo.id_employee);
    $('#ipPhone').val(rowInfo.phone);
    $('#ipEmployeename').val(rowInfo.employee_name);
    $('#ipEmployeename_').val(rowInfo.employee_name);
    $('#ipPosition').val(rowInfo.position);
    $('#ipPosition_').val(rowInfo.position);
    $('#ipMail').val(rowInfo.mail);
    $('#ipMail_').val(rowInfo.mail);
    $('#ipBranch').val(rowInfo.branch);
    $('#ipBranch_').val(rowInfo.branch);
    $('#ipWorkstation').val(rowInfo.workstation);
    $('#ipWorkstation_').val(rowInfo.workstation);
    $('#ipDate').val(rowInfo.date);
    $('#ipDate_').val(rowInfo.date);
    $('#igType').val(rowInfo.type);
    $('#igStatus').val(rowInfo.status);
    $('#ipBrand').val(rowInfo.brand);
    $('#ipModel').val(rowInfo.model);
    $('#ipSerie').val(rowInfo.serial);
    $('#ipProduct').val(rowInfo.product);
    $('#ipInvoicenbr').val(rowInfo.invoicenbr);
    $('#ipInvoicedate').val(rowInfo.invoicedate);
    $('#ipSupplier').val(rowInfo.supplier);
    $('#ipComment').val(rowInfo.comment);
}

// ELIMINAR EQUIPO DE COMPUTO
function deleteComputer (computerRow){    
    var jobType = 'deleteComputer',
        deviceCode = computerRow.closest("tr").find(".trCode").text(); 
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
            xhr.onload = function(){
                if (this.status === 200) {
                    var respuesta = JSON.parse(xhr.responseText);
                    // console.log(respuesta);
                    computerRow.parents("tr").remove();//ELIMINAR LINEA DEL REGISTRO BORRADO
                    if (respuesta.estado === 'OK') {
                        Swal(
                            'Registro eliminado!',
                            'El registro ' + deviceCode + 'fue eliminado exitosamente.',
                            'success'
                        )
                    } else {
                        // Hubo un error
                        swal({
                            title: 'Error!',
                            text: 'Hubo un error',
                            type: 'error'
                        })
                    }
                }
            }
            
            
        }
      })
}

$('#btnNew').click(function(){
    var type = $(this).data('type');
    console.info(type);
    switch (type){
        case 'computers':
            var url = "index.php?request=newcomputer";
            $(location).attr('href',url);
            break;
        case 'printers':
            var url = "index.php?request=newprinter";
            $(location).attr('href',url);
            break;
        default:
            break;            
    }
});

//NUEVO EQUIPO DE COMPUTO
$('#btnsaveComputer').click(function(){
    // console.log('SALVAR EQUIPO DE COMPUTO');
    var jobType = 'newComputer',
        employeeCode = document.querySelector('#ipEmployeecode').value,
        employeePhone = document.querySelector('#ipPhone').value,
        employeeName = document.querySelector('#ipEmployeename').value,
        employeePosition = document.querySelector('#ipPosition').value,
        employeeMail = document.querySelector('#ipMail').value,
        employeeBranch = document.querySelector('#ipBranch').value,
        employeeWorkstation = document.querySelector('#ipWorkstation').value,
        deliveryDate = document.querySelector('#ipDate').value,
        deviceType = document.querySelector('#igType').value,
        deviceStatus = document.querySelector('#igStatus').value,
        deviceBrand = document.querySelector('#ipBrand').value,
        deviceModel = document.querySelector('#ipModel').value,
        deviceSerie = document.querySelector('#ipSerie').value,
        deviceProduct = document.querySelector('#ipProduct').value,
        invoiceNumber = document.querySelector('#ipInvoicenbr').value,
        invoiceDate = document.querySelector('#ipInvoicedate').value,
        deviceSupplier = document.querySelector('#ipSupplier').value,
        deviceComment = document.querySelector('#ipComment').value;

        var invoiceAttach = document.getElementById('ipAttach');
        var fileAttach =invoiceAttach.files[0];



    if  (
        employeeCode.trim() === '' || employeePhone.trim() === '' ||
        employeeName.trim() === '' || employeePosition.trim() === '' ||
        employeeMail.trim() === '' || employeeBranch.trim() === '' ||
        employeeWorkstation.trim() === '' || deliveryDate.trim() === '' ||
        deviceType.trim() === '' || deviceStatus.trim() === '' ||
        deviceType.trim() === '' || deviceStatus.trim() === '' ||
        deviceBrand.trim() === '' || deviceModel.trim() === '' ||
        deviceSerie.trim() === '' || deviceProduct.trim() === '' ||
        invoiceNumber.trim() === '' || invoiceDate.trim() === ''
        ){
            swal({
                type: 'error',
                title: 'Error!',
                text: 'Todos los campos son obligatorios!'
            })
        } else {
            var dataComputer = new FormData();
            dataComputer.append('employeeCode', employeeCode);
            dataComputer.append('employeePhone', employeePhone);
            dataComputer.append('employeeName', employeeName);
            dataComputer.append('employeePosition', employeePosition);
            dataComputer.append('employeeMail', employeeMail);
            dataComputer.append('employeeBranch', employeeBranch);
            dataComputer.append('employeeWorkstation', employeeWorkstation);
            dataComputer.append('deliveryDate', deliveryDate);
            dataComputer.append('deviceType', deviceType);
            dataComputer.append('deviceStatus', deviceStatus);
            dataComputer.append('deviceBrand', deviceBrand);
            dataComputer.append('deviceModel', deviceModel);
            dataComputer.append('deviceSerie', deviceSerie);
            dataComputer.append('deviceProduct', deviceProduct);
            dataComputer.append('invoiceNumber', invoiceNumber);
            dataComputer.append('invoiceDate', invoiceDate);
            dataComputer.append('deviceSupplier', deviceSupplier);
            dataComputer.append('deviceComment', deviceComment);
            dataComputer.append('fileAttach', fileAttach);
            dataComputer.append('jobType', jobType);

            var xhr = new XMLHttpRequest();
            xhr.open('POST', 'inc/model/control.php', true);
            xhr.send(dataComputer);
            xhr.onload = function(){
                if (this.status === 200) {
                    var respuesta = JSON.parse(xhr.responseText);
                    console.log(respuesta);
                    if (respuesta.estado === 'OK') {
                        var destination = respuesta.log;
                        swal({
                                title: 'Guardado exitoso!',
                                text: 'Guardado de la información exitoso!',
                                type: 'success'
                            })
                            .then(resultado => {
                                    if(resultado.value) {
                                        location.reload();
                                        window.location.href = 'index.php?request='+destination;
                                    }
                                })
                    } else {
                        // Hubo un error
                        swal({
                            title: 'Error!',
                            text: 'Hubo un error',
                            type: 'error'
                        })
                    }
                }
            }            
        }
});
//NUEVO EQUIPO DE COMPUTO

// $('#btneditComputer_').click(function(){
//     console.log('EDITAR YA');
// });

//EDITAR EQUIPO DE COMPUTO
$('#btnEditcomputer').click(function(){
    // console.log('EDITAR EQUIPO DE COMPUTO');
    var jobType = 'editComputer',
        deviceCode = document.querySelector('#ipdeviceCode').value,
        employeeCode = document.querySelector('#ipEmployeecode').value,
        employeeCode_ = document.querySelector('#ipEmployeecode_').value,
        employeePhone = document.querySelector('#ipPhone').value,
        employeeName = document.querySelector('#ipEmployeename').value,
        employeeName_ = document.querySelector('#ipEmployeename_').value,
        employeePosition = document.querySelector('#ipPosition').value,
        employeePosition_ = document.querySelector('#ipPosition_').value,
        employeeMail = document.querySelector('#ipMail').value,
        employeeMail_ = document.querySelector('#ipMail_').value,
        employeeBranch = document.querySelector('#ipBranch').value,
        employeeBranch_ = document.querySelector('#ipBranch_').value,
        employeeWorkstation = document.querySelector('#ipWorkstation').value,
        employeeWorkstation_ = document.querySelector('#ipWorkstation_').value,
        deliveryDate = document.querySelector('#ipDate').value,
        deliveryDate_ = document.querySelector('#ipDate_').value,
        deviceType = document.querySelector('#igType').value,
        deviceStatus = document.querySelector('#igStatus').value,
        deviceBrand = document.querySelector('#ipBrand').value,
        deviceModel = document.querySelector('#ipModel').value,
        deviceSerie = document.querySelector('#ipSerie').value,
        deviceProduct = document.querySelector('#ipProduct').value,
        deviceSupplier = document.querySelector('#ipSupplier').value,
        invoiceNumber = document.querySelector('#ipInvoicenbr').value,
        invoiceDate = document.querySelector('#ipInvoicedate').value,
        deviceComment = document.querySelector('#ipComment').value;

        var invoiceAttach = document.getElementById('ipAttach');
        var fileAttach =invoiceAttach.files[0];

        var responsiveAttach = document.getElementById('ipResponsive');
        var responsive_Attach =responsiveAttach.files[0];


    if  (
        employeeCode.trim() === '' || employeePhone.trim() === '' ||
        employeeName.trim() === '' || employeePosition.trim() === '' ||
        employeeMail.trim() === '' || employeeBranch.trim() === '' ||
        employeeWorkstation.trim() === '' || deliveryDate.trim() === '' ||
        deviceType.trim() === '' || deviceStatus.trim() === '' ||
        deviceType.trim() === '' || deviceStatus.trim() === '' ||
        deviceBrand.trim() === '' || deviceModel.trim() === '' ||
        deviceSerie.trim() === '' || deviceProduct.trim() === ''
        ){
            swal({
                type: 'error',
                title: 'Error!',
                text: 'Todos los campos son obligatorios!'
            })
        } else {
            var dataComputer = new FormData();
            dataComputer.append('deviceCode', deviceCode);
            dataComputer.append('employeeCode', employeeCode);
            dataComputer.append('employeeCode_', employeeCode_);
            dataComputer.append('employeePhone', employeePhone);
            dataComputer.append('employeeName', employeeName);
            dataComputer.append('employeeName_', employeeName_);
            dataComputer.append('employeePosition', employeePosition);
            dataComputer.append('employeePosition_', employeePosition_);
            dataComputer.append('employeeMail', employeeMail);
            dataComputer.append('employeeMail_', employeeMail_);
            dataComputer.append('employeeBranch', employeeBranch);
            dataComputer.append('employeeBranch_', employeeBranch_);
            dataComputer.append('employeeWorkstation', employeeWorkstation);
            dataComputer.append('employeeWorkstation_', employeeWorkstation_);
            dataComputer.append('deliveryDate', deliveryDate);
            dataComputer.append('deliveryDate_', deliveryDate_);
            dataComputer.append('deviceType', deviceType);
            dataComputer.append('deviceStatus', deviceStatus);
            dataComputer.append('deviceBrand', deviceBrand);
            dataComputer.append('deviceModel', deviceModel);
            dataComputer.append('deviceSerie', deviceSerie);
            dataComputer.append('deviceProduct', deviceProduct);
            dataComputer.append('deviceSupplier', deviceSupplier);
            dataComputer.append('invoiceNumber', invoiceNumber);
            dataComputer.append('invoiceDate', invoiceDate);
            dataComputer.append('deviceComment', deviceComment);
            dataComputer.append('fileAttach', fileAttach);
            dataComputer.append('responsive_Attach', responsive_Attach);
            dataComputer.append('jobType', jobType);

            var xhr = new XMLHttpRequest();
            xhr.open('POST', 'inc/model/control.php', true);
            xhr.send(dataComputer);
            xhr.onload = function(){
                if (this.status === 200 && this.readyState == 4) {
                    var respuesta = JSON.parse(xhr.responseText);
                    console.log(respuesta);
                    if (respuesta.estado === 'OK') {
                        var destination = respuesta.log;
                        swal({
                                title: 'Modificación exitosa!',
                                text: 'Modificación de la información exitosa!',
                                type: 'success'
                            })
                            .then(resultado => {
                                    if(resultado.value) {
                                        location.reload();
                                        window.location.href = 'index.php?request='+destination;
                                    }
                                })
                    } else {
                        // Hubo un error
                        
                        swal({
                            title: 'Error!',
                            text: 'Hubo un error',
                            type: 'error'
                        })
                    }
                }
            }            
        }
});
//EDITAR EQUIPO DE COMPUTO

//BUSQUEDA DE INFORMACION
$(document).ready(function(){
    $("#searchBox").on("keyup", function() {
      var value = $(this).val().toLowerCase();
      $("#dataTable tr").filter(function() {
        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
      });
    });
  });

if (window.location.href.indexOf("?request=smartphone") > -1) {
    console.log('Smartphone page');

}

//IMPRESORAS
if (window.location.href.indexOf("?request=printers") > -1) {
    console.log('Printers page');
    var action  = 'printers';
    var dataTable = new FormData();
    dataTable.append('action', action);
    var xmlhr = new XMLHttpRequest();
    xmlhr.open('POST', 'inc/model/data-service.php', true);
    xmlhr.onload = function(){
        if (this.status === 200) {
          var respuesta = JSON.parse(xmlhr.responseText);
        //   console.log(respuesta);
          if (respuesta.status === 'OK') {
            var informacion = respuesta.data;
            // console.log(informacion);
            for(var i in informacion){
                printersTable(informacion[i]);
            }     
          } else if(respuesta.status === 'error'){
            var informacion = respuesta.data;
          }
        }
        }
    xmlhr.send(dataTable);

    function printersTable(rowInfo){
        
        var st = rowInfo.status,
            estado = '';
        
        if(st === 'A'){
            estado = "table-secondary";
        } else if(st === 'I'){
            estado = "table-danger";
        } else if(st === 'X'){
            estado = "table-warning";
        }
        var row = $("<tr class='" + estado + "'>");
        
        $("#dataTable").append(row); //this will append tr element to table... keep its reference for a while since we will add cels into it
        // NUMERO DE EQUIPO
        row.append($("<td class='text-muted trCode'>" + rowInfo.code + " </td>"));
        // NOMINA DEL EMPLEADO
        row.append($("<td> " + rowInfo.id_employee + " </td>"));
        // NOMBRE DEL EMPLEADO
        row.append($("<td> " + rowInfo.employee_name + " </td>"));
        // TIPO DE SUCURSAL
        row.append($("<td> " + rowInfo.branch + " </td>"));
        // COLUMNA DEPARTAMENTO
        row.append($("<td>" + rowInfo.workstation + "</td>"));
        // COLUMNA MARCA
        row.append($("<td>" + rowInfo.brand + "</td>"));
        // COLUMNA MODELO
        row.append($("<td>" + rowInfo.model + "</td>"));
        // COLUMNA # SERIE
        row.append($("<td>" + rowInfo.serial + "</td>"));
        // COLUMNA # PRODUCTO
        row.append($("<td>" + rowInfo.product + "</td>"));
        // COLUMNA FECHA
        row.append($("<td>" + rowInfo.date + "</td>"));
        // COLUMNA # FACTURA
        row.append($("<td>" + rowInfo.invoicenbr + "</td>"));    
        // COLUMNA ACCION
        row.append($("<td class='text-center'>"
                + "<a tabindex='0' class='btn btn-sm btn-primary btnEdit' data-code='"+rowInfo.code+"' role='button' title='Editar registro'><i class='fas fa-pen-square'></i></a>"
                + "<a tabindex='1' class='btn btn-sm btn-warning mx-1' role='button' title='Soporte tecnico'><i class='far fa-bookmark'></i></a>" 
                + "<a tabindex='2' class='btn btn-sm btn-danger btnDelete' role='button' title='Eliminar registro'><i class='fas fa-trash'></i></a>" 
                + "</td>"));
                
        $(".btnDelete").unbind().click(function() {
            deleteComputer($(this));
        });

        $(".btnEdit").unbind().click(function() {
            var deviceCode = $((this)).data('code'),
                url = "index.php?request=editprinter";
            // console.info(deviceCode);
            localStorage.setItem('deviceCode', deviceCode);//GUARAR CODIGO DEL EQUIPO EN LA MEMORIA LOCAL DEL NAVEGADOR
            $(location).attr('href',url);
        });

    }    
}

if (window.location.href.indexOf("?request=editprinter") > -1) {
    console.log('Edit Printer');
    var jobType = 'queryDevice';
    var deviceCode = localStorage.getItem('deviceCode'); //OBTENER EL CODIGO DEL EQUIPO DE LA MEMORIA LOCAL DEL NAVEGADOR
    localStorage.removeItem('deviceCode'); //ELIMINAR EL CODIGO DEL EQUIPO DE LA MEMORIA LOCAL DEL NAVEGADOR
    // console.info(deviceCode);
    var dataComputer = new FormData();
    dataComputer.append('action', jobType);
    dataComputer.append('deviceCode', deviceCode);
    var xhr = new XMLHttpRequest();
    xhr.open('POST', 'inc/model/data-service.php', true);
    xhr.send(dataComputer);
    xhr.onload = function(){
        if (this.status === 200) {
            var respuesta = JSON.parse(xhr.responseText);
            console.log(respuesta);
            if (respuesta.status === 'OK') {
                var informacion = respuesta.data;
                for(var i in informacion){
                    editDevice(informacion[i]);
                }
            }
        }
    }
}

//VER PDF
$("#showPDF").unbind().click(function() {
    var deviceSerie = document.getElementById('ipSerie').value,
        // // url = "inc/assets/invoices/"+deviceSerie+"/"+deviceSerie+'.pdf',
        // url = "inc/assets/invoices/"+deviceSerie+"/"+deviceSerie+".pdf",
        // jobType = 'readPDF';

        // window.open(url, '_blank', 'fullscreen=yes');
    
});
//VER PDF
