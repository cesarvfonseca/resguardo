<?php
    header('Access-Control-Allow-Origin: *');
    header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method");
    header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
    header("Allow: GET, POST, OPTIONS, PUT, DELETE");
    $method = $_SERVER['REQUEST_METHOD'];
    if($method == "OPTIONS") {
        die();
    }

        include '../function/connection.php';   
        $action  = $_POST['action'];
        
        if($action == 'login')
        {
            // die(json_encode($_POST));
            $user = $_POST['usuario'];
            $password = $_POST['clave'];
            $password = hash('sha512', $password);

            $query = "SELECT aw.employee Anomina, ui.badgenumber Bnomina,pe.emp_name, ui.name,ui.lastname,dp.code depto_id,dp.deptname,aw.password
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

            // die(json_encode($params));


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
                    $usuario_activo = trim($row['employee']);
                    $usuario_departamento = trim($row['depto_id']);
                    $usuario_nombre = trim(ucwords(strtolower($row['name'])));
                    $sesion = true;
                    // session_start();//INICIAR LA SESION
                    $respuesta = array(
                        'estado' => 'OK',
                        'ubicacion' => 'main-page',
                        'tipo' => 'success',
                        'mensaje' => 'Ingreso exitoso!',
                        'informacion' => 'Bienvenido',
                        'usuario_activo' => $usuario_activo,
                        'usuario_departamento' => $usuario_departamento,
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
                    'informacion' => 'No existe usuario',
                    'mensaje' => 'Usuario y/o clave incorrectos.',
                    'sesion' => $sesion
                    
                );
            }
            echo json_encode($respuesta);
        }
?>