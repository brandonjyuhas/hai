// editing bio and personal link

var ajaxEdits = function(){
		$('#about input[type="text"]').keypress(function(event){
		if (event.which === 13) {
			event.preventDefault();
			var bio = $(this).val();
			var user_id = $('#about').data('id');
			$.ajax({
				type: 'PATCH',
				url: user_id,
				dataType: 'json',
				data: {
					user: {
						bio: bio
					}			
				},
				success: function(){
					$('#about').html('<h4><small>'+ bio +'</small></h4>');
				}
			})
		};
	})
}

$(document).ready(ajaxEdits);