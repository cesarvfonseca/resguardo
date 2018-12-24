<form action="" enctype="multipart/form-data">
    <div class="row">
        <div class="col-md-6">
            <div class="card text-white text-center bg-dark mb-3">
                <div class="card-header">
                <small class="text-muted h3">Datos del responsable</small>
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
                                    <span class="input-group-text"><i class="fas fa-briefcase"></i></span>
                                </div>                        
                                <input type="text" class="form-control" id="ipPosition" placeholder="Puesto del trabajador">
                            </div>
                        </div>
                        <div class="form-group col-md-6">
                            <div class="input-group-prepend">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-at"></i></span>
                                </div>
                                <input type="text" class="form-control" id="ipMail" placeholder="Correo electronico">
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

                    <blockquote>
                        <footer class="blockquote-footer">Carta Responsiva</footer>
                    </blockquote>

                    <div class="form-row">
                        <div class="form-group col-md-12">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-camera"></i></span>
                                </div>
                                <div class="custom-file">
                                    <input type="file" class="custom-file-input" id="ipResponsive" aria-describedby="inputGroupFileAddon01">
                                    <label class="custom-file-label" for="ipResponsive">Carta Responsiva</label>
                                </div>
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
                    <small class="text-muted h3">Datos del equipo</small>
                </div>
                <div class="card-body">

                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <div class="input-group-prepend">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-desktop"></i></span>
                                </div>                        
                                <select class="custom-select" id="igType">
                                    <option selected>Elige el tipo de equipo...</option>
                                    <option value="MQ">Laptop</option>
                                    <option value="PC">Escritorio</option>
                                    <option value="MQ">All In One</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group col-md-6">
                            <div class="input-group-prepend">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-check-square"></i></span>
                                </div>
                                <select class="custom-select" id="igStatus">
                                    <option selected>Elige el status de equipo...</option>
                                    <option value="A">Activo</option>
                                    <option value="I">Baja</option>
                                    <option value="X">En soporte</option>
                                </select>
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
                                    <span class="input-group-text"><i class="fas fa-laptop"></i></span>
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
                                <input type="text" class="form-control" id="ipSerie" placeholder="Número de serie">
                            </div>
                        </div>
                        <div class="form-group col-md-6">
                            <div class="input-group-prepend">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fab fa-product-hunt"></i></span>
                                </div>
                                <input type="text" class="form-control" id="ipProduct" placeholder="Número de producto">
                            </div>
                        </div>
                    </div>  

                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <div class="input-group-prepend">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-file-invoice"></i></span>
                                </div>                        
                                <input type="text" class="form-control" id="ipInvoicenbr" placeholder="Número de factura">
                            </div>
                        </div>
                        <div class="form-group col-md-6">
                            <div class="input-group-prepend">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="far fa-calendar-alt"></i></span>
                                </div>
                                <input type="date" class="form-control" id="ipInvoicedate" value="<?php echo date("Y-m-d");?>">
                            </div>
                        </div>
                    </div>
                    
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <div class="input-group-prepend">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-parachute-box"></i></span>
                                </div>                        
                                <input type="text" class="form-control" id="ipSupplier" placeholder="Proveedor">
                            </div>
                        </div>
                        
                        <div class="form-group col-md-6">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-file-pdf"></i></span>
                                </div>
                                <div class="custom-file">
                                    <input type="file" class="custom-file-input" id="ipAttach" aria-describedby="inputGroupFileAddon01">
                                    <label class="custom-file-label" for="ipAttach">Adjuntar Factura PDF</label>
                                </div>
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

                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <a href="" class="btn btn-outline-info btn-block" type="button" target="_blank" id="showPDF">Ver Factura</a>
                        </div>
                        <div class="form-group col-md-6">
                            <a href="" class="btn btn-outline-success btn-block" type="button" target="_blank" id="showIMG">Ver Carta responsiva</a>
                        </div>
                    </div>                    

                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <button type="button" class="btn btn-primary btn-lg btn-block" id="btnEditcomputer">Modificar Información <i class="fas fa-edit"></i></button>
            <hr>
            <a href="javascript:history.back();" class="btn btn-danger btn-lg btn-block">Cancelar <i class="fas fa-times"></i></a>
        </div>
    </div>
    
    <br>
    <input type="hidden" class="form-control" id="ipdeviceCode" readonly>
    <input type="hidden" class="form-control" id="ipEmployeecode_" readonly>
    <input type="hidden" class="form-control" id="ipEmployeename_" readonly>
    <input type="hidden" class="form-control" id="ipPosition_" readonly>
    <input type="hidden" class="form-control" id="ipMail_" readonly>
    <input type="hidden" class="form-control" id="ipBranch_" readonly>
    <input type="hidden" class="form-control" id="ipWorkstation_" readonly>
    <input type="hidden" class="form-control" id="ipDate_" readonly>

</form>