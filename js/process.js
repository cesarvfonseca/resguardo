$(document).ready(function() {
	eventListeners();

	function eventListeners() {
	    document.querySelector('#loginForm').addEventListener('submit', validarRegistro);
	}

	function validarRegistro(e) {
    	e.preventDefault();
    	swal({
              type: 'error',
              title: 'Error!',
              text: 'Ambos campos son obligatorios!'
      	})
	}
});