<div class="row">
    <div class="section">
        <div class="col m4"></div>
        <form class="col m4" role="form" autocomplete="off" id="loginForm" method="POST">
            <div class="card">
                <div class="row card-panel">
                    <div class="card-image">
                        <img src="https://images.pexels.com/photos/60504/security-protection-anti-virus-software-60504.jpeg?auto=compress&cs=tinysrgb&h=350" alt="" class="responsive-img">
                        <span class="card-title">Acceso al sistema</span>
                    </div>
                    <hr>
                    <div class="input-field col s12">
                        <i class="material-icons prefix">account_circle</i>
                        <input type="text" id="txtUser" class="validate">
                        <label for="txtUser">Ingresar usuario</label>
                    </div>
                    <div class="input-field col s12">
                        <i class="material-icons prefix">vpn_key</i>
                        <input type="password" id="txtPwd" class="validate">
                        <label for="txtPwd">Ingresar clave</label>
                    </div>
                    <div class="col s12">
                        <button class="btn waves-effect waves-light btn-block green" type="submit" id="btnEntrar">
                            Entrar
                            <input type="hidden" id="type" value="login">
                        </button>

                    </div>
                </div>
            </div>
        </form>
        <div class="col m4"></div>
    </div>
</div>