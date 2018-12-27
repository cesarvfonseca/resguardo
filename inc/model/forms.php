<?php
    if(isset($_GET['accion'])){

        include '../function/connection.php';   
        // $conn = Connect();
        $action  = $_GET['tipo'];

        
        if($action == 'login')
        {
            $user = $_GET['usuario'];
            $password = $_GET['clave'];
            $password = hash('sha512', $password);

            $query = "SELECT pe.employee Anomina, ui.badgenumber Bnomina,pe.emp_name, ui.name,ui.lastname,dp.code,dp.deptname,aw.password
                        FROM 
                        PJEMPLOY pe
                        RIGHT JOIN P1ACCESOWEB aw
                        ON pe.employee = aw.employee
                        INNER JOIN userinfo ui
                        ON RIGHT(ui.badgenumber, 5) = aw.employee
                        INNER JOIN departments dp
                        ON ui.defaultdeptid = dp.deptid
                        WHERE aw.employee = ?"; 

            $params = array($user);//Pasar parametros a las consulta ?
            $stmt = sqlsrv_query( $con, $query, $params );// Asignar parametros al Statement a ejecutar

            if( !$stmt ) {
                $respuesta = array(
                    'estado' => 'NOK',
                    'tipo' => 'error',
                    'mensaje' => 'Error en la conexión a la BD.'
                );
            }

            //Verificar si la consulta regresa resultados, si el usuario exitse
            if ($row = sqlsrv_fetch_array( $stmt, SQLSRV_FETCH_ASSOC)) 
            {  
                $clave_bd = trim($row['password']);
                if( strcasecmp($clave_bd, $password) == 0 )
                {
                    $usuario_activo = trim($row['Bnomina']);
                    $usuario_nombre = trim(ucwords(strtolower($row['name'])));
                    $sesion = true;
                    session_start();//INICIAR LA SESION
                    $respuesta = array(
                        'estado' => 'OK',
                        'ubicacion' => 'main-page',
                        'tipo' => 'success',
                        'mensaje' => 'Ingreso exitoso!',
                        'informacion' => 'Bienvenido',
                        'usuario_activo' => $usuario_activo,
                        'usuario_nombre' => $usuario_nombre,
                        'sesion' => $sesion
                    );
                }else{
                    $sesion = false;
                    $respuesta = array(
                        'estado' => 'OK',
                        'tipo' => 'error',
                        'mensaje' => 'Usuario y clave incorrectos.',
                        'informacion' => 'Las credenciales ingresadas no son válidas.',
                        'sesion' => $sesion
                    );
                }
            }
            //El usuario no existe
            else 
            {
                $sesion = true;
                $respuesta = array(
                    'estado' => 'OK',
                    'tipo' => 'error',
                    'informacion' => 'nO HAY',
                    'mensaje' => 'Usuario y/o clave incorrectos.',
                    'sesion' => $sesion
                    
                );
            }
            echo $_GET['accion'].'('.json_encode($respuesta).')';
           
        }
    }
?>