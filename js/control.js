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

$('#link_4').click(function(){
    console.log('Link 4');
    var url = "index.php?request=history";
    $(location).attr('href',url);
});

$('#link_5').click(function(){
    console.log('Link 5');
    var url = "index.php?request=maint";
    $(location).attr('href',url);
});

$('#btnSalir').click(function(){
    cerrarSesion();
});

if (window.location.href.indexOf("?request=main-page") > -1) {
    $('.menuLink').addClass('active');
    $('.computersLink').removeClass('active');
    $('.smartphonesLink').removeClass('active');
    $('.printersLink').removeClass('active');
}

if (window.location.href.indexOf("?request=computers") > -1) {
    console.log('Computers page');
    // jQuery('#link_1').addClass('active').removeClass('test2');
    // ('#link_1').addClass('active');
    var action  = 'registry';
    var dataTable = new FormData();
    dataTable.append('action', action);
    var xmlhr = new XMLHttpRequest();
    xmlhr.open('POST', 'inc/model/data-service.php', true);
    xmlhr.onload = function(){
        if (this.status === 200) {
          var respuesta = JSON.parse(xmlhr.responseText);
          if (respuesta.status === 'OK') {
            var informacion = respuesta.data;
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
                    + "<a tabindex='1' class='btn btn-sm btn-info mx-2 btnHelp' data-code='"+rowInfo.code+"' target='_blank' role='button' title='Carta responsiva'><i class='fas fa-file-pdf text-white'></i></a>" 
                    + "<a tabindex='2' class='btn btn-sm btn-danger btnDelete' role='button' title='Eliminar registro'><i class='fas fa-trash'></i></a>" 
                    + "</td>"));
                
        $(".btnDelete").unbind().click(function() {
            deleteComputer($(this));
        });

        $(".btnEdit").unbind().click(function() {
            var deviceCode = $((this)).data('code'),
                url = "index.php?request=editcomputer";
            localStorage.setItem('deviceCode', deviceCode);//GUARADR CODIGO DEL EQUIPO EN LA MEMORIA LOCAL DEL NAVEGADOR
            $(location).attr('href',url);
        });

        $(".btnHelp").unbind().click(function() {
            var deviceCode = $((this)).data('code'),
                newTab = window.open('index.php?request=responsiveL&deviceCode='+deviceCode, '_blank');
            newTab.focus();
        });

    }
        
    $('.menuLink').removeClass('active');
    $('.computersLink').addClass('active');
    $('.smartphonesLink').removeClass('active');
    $('.printersLink').removeClass('active');

}

if (window.location.href.indexOf("?request=newcomputer") > -1) {
    console.log('New Computer');
}

if (window.location.href.indexOf("?request=editcomputer") > -1) {
    console.log('Edit Computer');
    var jobType = 'queryDevice';
    var deviceCode = localStorage.getItem('deviceCode'); //OBTENER EL CODIGO DEL EQUIPO DE LA MEMORIA LOCAL DEL NAVEGADOR
    localStorage.removeItem('deviceCode'); //ELIMINAR EL CODIGO DEL EQUIPO DE LA MEMORIA LOCAL DEL NAVEGADOR
    var dataComputer = new FormData();
    dataComputer.append('action', jobType);
    dataComputer.append('deviceCode', deviceCode);
    var xhr = new XMLHttpRequest();
    xhr.open('POST', 'inc/model/data-service.php', true);
    xhr.send(dataComputer);
    xhr.onload = function(){
        if (this.status === 200) {
            var respuesta = JSON.parse(xhr.responseText);
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
    document.querySelector('#showPDF').setAttribute('href', 'inc/model/reader.php?type=pdf&deviceSerie='+rowInfo.serial);
    document.querySelector('#showIMG').setAttribute('href', 'inc/model/reader.php?type=jpg&deviceSerie='+rowInfo.serial);
}

// ELIMINAR EQUIPO DE COMPUTO
function deleteComputer (computerRow){    
    var jobType = 'deleteComputer',
        deviceCode = computerRow.closest("tr").find(".trCode").text(); 
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
                    computerRow.parents("tr").remove();//ELIMINAR LINEA DEL REGISTRO BORRADO
                    if (respuesta.estado === 'OK') {
                        Swal(
                            'Registro eliminado!',
                            'El registro ' + deviceCode + ' fue eliminado exitosamente.',
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
    switch (type){
        case 'computers':
            var url = "index.php?request=newcomputer";
            $(location).attr('href',url);
            break;
        case 'printers':
            var url = "index.php?request=newprinter";
            $(location).attr('href',url);
            break;
        case 'smartphone':
            var url = "index.php?request=newsmartphone";
            $(location).attr('href',url);
            break;
        case 'google-accounts':
            var url = "index.php?request=newaccount";
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

//TABLA SMARTPHONES
if (window.location.href.indexOf("?request=smartphone") > -1) {
    console.log('Smartphone page');
    var action  = 'smartphones';
    var dataTable = new FormData();
    dataTable.append('action', action);
    var xmlhr = new XMLHttpRequest();
    xmlhr.open('POST', 'inc/model/data-service.php', true);
    xmlhr.onload = function(){
        if (this.status === 200) {
          var respuesta = JSON.parse(xmlhr.responseText);
          if (respuesta.status === 'OK') {
            var informacion = respuesta.data;
            for(var i in informacion){
                smartTable(informacion[i]);
            }     
          } else if(respuesta.status === 'error'){
            var informacion = respuesta.data;
          }
        }
        }
    xmlhr.send(dataTable);

    function smartTable(rowInfo){
        
        var st = rowInfo.status,
            estado = '';
        
        if(st === '1'){
            estado = "table-secondary";
        } else if(st === '0'){
            estado = "table-danger";
        }
        var row = $("<tr class='" + estado + "'>");
        
        $("#dataTable").append(row); //this will append tr element to table... keep its reference for a while since we will add cels into it
        // NUMERO DE EQUIPO
        row.append($("<td class='text-muted trID' style='display:none;'>" + rowInfo.id + " </td>"));
        row.append($("<td class='text-muted trCode'>" + rowInfo.code_smartphone + " </td>"));
        // NOMINA DEL EMPLEADO
        row.append($("<td> " + rowInfo.employee_code + " </td>"));
        // NOMBRE DEL EMPLEADO
        row.append($("<td> " + rowInfo.employee_name + " </td>"));
        // TIPO DE SUCURSAL
        row.append($("<td> " + rowInfo.branch + " </td>"));
        // COLUMNA DEPARTAMENTO
        row.append($("<td>" + rowInfo.area + "</td>"));
        // COLUMNA MARCA
        row.append($("<td>" + rowInfo.brand + "</td>"));
        // COLUMNA MODELO
        row.append($("<td>" + rowInfo.model + "</td>"));
        // COLUMNA # SERIE
        row.append($("<td>" + rowInfo.imei + "</td>"));
        // COLUMNA # PRODUCTO
        row.append($("<td><a class='showacckey' data-acc='"+rowInfo.account+"'>"+rowInfo.account+"</a></td>"));
        // COLUMNA FECHA
        row.append($("<td>" + rowInfo.phone_number + "</td>"));
        // COLUMNA # FACTURA
        row.append($("<td>" + rowInfo.deliver_date + "</td>"));    
        // COLUMNA ACCION
        row.append($("<td class='text-center'>"
                + "<a tabindex='0' class='btn btn-sm btn-primary mx-1 btnEdit' data-code='"+rowInfo.id+"' role='button' title='Editar registro'><i class='fas fa-pen-square'></i></a>"
                // + "<a tabindex='1' class='btn btn-sm btn-success mx-1 btnAdd' data-id='"+rowInfo.id+"' role='button' title='Añadir responsable'><i class='fas fa-plus-circle'></i></a>" 
                + "<a tabindex='2' class='btn btn-sm btn-danger mx-1 btnDelete' role='button' title='Eliminar registro'><i class='fas fa-trash'></i></a>" 
                + "</td>"));
                
        $(".btnDelete").unbind().click(function() {
            deleteSmartphone($(this));
        });

        $(".btnAdd").unbind().click(function() {
            var deviceID = $((this)).data('id'),
                url = "index.php?request=modifysmartphone";
            localStorage.setItem('deviceID', deviceID);//GUARAR CODIGO DEL EQUIPO EN LA MEMORIA LOCAL DEL NAVEGADOR
            $(location).attr('href',url);
        });

        $(".btnEdit").unbind().click(function() {
            var deviceCode = $((this)).data('code'),
                url = "index.php?request=editsmartphone";
            localStorage.setItem('deviceCode', deviceCode);//GUARAR CODIGO DEL EQUIPO EN LA MEMORIA LOCAL DEL NAVEGADOR
            $(location).attr('href',url);
        });

        $(".showacckey").unbind().click(function() {
            var accName = $((this)).data('acc');
            showKey(accName);
        });

    }

    $('.menuLink').removeClass('active');
    $('.computersLink').removeClass('active');
    $('.smartphonesLink').addClass('active');
    $('.printersLink').removeClass('active');

}

function showKey (accName) {
    var action = 'acc-key';
    var dataAcc = new FormData();
    dataAcc.append('action', action);
    dataAcc.append('param', accName);

    var xhr = new XMLHttpRequest();
    xhr.open('POST', 'inc/model/data-service.php', true);
    xhr.send(dataAcc);
    xhr.onload = function(){
        if (this.status === 200) {
            var respuesta = JSON.parse(xhr.responseText);
            if (respuesta.status === 'OK') {
                var clave = respuesta.data[0].pwd,
                    cuenta = respuesta.data[0].account;
                Swal.fire({
                    title: 'Clave de la cuenta ' + cuenta,
                    confirmButtonText: '<i class="far fa-check-circle"></i>',
                    text: clave
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

//NUEVO SMARTPHONE
$('#btnsaveSmartphone').click(function(){
    // console.log('NUEVO SMARTPHONE');
    var jobType = 'newSmartphone',
        employeeCode = document.querySelector('#ipEmployeecode').value,
        employeePhone = document.querySelector('#ipPhone').value,
        employeeName = document.querySelector('#ipEmployeename').value,
        employeeBranch = document.querySelector('#ipBranch').value,
        employeeWorkstation = document.querySelector('#ipWorkstation').value,
        deliveryDate = document.querySelector('#ipDate').value,
        deviceStatus = document.querySelector('#igStatus').value,
        deviceColor = document.querySelector('#ipColour').value,
        deviceBrand = document.querySelector('#ipBrand').value,
        deviceModel = document.querySelector('#ipModel').value,
        deviceIMEI = document.querySelector('#ipIMEI').value,
        deviceAccount = document.querySelector('#ipAccount').value,
        deviceComment = document.querySelector('#ipComment').value;


    if  (
        employeeCode.trim() === '' || employeePhone.trim() === '' ||
        employeeName.trim() === '' || employeeBranch.trim() === '' ||
        employeeWorkstation.trim() === '' || deliveryDate.trim() === '' ||
        deviceStatus.trim() === '' || deviceColor.trim() === '' ||
        deviceBrand.trim() === '' || deviceModel.trim() === '' ||
        deviceIMEI.trim() === '' || deviceAccount.trim() === ''
        ){
            swal({
                type: 'error',
                title: 'Error!',
                text: 'Todos los campos son obligatorios!'
            })
        } else {
            var dataDevice = new FormData();
            dataDevice.append('employeeCode', employeeCode);
            dataDevice.append('employeePhone', employeePhone);
            dataDevice.append('employeeName', employeeName);
            dataDevice.append('employeeBranch', employeeBranch);
            dataDevice.append('employeeWorkstation', employeeWorkstation);
            dataDevice.append('deliveryDate', deliveryDate);
            dataDevice.append('deviceColor', deviceColor);
            dataDevice.append('deviceStatus', deviceStatus);
            dataDevice.append('deviceBrand', deviceBrand);
            dataDevice.append('deviceModel', deviceModel);
            dataDevice.append('deviceIMEI', deviceIMEI);
            dataDevice.append('deviceAccount', deviceAccount);
            dataDevice.append('deviceComment', deviceComment);
            dataDevice.append('jobType', jobType);

            var xhr = new XMLHttpRequest();
            xhr.open('POST', 'inc/model/control.php', true);
            xhr.send(dataDevice);
            xhr.onload = function(){
                if (this.status === 200) {
                    var respuesta = JSON.parse(xhr.responseText);
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

if (window.location.href.indexOf("?request=newsmartphone") > -1) {
    var action = 'searchAccount';
    populateDrops(action);
}

function populateDrops(action, accName = ''){
    var dropdown = $("#ipAccount");
    switch(action){
        case 'searchAccount':
            $.ajax({
                url: "inc/model/search.php",
                type:'get',
                data: 'action='+ action,
                dataType: 'json',
                success: function(response) {
                    // console.log(response);
                    for (var i = 0; i < response.length; i++) {
                        dropdown.append('<option value="' + response[i] + '">' + response[i] + '</option>');
                    }
                },
                error: function(xhr) {
                    console.log(xhr);
                }
            });
            break;
        case 'searcheAccount':
            $.ajax({
                url: "inc/model/search.php",
                type:'get',
                data: 'action=' + action + '&param=' + accName,
                dataType: 'json',
                success: function(response) {
                    //PONER NOMBRE DE LA CUENTA GUARDADO EN LA BD PARA EL DISPOSITIVO POR DEFAULT 
                    dropdown.append('<option value="' + accName + '" selected>' + accName + '</option>');
                    for (var i = 0; i < response.length; i++) {
                        dropdown.append('<option value="' + response[i] + '">' + response[i] + '</option>');
                    }
                },
                error: function(xhr) {
                    console.log(xhr);
                }
            });
            break;
        default:
            console.info('No hay parametros especificados');
            break;
    }
}

//EDITAR SMARTPHONE
if (window.location.href.indexOf("?request=editsmartphone") > -1 || window.location.href.indexOf("?request=modifysmartphone") > -1) {
    console.log('Edit Smartphone');
    var jobType = 'querySmartphone';
    var deviceCode = localStorage.getItem('deviceCode'); //OBTENER EL CODIGO DEL EQUIPO DE LA MEMORIA LOCAL DEL NAVEGADOR
    var dataComputer = new FormData();
    dataComputer.append('action', jobType);
    dataComputer.append('deviceCode', deviceCode);
    var xhr = new XMLHttpRequest();
    xhr.open('POST', 'inc/model/data-service.php', true);
    xhr.send(dataComputer);
    xhr.onload = function(){
        if (this.status === 200) {
            var respuesta = JSON.parse(xhr.responseText);
            if (respuesta.status === 'OK') {
                var informacion = respuesta.data;
                for(var i in informacion){
                    editSmartphone(informacion[i]);
                }
            }
        }
    }
}

function editSmartphone(rowInfo){
    var action = 'searcheAccount',
        accName = rowInfo.account;
    $('#ipdeviceCode').val(rowInfo.code_smartphone);
    $('#ipEmployeecode').val(rowInfo.employee_code);
    $('#ipPhone').val(rowInfo.phone_number);
    $('#ipEmployeename').val(rowInfo.employee_name);
    $('#ipBranch').val(rowInfo.branch);
    $('#ipWorkstation').val(rowInfo.area);
    $('#ipDate').val(rowInfo.deliver_date);
    $('#igStatus').val(rowInfo.status);
    $('#ipColour').val(rowInfo.color);
    $('#ipBrand').val(rowInfo.brand);
    $('#ipModel').val(rowInfo.model);
    $('#ipIMEI').val(rowInfo.imei);
    $('#ipAccount').val(rowInfo.account);
    $('#ipComment').val(rowInfo.comment);
    populateDrops(action,accName);
}

$('#btneditSmartphone').click(function(){
    // console.log('EDITAR SMARTPHONE');
    var jobType = 'editSmartphone',
        employeeCode = document.querySelector('#ipEmployeecode').value,
        employeePhone = document.querySelector('#ipPhone').value,
        employeeName = document.querySelector('#ipEmployeename').value,
        employeeBranch = document.querySelector('#ipBranch').value,
        employeeWorkstation = document.querySelector('#ipWorkstation').value,
        deliveryDate = document.querySelector('#ipDate').value,
        deviceStatus = document.querySelector('#igStatus').value,
        deviceColor = document.querySelector('#ipColour').value,
        deviceBrand = document.querySelector('#ipBrand').value,
        deviceModel = document.querySelector('#ipModel').value,
        deviceIMEI = document.querySelector('#ipIMEI').value,
        deviceAccount = document.querySelector('#ipAccount').value,
        deviceComment = document.querySelector('#ipComment').value,
        deviceID = localStorage.getItem('deviceCode');

    if  (
        employeeCode.trim() === '' || employeePhone.trim() === '' ||
        employeeName.trim() === '' || employeeBranch.trim() === '' ||
        employeeWorkstation.trim() === '' || deliveryDate.trim() === '' ||
        deviceStatus.trim() === '' || deviceColor.trim() === '' ||
        deviceBrand.trim() === '' || deviceModel.trim() === '' ||
        deviceIMEI.trim() === '' || deviceAccount.trim() === ''
        ){
            swal({
                type: 'error',
                title: 'Error!',
                text: 'Todos los campos son obligatorios!'
            })
        } else {
            var dataDevice = new FormData();
            dataDevice.append('deviceID', deviceID);
            dataDevice.append('employeeCode', employeeCode);
            dataDevice.append('employeePhone', employeePhone);
            dataDevice.append('employeeName', employeeName);
            dataDevice.append('employeeBranch', employeeBranch);
            dataDevice.append('employeeWorkstation', employeeWorkstation);
            dataDevice.append('deliveryDate', deliveryDate);
            dataDevice.append('deviceColor', deviceColor);
            dataDevice.append('deviceStatus', deviceStatus);
            dataDevice.append('deviceBrand', deviceBrand);
            dataDevice.append('deviceModel', deviceModel);
            dataDevice.append('deviceIMEI', deviceIMEI);
            dataDevice.append('deviceAccount', deviceAccount);
            dataDevice.append('deviceComment', deviceComment);
            dataDevice.append('jobType', jobType);

            var xhr = new XMLHttpRequest();
            xhr.open('POST', 'inc/model/control.php', true);
            xhr.send(dataDevice);
            xhr.onload = function(){
                if (this.status === 200) {
                    var respuesta = JSON.parse(xhr.responseText);
                    if (respuesta.estado === 'OK') {
                        var destination = respuesta.log;
                        Swal.fire({
                                position: 'top-end',
                                title: 'Modificacion de la información exitoso!',
                                text: 'Guardado de la información exitoso!',
                                showConfirmButton: false,
                                timer: 1500,
                                type: 'success'
                            })
                            .then(resultado => {
                                    if(resultado.dismiss === Swal.DismissReason.timer) {
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

//EDITAR SMARTPHONE

//NUEVO RESPONSABLE SMARTPHONE
$('#btnmodSmartphone').click(function(){
    // console.log('NUEVO SMARTPHONE');
    var jobType = 'modSmartphone',
        deviceCode = document.querySelector('#ipdeviceCode').value,
        employeeCode = document.querySelector('#ipEmployeecode_').value,
        employeePhone = document.querySelector('#ipPhone').value,
        employeeName = document.querySelector('#ipEmployeename_').value,
        employeeBranch = document.querySelector('#ipBranch').value,
        employeeWorkstation = document.querySelector('#ipWorkstation').value,
        deliveryDate = document.querySelector('#ipDate_').value,
        deviceStatus = document.querySelector('#igStatus').value,
        deviceColor = document.querySelector('#ipColour').value,
        deviceBrand = document.querySelector('#ipBrand').value,
        deviceModel = document.querySelector('#ipModel').value,
        deviceIMEI = document.querySelector('#ipIMEI').value,
        deviceAccount = document.querySelector('#ipAccount').value,
        deviceComment = document.querySelector('#ipComment').value;


    if  (
        employeeCode.trim() === '' || employeePhone.trim() === '' ||
        employeeName.trim() === '' || employeeBranch.trim() === '' ||
        employeeWorkstation.trim() === '' || deliveryDate.trim() === '' ||
        deviceStatus.trim() === '' || deviceColor.trim() === '' ||
        deviceBrand.trim() === '' || deviceModel.trim() === '' ||
        deviceIMEI.trim() === '' || deviceAccount.trim() === ''
        ){
            swal({
                type: 'error',
                title: 'Error!',
                text: 'Todos los campos son obligatorios!'
            })
        } else {
            var dataDevice = new FormData();
            dataDevice.append('deviceCode', deviceCode);
            dataDevice.append('employeeCode', employeeCode);
            dataDevice.append('employeePhone', employeePhone);
            dataDevice.append('employeeName', employeeName);
            dataDevice.append('employeeBranch', employeeBranch);
            dataDevice.append('employeeWorkstation', employeeWorkstation);
            dataDevice.append('deliveryDate', deliveryDate);
            dataDevice.append('deviceColor', deviceColor);
            dataDevice.append('deviceStatus', deviceStatus);
            dataDevice.append('deviceBrand', deviceBrand);
            dataDevice.append('deviceModel', deviceModel);
            dataDevice.append('deviceIMEI', deviceIMEI);
            dataDevice.append('deviceAccount', deviceAccount);
            dataDevice.append('deviceComment', deviceComment);
            dataDevice.append('jobType', jobType);

            var xhr = new XMLHttpRequest();
            xhr.open('POST', 'inc/model/control.php', true);
            xhr.send(dataDevice);
            xhr.onload = function(){
                if (this.status === 200) {
                    var respuesta = JSON.parse(xhr.responseText);
                    if (respuesta.estado === 'OK') {
                        var destination = respuesta.log;
                       
                        Swal.fire({
                            position: 'top-end',
                            title: 'Guardado exitoso!',
                            text: 'Modificación de la información exitoso!',
                            showConfirmButton: false,
                            timer: 1500,
                            type: 'success'
                        })
                        .then(resultado => {
                                if(resultado.dismiss === Swal.DismissReason.timer) {
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
//NUEVO RESPONSABLE SMARTPHONE


// ELIMINAR SMARTPHONE
function deleteSmartphone (computerRow){    
    var jobType = 'deleteSmartphone',
        deviceCode = computerRow.closest("tr").find(".trCode").text().trim(),
        deviceID = computerRow.closest("tr").find(".trID").text().trim(); 
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
            dataComputer.append('deviceCode', deviceID);
            var xhr = new XMLHttpRequest();
            xhr.open('POST', 'inc/model/control.php', true);
            xhr.send(dataComputer);
            xhr.onload = function(){
                if (this.status === 200) {
                    var respuesta = JSON.parse(xhr.responseText);
                    computerRow.parents("tr").remove();//ELIMINAR LINEA DEL REGISTRO BORRADO
                    if (respuesta.estado === 'OK') {
                        Swal.fire({
                                position: 'top-end',
                                title: 'Registro eliminado!',
                                text: 'El registro ' + deviceCode + ' fue eliminado exitosamente.',
                                showConfirmButton: false,
                                timer: 1500,
                                type: 'success'
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
    })
}

//GOOGLE ACCOUNTS
$('#btnGA').click(function(){
    console.info('Cuentas de google');
    var url = "index.php?request=google-accounts";
    $(location).attr('href',url);
});

if (window.location.href.indexOf("?request=google-accounts") > -1) {
    console.log('Accounts page');
    var action  = 'google-accounts';
    var dataTable = new FormData();
    dataTable.append('action', action);
    var xmlhr = new XMLHttpRequest();
    xmlhr.open('POST', 'inc/model/data-service.php', true);
    xmlhr.onload = function(){
        if (this.status === 200) {
          var respuesta = JSON.parse(xmlhr.responseText);
          if (respuesta.status === 'OK') {
            var informacion = respuesta.data;
            for(var i in informacion){
                accountsTable(informacion[i]);
            }     
          } else if(respuesta.status === 'error'){
            var informacion = respuesta.data;
          }
        }
        }
    xmlhr.send(dataTable);

    function accountsTable(rowInfo){
        
        var row = $("<tr class='secondary'>");
        
        $("#dataTable").append(row); //this will append tr element to table... keep its reference for a while since we will add cels into it
        // NUMERO DE EQUIPO
        row.append($("<td class='trCode'>" + rowInfo.id + " </td>"));
        // NUMERO DE EQUIPO
        row.append($("<td>" + rowInfo.branch + " </td>"));
        // NOMINA DEL EMPLEADO
        row.append($("<td class='trAccount'> " + rowInfo.account + " </td>"));
        // NOMBRE DEL EMPLEADO
        row.append($("<td> " + rowInfo.pwd + " </td>"));
        // TIPO DE SUCURSAL
        row.append($("<td> " + rowInfo.update_date + " </td>"));   
        // COLUMNA ACCION
        row.append($("<td class='text-center'>"
                + "<a tabindex='0' class='btn btn-primary btnEdit' data-id='"+rowInfo.id+"' role='button' title='Editar Registro'><i class='fas fa-pen-square'></i></a>"
                + "<a tabindex='1' class='btn btn-danger btnDelete' data-id='"+rowInfo.id+"' role='button' title='Eliminar registro'><i class='fas fa-trash'></i></a>" 
                + "</td>"));
                
        $(".btnDelete").unbind().click(function() {
            deleteAccount($((this)));
        });

        $(".btnEdit").unbind().click(function() {
            var accountCode = $((this)).data('id'),
                url = "index.php?request=edit-account";
            // console.info(deviceCode);
            localStorage.setItem('accountCode', accountCode);//GUARAR CODIGO DEL EQUIPO EN LA MEMORIA LOCAL DEL NAVEGADOR
            $(location).attr('href',url);
        });

    }    
}

$('#btnsaveAccount').click(function(){
    console.log('SALVAR EQUIPO DE COMPUTO');
    var jobType = 'newAccount',
        accountBranch = document.querySelector('#ipBranch').value,
        accountName = document.querySelector('#ipMail').value,
        accountPassword = document.querySelector('#ipClave').value;

    if  (
        accountBranch.trim() === '' || accountName.trim() === '' ||
        accountPassword.trim() === ''
        ){
            swal({
                type: 'error',
                title: 'Error!',
                text: 'Todos los campos son obligatorios!'
            })
        } else {
            var dataAccount = new FormData();
            dataAccount.append('accountBranch', accountBranch);
            dataAccount.append('accountName', accountName);
            dataAccount.append('accountPassword', accountPassword);
            dataAccount.append('jobType', jobType);

            var xhr = new XMLHttpRequest();
            xhr.open('POST', 'inc/model/control.php', true);
            xhr.send(dataAccount);
            xhr.onload = function(){
                if (this.status === 200) {
                    var respuesta = JSON.parse(xhr.responseText);
                    if (respuesta.status === 'OK') {
                        var destination = respuesta.route;
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

if (window.location.href.indexOf("?request=edit-account") > -1) {
    console.log('Edit Printer');
    var jobType = 'queryAccount';
    var accountCode = localStorage.getItem('accountCode'); //OBTENER EL CODIGO DEL EQUIPO DE LA MEMORIA LOCAL DEL NAVEGADOR
    localStorage.removeItem('accountCode'); //ELIMINAR EL CODIGO DEL EQUIPO DE LA MEMORIA LOCAL DEL NAVEGADOR
    var dataComputer = new FormData();
    dataComputer.append('action', jobType);
    dataComputer.append('accountCode', accountCode);
    var xhr = new XMLHttpRequest();
    xhr.open('POST', 'inc/model/data-service.php', true);
    xhr.send(dataComputer);
    xhr.onload = function(){
        if (this.status === 200) {
            var respuesta = JSON.parse(xhr.responseText);
            if (respuesta.status === 'OK') {
                var informacion = respuesta.data;
                for(var i in informacion){
                    editAccount(informacion[i]);
                }
            }
        }
    }
}

function editAccount(rowInfo){
    $('#_ipaccountID').val(rowInfo.id);
    $('#ipBranch').val(rowInfo.branch);
    $('#ipMail').val(rowInfo.account);
    $('#ipClave').val(rowInfo.pwd);
}

$('#btnupdateAccount').click(function(){
    // console.log('EDITAR EQUIPO DE COMPUTO');
    var jobType = 'editAccount',
        _accountID = document.querySelector('#_ipaccountID').value,
        accountName = document.querySelector('#ipMail').value,
        accountBranch = document.querySelector('#ipBranch').value,
        accountPassword = document.querySelector('#ipClave').value;
    if  (
        accountName.trim() === '' || accountBranch.trim() === '' ||
        accountPassword.trim() === ''
        ){
            swal({
                type: 'error',
                title: 'Error!',
                text: 'Todos los campos son obligatorios!'
            })
        } else {
            var dataAccount = new FormData();
            dataAccount.append('_ipaccountID', _accountID);
            dataAccount.append('accountName', accountName);
            dataAccount.append('accountBranch', accountBranch);
            dataAccount.append('accountPassword', accountPassword);
            dataAccount.append('jobType', jobType);

            var xhr = new XMLHttpRequest();
            xhr.open('POST', 'inc/model/control.php', true);
            xhr.send(dataAccount);
            xhr.onload = function(){
                if (this.status === 200 && this.readyState == 4) {
                    var respuesta = JSON.parse(xhr.responseText);
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

function deleteAccount (accountRow){    
    var jobType = 'deleteAccount',
        accountName = accountRow.closest("tr").find(".trAccount").text(),
        accountID = accountRow.closest("tr").find(".trCode").text(); 
    Swal({
        title: 'Eliminar la cuenta',
        text: '¿Estas seguro de eliminar esta cuenta de correo?',
        type: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        cancelButtonText: 'Cancelar',
        confirmButtonText: 'Si, borrar!'
      }).then((result) => {
        if (result.value) {
            var dataAccount = new FormData();
            dataAccount.append('jobType', jobType);
            dataAccount.append('accountID', accountID);
            var xhr = new XMLHttpRequest();
            xhr.open('POST', 'inc/model/control.php', true);
            xhr.send(dataAccount);
            xhr.onload = function(){
                if (this.status === 200) {
                    var respuesta = JSON.parse(xhr.responseText);
                    accountRow.parents("tr").remove();//ELIMINAR LINEA DEL REGISTRO BORRADO
                    if (respuesta.estado === 'OK') {
                        Swal(
                            'Registro eliminado!',
                            'El registro ' + accountName + ' fue eliminado exitosamente.',
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
          if (respuesta.status === 'OK') {
            var informacion = respuesta.data;
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

    $('.menuLink').removeClass('active');
    $('.computersLink').removeClass('active');
    $('.smartphonesLink').removeClass('active');
    $('.printersLink').addClass('active');
}

if (window.location.href.indexOf("?request=editprinter") > -1) {
    console.log('Edit Printer');
    var jobType = 'queryDevice';
    var deviceCode = localStorage.getItem('deviceCode'); //OBTENER EL CODIGO DEL EQUIPO DE LA MEMORIA LOCAL DEL NAVEGADOR
    localStorage.removeItem('deviceCode'); //ELIMINAR EL CODIGO DEL EQUIPO DE LA MEMORIA LOCAL DEL NAVEGADOR
    var dataComputer = new FormData();
    dataComputer.append('action', jobType);
    dataComputer.append('deviceCode', deviceCode);
    var xhr = new XMLHttpRequest();
    xhr.open('POST', 'inc/model/data-service.php', true);
    xhr.send(dataComputer);
    xhr.onload = function(){
        if (this.status === 200) {
            var respuesta = JSON.parse(xhr.responseText);
            if (respuesta.status === 'OK') {
                var informacion = respuesta.data;
                for(var i in informacion){
                    editDevice(informacion[i]);
                }
            }
        }
    }
}


// ---------------------- HISTORIAL DE EQUIPO DE COMPUTO ------------------------------------------------ //

if (window.location.href.indexOf("?request=history") > -1) {
    console.log('History page');
    var action  = 'oldRegistry';
    var hTable = new FormData();
    hTable.append('action', action);
    var xmlhr = new XMLHttpRequest();
    xmlhr.open('POST', 'inc/model/data-service.php', true);
    xmlhr.onload = function(){
        if (this.status === 200) {
          var respuesta = JSON.parse(xmlhr.responseText);
          if (respuesta.status === 'OK') {
            var informacion = respuesta.data;
            for(var i in informacion){
                historyTable(informacion[i]);
            }     
          } else if(respuesta.status === 'error'){
            var informacion = respuesta.data;
          }
        }
        }
    xmlhr.send(hTable);

    function historyTable(rowInfo){
        
        var row = $("<tr class='table-secondary'>");
        
        $("#dataTable").append(row); //this will append tr element to table... keep its reference for a while since we will add cels into it
        // NUMERO DE EQUIPO
        row.append($("<td class='text-muted trCode'>" + rowInfo.code + " </td>"));
        // NOMINA DEL EMPLEADO
        row.append($("<td> " + rowInfo.id_employee + " </td>"));
        // NOMBRE DEL EMPLEADO
        row.append($("<td> " + rowInfo.names + " </td>"));
        // TIPO DE SUCURSAL
        row.append($("<td> " + rowInfo.position + " </td>"));
        // COLUMNA DEPARTAMENTO
        row.append($("<td>" + rowInfo.mail + "</td>"));
        // COLUMNA MARCA
        row.append($("<td>" + rowInfo.branch + "</td>"));
        // COLUMNA MODELO
        row.append($("<td>" + rowInfo.workstation + "</td>"));
        // COLUMNA # SERIE
        row.append($("<td>" + rowInfo.init_date + "</td>"));
        // COLUMNA # PRODUCTO
        row.append($("<td>" + rowInfo.fin_date + "</td>"));
        
    }
        

}

/***CERRAR SESION***/
function cerrarSesion(){
    console.log('Cerrar sesion');
    var jobType = 'salir';
    var cerrar_sesion = new FormData();
    cerrar_sesion.append('jobType', jobType);
    var xmlhr = new XMLHttpRequest();
    xmlhr.open( 'POST', 'inc/model/control.php', true );
    xmlhr.onload = function(){
        if (this.status === 200){
            var respuesta = JSON.parse(xmlhr.responseText);
            var tipo = respuesta.tipo,
                        titulo = respuesta.mensaje,
                        mensaje = respuesta.informacion;
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
        } else {
            swal({
                title: 'Error!',
                text: 'Hubo un error',
                type: 'error'
            })            
        }
    }
    xmlhr.send(cerrar_sesion);
}
/***CERRAR SESION***/

/** MANTENIMIENTOS **/

if (window.location.href.indexOf("?request=maintControl") > -1) {
    console.log('Maintenance page');
    var action  = 'maintenance';
    var dataTable = new FormData();
    dataTable.append('action', action);
    var xmlhr = new XMLHttpRequest();
    xmlhr.open('POST', 'inc/model/data-service.php', true);
    xmlhr.onload = function(){
        if (this.status === 200) {
          var respuesta = JSON.parse(xmlhr.responseText);
          if (respuesta.status === 'OK') {
            var informacion = respuesta.data;
            for(var i in informacion){
                maintenanceTable(informacion[i]);
            }     
          } else if(respuesta.status === 'error'){
            var informacion = respuesta.data;
          }
        }
        }
    xmlhr.send(dataTable);

    function maintenanceTable(rowInfo){
        
        var st = rowInfo.maint_status,
            estado = '',
            txtEstado = '';
        
        if(st === '0'){
            estado = 'table-danger';
            txtEstado = 'No realizado';
        } else if(st === '1'){
            estado = 'table-success';
            txtEstado = 'Realizado';
        } else if(st === '3'){
            estado = "table-warning";
            txtEstado = 'En proceso';
        }
        var row = $("<tr class='" + estado + "'>");
        
        $("#dataTable").append(row); //this will append tr element to table... keep its reference for a while since we will add cels into it
        // NUMERO DE EQUIPO
        row.append($("<td class='text-muted trCode'>" + rowInfo.id + " </td>"));
        // NOMINA DEL EMPLEADO
        row.append($("<td> " + rowInfo.code + " </td>"));
        // NOMBRE DEL EMPLEADO
        row.append($("<td> " + rowInfo.scheduled_date + " </td>"));
        // TIPO DE SUCURSAL
        row.append($("<td> " + rowInfo.accomplished_date + " </td>"));
        // COLUMNA DEPARTAMENTO
        row.append($("<td>" + txtEstado + "</td>"));
        // COLUMNA ACCION
        row.append($("<td class='text-center'>"
                    + "<a tabindex='0' class='btn btn-sm btn-primary btnEdit' data-code='"+rowInfo.code+"' role='button' title='Editar registro'><i class='fas fa-pen-square'></i></a>"
                    + "<a tabindex='1' class='btn btn-sm btn-warning mx-2 btnHelp' role='button' title='Soporte tecnico'><i class='far fa-bookmark'></i></a>" 
                    + "<a tabindex='2' class='btn btn-sm btn-danger btnDelete' role='button' title='Eliminar registro'><i class='fas fa-trash'></i></a>" 
                    + "</td>"));
                
        // $(".btnDelete").unbind().click(function() {
        //     deleteComputer($(this));
        // });

        // $(".btnEdit").unbind().click(function() {
        //     var deviceCode = $((this)).data('code'),
        //         url = "index.php?request=editcomputer";
        //     localStorage.setItem('deviceCode', deviceCode);//GUARADR CODIGO DEL EQUIPO EN LA MEMORIA LOCAL DEL NAVEGADOR
        //     $(location).attr('href',url);
        // });

    }

}

$('#btn_sked').click(function(){
    var url = "index.php?request=skedMaint";
    $(location).attr('href',url);
});

$('#btn_toChoose').click(function(){
    var url = "index.php?request=chooseMaint";
    var scheduled_date = document.querySelector('#ip_scheduled').value;
    localStorage.setItem('scheduledDate', scheduled_date);//GUARADR CODIGO DEL EQUIPO EN LA MEMORIA LOCAL DEL NAVEGADOR
    $(location).attr('href',url);
});

if (window.location.href.indexOf("?request=chooseMaint") > -1) {
    console.log('Choose computer');
    var action = 'queryMaint';
    var scheduled_date = localStorage.getItem('scheduledDate'); //OBTENER EL CODIGO DEL EQUIPO DE LA MEMORIA LOCAL DEL NAVEGADOR
    var schYear = scheduled_date.substring(0, 4),
        schMonth = scheduled_date.substring(5, 7);
    document.getElementById('txtscheduledDate').innerHTML = scheduled_date;
    var dataMaint = new FormData();
    dataMaint.append('action', action);
    dataMaint.append('scheduled_date', scheduled_date);
    dataMaint.append('year', schYear);
    dataMaint.append('month', schMonth);
    var xmlhr = new XMLHttpRequest();
    xmlhr.open( 'POST', 'inc/model/data-service.php', true );
    xmlhr.onload = function(){
        if (this.status === 200){
            var respuesta = JSON.parse(xmlhr.responseText);
            if (respuesta.status === 'OK') {
                var informacion = respuesta.data;
                for(var i in informacion){
                    populateFields(informacion[i]);
                }     
                } else if(respuesta.status === 'error'){
                    var informacion = respuesta.data;
                }         
        }
    }
    xmlhr.send(dataMaint);

    function populateFields(rowInfo){

        var div = document.createElement('div');
        
        var maint_st = '',
            firstMaint = ["01","02","03","04","05","06"],
            secondMaint = ["07","08","09","10","11","12"];

        if(rowInfo.maintYear === schYear){
            maint_st='disabled';
            
        } else if(rowInfo.maintYear !== schYear & rowInfo.maintMonth !== null) {
            if(firstMaint.indexOf(rowInfo.maintMonth)){
                console.log(rowInfo.code + ' - Primer semestre');
                console.log(rowInfo.maintMonth);
            } else if(secondMaint.indexOf(rowInfo.maintMonth)){ 
                console.log(rowInfo.code + ' - Segundo semestre ');
                console.log(rowInfo.maintMonth);
            }
        }
        

        div.className = 'row';

        div.innerHTML = 
            '<input class="form-check-input" type="checkbox" name="computerCode[]" value="'+rowInfo.code+'" id="'+rowInfo.code+'" ' + maint_st + '>'+
            '<label class="form-check-label" for="'+rowInfo.code+'">'+ rowInfo.code + ' - ' + rowInfo.employee_name + ' - ' + rowInfo.scheduled_date + '</label>';
            
        document.getElementById('computerList').appendChild(div);
                
    }
}


$('#btnSelecteditems').click(function(){
    localStorage.removeItem('scheduledDate'); //ELIMINAR EL CODIGO DEL EQUIPO DE LA MEMORIA LOCAL DEL NAVEGADOR
    var jobType = 'newMaint';
    var items = document.getElementsByName('computerCode[]');
    var len = items.length;
    var itemList = [];
    for (var i=0; i<len; i++) {
        items[i].checked?itemList.push(items[i].value):'';
        
    }
    var dataList = itemList.join(',');
    console.log(dataList);

    var datanewMaint = new FormData();
    datanewMaint.append('jobType', jobType);
    datanewMaint.append('data', dataList);
    datanewMaint.append('date', scheduled_date);
    var xmlhr = new XMLHttpRequest();
    xmlhr.open( 'POST', 'inc/model/control.php', true );
    xmlhr.onload = function(){
        if (this.status === 200){
            var respuesta = JSON.parse(xmlhr.responseText);
            console.log(respuesta);
            if (respuesta.status === 'OK') {
                var log = respuesta.log,
                    route = respuesta.route;
                swal({
                        title: 'Guardado exitoso!',
                        text: log,
                        type: 'success'
                    })
                    .then(resultado => {
                            if(resultado.value) {
                                location.reload();
                                window.location.href = 'index.php?request='+route;
                            }
                        })
                } else if(respuesta.status === 'ERROR'){
                    var log = respuesta.log,
                        route = respuesta.route;
                    swal({
                            title: 'Error en la operación',
                            text: log,
                            type: 'error'
                        })
                        .then(resultado => {
                                if(resultado.value) {
                                    location.reload();
                                    window.location.href = 'index.php?request='+route;
                                }
                            })
                }         
        }
    }
    xmlhr.send(datanewMaint);

});

/**CONTROL DE MANTENIMIENTOS */

$('#btn_maintControl').click(function(){
    // console.log('Control Manteimiento anual');
    var url = "index.php?request=maintControl";
    $(location).attr('href',url);
});

/** MANTENIMIENTOS **/