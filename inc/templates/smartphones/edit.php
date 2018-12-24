<form action="">
    <div class="row">
        <div class="col-md-6">
            <div class="card text-white text-center bg-dark mb-3">
                <div class="card-header">
                <small class="text-muted h3"><i class="fas fa-user"></i> Datos del responsable</small>
                </div>
                <div class="card-body">
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-id-badge"></i></span>
                                </div>
                                <input type="text" class="form-control" id="ipEmployeecode" placeholder="Número de nomina">
                            </div>
                        </div>
                        <div class="form-group col-md-6">
                            <div class="input-group-prepend">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-phone-square"></i></span>
                                </div>
                                <input type="text" class="form-control" id="ipPhone" placeholder="Número de telefono">
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-12">
                            <div class="input-group-prepend">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-user-circle"></i></span>
                                </div>
                                <input type="text" class="form-control" id="ipEmployeename" placeholder="Nombre del responsable">
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <div class="input-group-prepend">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-globe-americas"></i></span>
                                </div>
                                <input type="text" class="form-control" id="ipBranch" placeholder="Sucursal del trabajador">
                            </div>
                        </div>
                        <div class="form-group col-md-6">
                            <div class="input-group-prepend">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-building"></i></span>
                                </div>
                                <input type="text" class="form-control" id="ipWorkstation" placeholder="Panta / departamento">
                            </div>
                        </div>
                    </div> 
                    <blockquote>
                        <footer class="blockquote-footer">Fecha de entrega</footer>
                    </blockquote>
                    <div class="form-row">
                        <div class="form-group col-md-12">
                            <div class="input-group-prepend">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="far fa-calendar-alt"></i></span>
                                </div>
                                <input type="date" class="form-control" id="ipDate" value="<?php echo date("Y-m-d");?>">
                            </div>
                        </div>
                    </div> 
                    <br>                                                        
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="card text-black text-center bg-light mb-3">
                <div class="card-header">
                    <small class="text-muted h3"><i class="fas fa-mobile-alt"></i> Datos del equipo</small>
                </div>
                <div class="card-body">

                    <div class="form-row">

                        <div class="form-group col-md-6">
                            <div class="input-group-prepend">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-check-square"></i></span>
                                </div>
                                <select class="custom-select" id="igStatus">
                                    <option selected>Estatus de equipo...</option>
                                    <option value="1">Activo</option>
                                    <option value="0">Baja</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group col-md-6">
                            <div class="input-group-prepend">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-brush"></i></span>
                                </div>                        
                                <input type="text" class="form-control" id="ipColour" placeholder="Color del equipo">
                            </div>
                        </div>

                    </div>

                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <div class="input-group-prepend">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fab fa-bandcamp"></i></span>
                                </div>                        
                                <input type="text" class="form-control" id="ipBrand" placeholder="Marca del equipo">
                            </div>
                        </div>
                        <div class="form-group col-md-6">
                            <div class="input-group-prepend">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-mobile-alt"></i></span>
                                </div>
                                <input type="text" class="form-control" id="ipModel" placeholder="Modelo del equipo">
                            </div>
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <div class="input-group-prepend">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-barcode"></i></span>
                                </div>                        
                                <input type="text" class="form-control" id="ipIMEI" placeholder="Número IMEI">
                            </div>
                        </div>
                        <div class="form-group col-md-6">
                            <div class="input-group-prepend">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-at"></i></span>
                                </div>
                                <input type="text" class="form-control" id="ipAccount" placeholder="Cuenta de Google">
                            </div>
                        </div>
                    </div>  

                    <div class="form-row">
                        <div class="form-group col-md-12">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-comment-dots"></i></span>
                                </div>
                                <textarea class="form-control" id="ipComment" aria-label="With textarea" placeholder="Comentarios adicionales"></textarea>
                            </div>
                        </div>
                    </div>                   
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <button type="button" class="btn btn-primary btn-lg btn-block" id="btnsaveComputer"> Guardar Información <i class="fas fa-save"></i></button>
            <hr>
            <a href="javascript:history.back();" class="btn btn-danger btn-lg btn-block"> Cancelar <i class="fas fa-times"></i></a>
        </div>
    </div>
    
    <br>

</form>