<?php
    include 'inc/function/connection.php';
    $conn = Connect();
    $conn -> query("SET NAMES utf8");
    $deviceCode = $_REQUEST['deviceCode'];
    $query = "SELECT r.*,hashCode.*
    FROM (SELECT SHA2(registry.code, 512) AS codeHash,registry.code,registry.id_employee FROM registry) AS hashCode
    INNER JOIN registry AS r ON hashCode.code = r.code
    WHERE hashCode.codeHash = ?";
        $stmnt = $conn -> prepare($query);
        $stmnt -> bindParam(1, $deviceCode);
        $stmnt -> execute();
        while($row = $stmnt -> fetch(PDO::FETCH_ASSOC)){
            $data_employeecode = $row['id_employee'];
            $data_employeename = $row['employee_name'];
            $data_employeposition = $row['position'];
            $data_employemail = $row['mail'];
            $data_employebranch = $row['branch'];
            $data_employearea = $row['workstation'];
            $data_employephone = $row['phone'];
            $data_devicebrand = $row['brand'];
            $data_deliverydate = $row['date'];
            $data_devicecode = $row['code'];
            $data_devicemodel = $row['model'];
            $data_deviceserie = $row['serial'];
            $data_deviceproduct = $row['product'];
            $data_invoice = $row['invoicenbr'];
            $data_invoicedate = $row['invoicedate'];
            $data_provider = $row['supplier'];
            $data_comments = $row['comment'];
            $data_devicetype = $row['type'];

            switch ($data_devicetype){
                case 'MQ' : $data_devicetype = 'Laptop'; break;
                case 'PC' : $data_devicetype = 'Desktop'; break;
                case 'MF' : $data_devicetype = 'Multifuncional'; break;
                case 'SP' : $data_devicetype = 'Smartphone'; break;
                default : $data_devicetype = 'N/A'; break;
            }
        }
?>
<div class="row">
        <div class="col-md-8 offset-md-2">
        <div class="jumbotron">
            <h1 class="display-4 text-center text-muted">Datos del registro</h1>
            <hr class="my-4">
            <blockquote class="blockquote text-center h1 bold"><strong>DATOS DEL RESPONSABLE</strong></blockquote>
            <hr class="my-4">
            <dl class="row text-left">
                <dt class="col-md-2">
                    Número de nomina:
                </dt>
                <dd class="col-md-1">
                    <?php echo $data_employeecode;  ?>
                </dd>
                <dt class="col-md-1">
                    Nombre:
                </dt>
                <dd class="col-md-4">
                    <?php echo $data_employeename;  ?>
                </dd>
                <dt class="col-md-1">
                    Correo:
                </dt>
                <dd class="col-md-3">
                    <?php echo $data_employemail;  ?>
                </dd>
                <br>
                <dt class="col-md-1">
                    Sucursal:
                </dt>
                <dd class="col-md-2">
                    <?php echo $data_employebranch;  ?>
                </dd>
                <dt class="col-md-1">
                    Puesto:
                </dt>
                <dd class="col-md-4">
                    <?php echo $data_employeposition;  ?>
                </dd>
                <dt class="col-md-1">
                    Área:
                </dt>
                <dd class="col-md-3">
                    <?php echo $data_employearea;  ?>
                </dd>
                <dt class="col-md-1">
                Telefono:
                </dt>
                <dd class="col-md-2">
                    <?php echo $data_employephone;  ?>
                </dd>
                <dt class="col-md-2">
                    Fecha de entrega:
                </dt>
                <dd class="col-md-4">
                    <?php echo $data_deliverydate;  ?>
                </dd>
            </dl>
            <hr class="my-4">
            <blockquote class="blockquote text-center h1 bold"><strong>DATOS DEL EQUIPO</strong></blockquote>
            <hr class="my-4">
            <dl class="row text-left">
                <dt class="col-md-1">
                    Tipo:
                </dt>
                <dd class="col-md-2">
                    <?php echo $data_devicetype;  ?>
                </dd>
                <dt class="col-md-1">
                    Codigo:
                </dt>
                <dd class="col-md-1">
                    <?php echo $data_devicecode;  ?>
                </dd>
                <dt class="col-md-1">
                    Marca:
                </dt>
                <dd class="col-md-2">
                    <?php echo $data_devicebrand;  ?>
                </dd>
                <dt class="col-md-1">
                    Modelo:
                </dt>
                <dd class="col-md-3">
                    <?php echo $data_devicemodel;  ?>
                </dd>

                <br>

                <dt class="col-md-2">
                    Número de serie:
                </dt>
                <dd class="col-md-4">
                    <?php echo $data_deviceserie;  ?>
                </dd>
                <dt class="col-md-2">
                    Número de producto:
                </dt>
                <dd class="col-md-4">
                    <?php echo $data_deviceproduct;  ?>
                </dd>

                <br>

                <dt class="col-md-1">
                    Proveedor:
                </dt>
                <dd class="col-md-3">
                    <?php echo $data_provider;  ?>
                </dd>
                <dt class="col-md-1">
                    Factura:
                </dt>
                <dd class="col-md-3">
                    <?php echo $data_invoice;  ?>
                </dd>
                <dt class="col-md-2">
                    Fecha Factura:
                </dt>
                <dd class="col-md-2">
                    <?php echo $data_invoicedate;  ?>
                </dd>

            </dl>
            <hr class="my-1">
            <p><?php echo $data_comments;  ?></p>
            <a class="btn btn-primary btn-lg btn-block" href="http://mexq.com.mx/" role="button">Ir a Inicio <i class="fas fa-home"></i></a>
        </div>
        </div>
</div>