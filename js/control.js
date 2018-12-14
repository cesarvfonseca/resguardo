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

$('#btnnewComputer').click(function(){
    console.log('Link 3');
    var url = "index.php?request=newcomputer";
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
        // var tittle = $("<th");
        
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
        row.append($("<td class='text-muted'>" + rowInfo.code + " </td>"));
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
                + "<a tabindex='0' class='btn btn-sm btn-primary' id='btnEdit' role='button' title='Editar registro'><i class='fas fa-pen-square'></i></a>"
                + "<a tabindex='1' class='btn btn-sm btn-warning btnHelp mx-1' role='button' title='Soporte tecnico'><i class='far fa-bookmark'></i></a>" 
                + "<a tabindex='1' class='btn btn-sm btn-danger btnEliminar' role='button' title='Eliminar registro'><i class='fas fa-trash'></i></a>" 
                + "</td>"));

    }

}

if (window.location.href.indexOf("?request=smartphone") > -1) {
    console.log('Smartphone page');

}

if (window.location.href.indexOf("?request=printers") > -1) {
    console.log('Printers page');
}

if (window.location.href.indexOf("?request=newcomputer") > -1) {
    console.log('New Computer');

}

//GUARDAR EQUIPO DE COMPUTO
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
        invoiceDate = document.querySelector('#ipInvoicedate').value;

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
            dataComputer.append('fileAttach', fileAttach);
            dataComputer.append('jobType', jobType);

            var xhr = new XMLHttpRequest();
            xhr.open('POST', 'inc/model/control.php', true);
            xhr.send(dataComputer);
            xhr.onload = function(){
                if (this.status === 200) {
                    var respuesta = JSON.parse(xhr.responseText);
                    console.log(respuesta);
                    // if (respuesta.estado === 'correcto') {
                    //     swal({
                    //             title: 'Guardado exitoso!',
                    //             text: 'Guardado de la información exitoso!',
                    //             type: 'success'
                    //         })
                    //         .then(resultado => {
                    //                 if(resultado.value) {
                    //                     location.reload();
                    //                 }
                    //             })
                    // } else {
                    //     // Hubo un error
                    //     swal({
                    //         title: 'Error!',
                    //         text: 'Hubo un error',
                    //         type: 'error'
                    //     })
                    // }
                }
            }            
        }
});

//BUSQUEDA DE INFROMACION
$('#search').keyup(function(){
    var txtSearch = this.value,
        action = 'query';
    // console.log(txtSearch);
    $('#dataTable').empty();
    var searchData = new FormData();
        searchData.append('txtSearch',txtSearch);
        searchData.append('action',action);
        var xmlhr = new XMLHttpRequest();
        xmlhr.open('POST', 'inc/model/data-service.php', true);
        xmlhr.onload = function(){
        if (this.status === 200) {
          var respuesta = JSON.parse(xmlhr.responseText);
          console.log(respuesta);
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
        xmlhr.send(searchData);        
});
