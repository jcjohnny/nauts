$(document).on('ready page:load', function () {

	$('#submitter').click( function() {
		if ($('#article_tag_list').val() == "") {
			$('#article_tag_list').val($('#article_tag_list').val() +  $('#article_sport').val() )
		} else {
			$('#article_tag_list').val($('#article_tag_list').val() + ", " + $('#article_sport').val() )
		}
	 });

	 $('a:contains("Sign in with")').remove();
	 $('h2:contains("Log in")').wrap("<div class='headpart'></div>)");
 $('h2:contains("Sign up")').wrap("<div class='headpart'></div>)");
});
