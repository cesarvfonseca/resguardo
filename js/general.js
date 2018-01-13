
var equipo = (function (equipo, undefined )){
	var _disabled = true;

	equipo.llenarModal = function(){
		$(".btn-editar").on("click",function (e){
			e.preventDefault();

			var idEquipo = this.id;

			$.ajax({
				type: "POST",
				url: "views/table.php",

				data: {idEq: idEquipo},
				success:function (data){
					var oDato = JSON.parse(data);
					$('#txtCodeemp').val(oDato[0].id_employee);
				},
			});

		});
	};

})(equipo || {});

$(function (){
	equipo.llenarModal();
});