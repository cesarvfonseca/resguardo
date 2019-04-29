<form action="">
    <div class="row">
        <div class="col-md-10 offset-md-1">
            <div class="card text-white text-center bg-dark mb-3">
                <div class="card-header">
                <small class="text-muted h3">Nueva cuenta</small>
                </div>
                <div class="card-body">
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-id-badge"></i></span>
                                </div>
                                <input type="text" class="form-control" id="ipNomina" placeholder="Número de nomina">
                            </div>
                        </div>
                        <div class="form-group col-md-6">
                            <div class="input-group-prepend">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-at"></i></span>
                                </div>
                                <input type="text" class="form-control" id="ipMail" placeholder="Cuenta de correo electronico">
                                <div class="input-group-append">
                                    <span class="input-group-text">@mexq.com.mx</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-xs-12">
                            <!-- NOMBRE DEL RESPOSABLE -->
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <div class="input-group-prepend">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-envelope-square"></i></span>
                                </div>                        
                                <select class="custom-select" id="igType">
                                    <option>Elige el tipo de cuenta...</option>
                                    <option selected value="1">Primaria</option>
                                    <option value="2">Secundaria</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group col-md-6">
                            <div class="input-group-prepend">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-check-square"></i></span>
                                </div>
                                <select class="custom-select" id="igStatus">
                                    <option>Estado de la cuenta...</option>
                                    <option selected value="1">Activa</option>
                                    <option value="0">Baja</option>
                                </select>
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
            <button type="button" class="btn btn-primary btn-lg btn-block" id="btnsaveMail"><i class="fas fa-save"></i> Guardar Información</button>
            <br>
            <a href="javascript:history.back();" class="btn btn-danger btn-lg btn-block"><i class="fas fa-times"></i> Cancelar</a>
        </div>
    </div>
    
    <br>

</form>