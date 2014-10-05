// editing bio and personal link

var ajaxEdits = function(){
		$('#about input[type="text"]').keypress(function(event){
		if (event.which === 13) {
			event.preventDefault();
			alert('here')
		};
	})
}

$(document).ready(ajaxEdits);