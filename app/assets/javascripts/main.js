$(document).on('ready page:load', function () {

	$('#submitter').click( function() {
		if ($('#article_tag_list').val() == "") {
			$('#article_tag_list').val($('#article_tag_list').val() +  $('#article_sport').val() )
		} else {
			$('#article_tag_list').val($('#article_tag_list').val() + ", " + $('#article_sport').val() )
		}
	 });

	 $('div:contains("Sign in with Facebook")').last().remove()
});
