<form action="">
    <div class="row">
        <div class="col-md-10 offset-md-1">
            <div class="card text-muted text-center bg-light mb-3">
                <div class="card-header">
                <small class="h3">Soporte técnico al equipo <?php echo  $deviceID; ?></small>
                <input type="hidden" id="deviceCode" value="<?php echo  $deviceID; ?>">
                </div>
                <br>
                <h4>Datos del Responsable</h4>
                <div class="card-body">
                    <div class="form-row">
                        <div class="form-group col-md-2">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-id-badge"></i></span>
                                </div>
                                <input type="text" class="form-control" id="ipNomina" disabled> 
                            </div>
                        </div>
                        <div class="form-group col-md-3">
                            <div class="input-group-prepend">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-user-circle"></i></span>
                                </div>
                                <input type="text" class="form-control" id="ipEmployee" disabled>
                            </div>
                        </div>
                        <div class="form-group col-md-4">
                            <div class="input-group-prepend">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-at"></i></span>
                                </div>
                                <input type="text" class="form-control" id="ipMail" disabled>
                            </div>
                        </div>
                        <div class="form-group col-md-3">
                            <div class="input-group-prepend">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-globe-americas"></i></span>
                                </div>
                                <input type="text" class="form-control" id="ipBranch" disabled>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <h4>Datos del Soporte <i class="fas fa-headset"></i></h4>
                    <div class="form-row">
                        <div class="form-group col-md-3">
                            <div class="input-group-prepend">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-exclamation-triangle"></i></span>
                                </div>                        
                                <select class="custom-select" id="igCause">
                                    <option selected>Elige la causa del problema...</option>
                                    <option value="Internet">Internet</option>
                                    <option value="Correo">Correo</option>
                                    <option value="Software">Software</option>
                                    <option value="Hardware">Hardware</option>
                                    <option value="5">Otro</option>
                                    <option value="">Otro</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group col-md-3">
                            <div class="input-group-prepend">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-file-alt"></i></span>
                                </div>                        
                                <input type="text" class="form-control" id="ipReason" placeholder="Razón del problema">
                            </div>
                        </div>
                        <div class="form-group col-md-3">
                            <div class="input-group-prepend">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-traffic-light"></i></span>
                                </div>                        
                                <select class="custom-select" id="igStatus">
                                    <option>Elige el estatus del soporte</option>
                                    <option selected value="1">Realizado</option>
                                    <option value="2">En proceso</option>
                                    <option value="3">Seguimiento</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group col-md-3">
                            <div class="input-group-prepend">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="far fa-calendar-alt"></i></span>
                                </div>
                                <input type="date" class="form-control" id="ipsupportDate" value="<?php echo date("Y-m-d");?>">
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-12">
                            <div class="input-group-prepend">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-comment-dots"></i></span>
                                </div>                        
                                <textarea class="form-control" id="ipComment" aria-label="With textarea" placeholder="Comentarios adicionales"></textarea>
                            </div>
                        </div>
                    </div>
  
                    <br>                                                        
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-10 offset-md-1">
            <button type="button" class="btn btn-primary btn-lg btn-block" id="btnsaveSupport"><i class="fas fa-save"></i> Guardar Información</button>
            <br>
            <a href="javascript:window.open('','_self').close();" class="btn btn-danger btn-lg btn-block"><i class="fas fa-times"></i> Cancelar</a>
        </div>
    </div>
    
    <br>

</form>

<?php include 'inc/templates/support/singular_view.php'?>