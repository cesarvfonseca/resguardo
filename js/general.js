//PC'S Y LAPTOPS
$('#info').on('show.bs.modal', function (event) {
	  var button = $(event.relatedTarget) // Button that triggered the modal
	  var recipient0 = button.data('empcode')
	  var recipient1 = button.data('empphone')
	  var recipient2 = button.data('empname')
	  var recipient4 = button.data('empposition')
	  var recipient5 = button.data('empmail')
	  var recipient6 = button.data('empbranch')
	  var recipient7 = button.data('emparea')
	  var recipient8 = button.data('computercode')
	  var recipient9 = button.data('computerbrand')
	  var recipient10 = button.data('computermodel')
	  var recipient11 = button.data('computerserial')
	  var recipient12 = button.data('computerproduct')
	  var recipient13 = button.data('computerstatus')
	  var recipient14 = button.data('invoicenbr')
	  var recipient15 = button.data('invoicedate')
	  var recipient16 = button.data('computercomment')
	  var recipient17 = button.data('computertype')
	  var recipient18 = button.data('cartaresponsiva')


	   // Extract info from data-* attributes
	  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
	  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.

	  var modal = $(this)		 
	  modal.find('.modal-body #empcode').val(recipient0)
	  modal.find('.modal-body #empphone').val(recipient1)
	  modal.find('.modal-body #empname').val(recipient2)
	  modal.find('.modal-body #empposition').val(recipient4)
	  modal.find('.modal-body #empmail').val(recipient5)
	  modal.find('.modal-body #empbranch').val(recipient6)
	  modal.find('.modal-body #emparea').val(recipient7)
	  modal.find('.modal-body #computercode').val(recipient8)
	  modal.find('.modal-body #computerbrand').val(recipient9)
	  modal.find('.modal-body #computermodel').val(recipient10)
	  modal.find('.modal-body #computerserial').val(recipient11)
	  modal.find('.modal-body #computerproduct').val(recipient12)
	  modal.find('.modal-body #computerstatus').val(recipient13)
	  modal.find('.modal-body #invoicenbr').val(recipient14)
	  modal.find('.modal-body #invoicedate').val(recipient15)
	  modal.find('.modal-body #computercomment').val(recipient16)
	  modal.find('.modal-body #computertype').val(recipient17)
	  document.getElementById('cartaresponsiva').setAttribute('href', 'controlers/reader.php?file_name=' + recipient11 +'.jpg')
	  document.getElementById('launchPDF').setAttribute('href', 'controlers/reader.php?file_name=' + recipient11 +'.pdf')
	  document.getElementById('launchXML').setAttribute('href', 'controlers/reader.php?file_name=' + recipient11 +'.xml')
	  document.getElementById('computercode').innerHTML = recipient8;
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
$("#spaccount").val();
$("#computerstatus").val();
$("#computertype").val();
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


//USADO PARA CONTRASEÑAS
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


//G ACCOUNTS
//EDITAR
$('#editGmail').on('show.bs.modal', function (event) {
	  var button = $(event.relatedTarget) // Button that triggered the modal
	  var recipient0 = button.data('id')
	  var recipient1 = button.data('branch')
	  var recipient2 = button.data('account')
	  var recipient3 = button.data('pwd')

	  var modal = $(this)		 
	  modal.find('.modal-body #txtID').val(recipient0)
	  modal.find('.modal-body #txtBranch').val(recipient1)
	  modal.find('.modal-body #txtMail').val(recipient2)
	  modal.find('.modal-body #pwd').val(recipient3)
	});