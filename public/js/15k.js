$(function(){
	$('#salud').click(function(){
		ajax15k($('#id').val(), 'salud');
	});

	$('#vida').click(function(){
		ajax15k($('#id').val(), 'vida');
	});

	$('#auto').click(function(){
		ajax15k($('#id').val(), 'auto');
	});

	$('#hogar').click(function(){
		ajax15k($('#id').val(), 'hogar');
	});
});

function ajax15k(id, opcion){
	$.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
	$.ajax({
		type: 'post',
		url: '/suscrito',
		data: {
			id_contacto: id,
			opcion: opcion
		},
		success: function(data){
			if(data){
				alert(data);
			} else {
				console.log('No se pudo actualizar');
			}
		}
	});
}