<div class="row">
    <div class="col-md-12">
        <h2 class="display-4 text-center"><i class="fas fa-list"></i> 
        Programar Mantenimiento Anual
        <small class="text-muted"> Equipos Corporativo</small>
        </h2>
    </div>
</div>

<hr>
<br>

<div class="row">
    <div class="col-md-12">
        <form action="">
            <div class="col-md-12">
                <div class="card text-white text-center bg-primary mb-3">
                    <div class="card-header">
                    <small class="text-white h3">1. Elegir fecha de mantenimiento</small>
                    </div>
                    <div class="card-body">
                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <div class="input-group-prepend">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="far fa-calendar-alt"></i></span>
                                    </div>
                                    <input type="date" class="form-control" id="ip_scheduled" value="<?php echo date("Y-m-d");?>">
                                </div>
                            </div>
                                <a class="btn btn-success btn-block" type="button" id="btn_toChoose">Siguiente <i class="fas fa-chevron-circle-right"></i></a>
                                <a class="btn btn-warning btn-block" type="button" onclick="window.history.go(-1); return false;">Regresar <i class="fas fa-chevron-circle-left"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>

