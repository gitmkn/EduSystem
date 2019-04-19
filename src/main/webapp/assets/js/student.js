
$(function(){
	$(".badge-warning").click(function(){
		var id = $(this).attr('href');
		$.post({
			url:"/user/student/"+id,
		});
	});
});