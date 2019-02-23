<form action="">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <div class="card text-white text-center bg-dark mb-3">
                <div class="card-header">
                <small class="text-muted h3">Actualizar Datos de la cuenta</small>
                </div>
                <div class="card-body">
                    <div class="form-row">
                        <div class="form-group col-md-12">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-globe-americas"></i></span>
                                </div>
                                <input type="text" class="form-control" id="ipBranch" placeholder="Sucursal">
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-12">
                            <div class="input-group-prepend">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-at"></i></span>
                                </div>
                                <input type="text" class="form-control" id="ipMail" placeholder="Cuenta de correo electronico">
                                <div class="input-group-append">
                                    <span class="input-group-text">@gmail.com</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-12">
                            <div class="input-group-prepend">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-key"></i></span>
                                </div>                        
                                <input type="text" class="form-control" id="ipClave" placeholder="Contraseña de la cuenta">
                            </div>
                        </div>
                    </div>   
                    <br>                                                        
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6 offset-md-3">
            <button type="button" class="btn btn-primary btn-lg btn-block" id="btnupdateAccount"><i class="fas fa-save"></i> Actualizar Información</button>
            <br>
            <a href="javascript:history.back();" class="btn btn-danger btn-lg btn-block"><i class="fas fa-times"></i> Cancelar </a>
        </div>
    </div>
    
    <br>
    <input type="hidden" class="form-control" id="_ipaccountID" placeholder="Sucursal">

</form>