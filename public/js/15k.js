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
			emailAgent(data);
		}
	});
}

function emailAgent(data){
	$.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    $.ajax({
		type: 'post',
		url: '/email',
		data: {
			data: data	
		},
		success: function(result){
			window.location.href = '/gracias';
		}
	});
}