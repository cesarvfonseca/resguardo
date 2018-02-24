//PC'S Y LAPTOPS
$('#editmq').on('show.bs.modal', function (event) {
	  var button = $(event.relatedTarget) // Button that triggered the modal
	  var recipient0 = button.data('codeemp')


	   // Extract info from data-* attributes
	  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
	  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.

	  var modal = $(this)		 
	  modal.find('.modal-body #codeemp').val(recipient0)
	 
	});

//CUENTAS DE GOOGLE
$('#gaccounts').on('show.bs.modal', function (event) {
	  var button = $(event.relatedTarget) // Button that triggered the modal
	  var recipient0 = button.data('account')
	  var recipient1 = button.data('pwd')
	   // Extract info from data-* attributes
	  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
	  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.

	  var modal = $(this)		 
	  modal.find('.modal-body #account').val(recipient0)
	  modal.find('.modal-body #pwd').val(recipient1)
	});



//SMARTPHONES
//EDITAR
$('#editsp').on('show.bs.modal', function (event) {
	  var button = $(event.relatedTarget) // Button that triggered the modal
	  var recipient0 = button.data('id')
	  var recipient1 = button.data('spcode')
	  var recipient2 = button.data('empcode')
	  var recipient3 = button.data('empname')
	  var recipient4 = button.data('empbranch')
	  var recipient5 = button.data('emparea')
	  var recipient6 = button.data('spcolor')
	  var recipient7 = button.data('spbrand')
	  var recipient8 = button.data('spmodel')
	  var recipient9 = button.data('spimei')
	  var recipient10 = button.data('spaccount')
	  var recipient11 = button.data('empphone')
	  var recipient12 = button.data('spstatus')
	  var recipient13 = button.data('spcomment')

	   // Extract info from data-* attributes
	  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
	  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.

	  var modal = $(this)		 
	  modal.find('.modal-body #id').val(recipient0)
	  modal.find('.modal-body #spcode').val(recipient1)
	  modal.find('.modal-body #empcode').val(recipient2)
	  modal.find('.modal-body #empname').val(recipient3)		 
	  modal.find('.modal-body #empbranch').val(recipient4)		 
	  modal.find('.modal-body #emparea').val(recipient5)		 
	  modal.find('.modal-body #spcolor').val(recipient6)		 
	  modal.find('.modal-body #spbrand').val(recipient7)		 
	  modal.find('.modal-body #spmodel').val(recipient8)		 
	  modal.find('.modal-body #spimei').val(recipient9)		 
	  modal.find('.modal-body #spaccount').val(recipient10)		 
	  modal.find('.modal-body #empphone').val(recipient11)		 
	  modal.find('.modal-body #spstatus').val(recipient12)		 
	  modal.find('.modal-body #spcomment').val(recipient13)		 
	});

$("#spstatus").val();
// $("#spstatus option[value=0]").attr('selected', 'selected');

//AÑADIR RESPONSABLE A SMARTPHONE
$('#addsp').on('show.bs.modal', function (event) {
	  var button = $(event.relatedTarget) // Button that triggered the modal
	  var recipient0 = button.data('id')
	  var recipient1 = button.data('spcode')
	  var recipient2 = button.data('spcolor')
	  var recipient3 = button.data('spbrand')
	  var recipient4 = button.data('spmodel')
	  var recipient5 = button.data('spimei')
	  var recipient6 = button.data('spaccount')
	  var recipient7 = button.data('spstatus')
	  var recipient8 = button.data('spcomment')
	  var recipient9 = button.data('empphone')

	   // Extract info from data-* attributes
	  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
	  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.

	  var modal = $(this)		 
	  modal.find('.modal-body #id').val(recipient0)
	  modal.find('.modal-body #spcode').val(recipient1)
	  modal.find('.modal-body #spcolor').val(recipient2)		 
	  modal.find('.modal-body #spbrand').val(recipient3)		 
	  modal.find('.modal-body #spmodel').val(recipient4)		 
	  modal.find('.modal-body #spimei').val(recipient5)		 
	  modal.find('.modal-body #spaccount').val(recipient6)		 
	  modal.find('.modal-body #spstatus').val(recipient7)		 
	  modal.find('.modal-body #spcomment').val(recipient8)	
	  modal.find('.modal-body #empphone').val(recipient9)	

	});

$(document).ready(function() {
    $("#show_hide_password a").on('click', function(event) {
        event.preventDefault();
        if($('#show_hide_password input').attr("type") == "text"){
            $('#show_hide_password input').attr('type', 'password');
            $('#show_hide_password i').addClass( "fa-eye-slash" );
            $('#show_hide_password i').removeClass( "fa-eye" );
        }else if($('#show_hide_password input').attr("type") == "password"){
            $('#show_hide_password input').attr('type', 'text');
            $('#show_hide_password i').removeClass( "fa-eye-slash" );
            $('#show_hide_password i').addClass( "fa-eye" );
        }
    });
});
