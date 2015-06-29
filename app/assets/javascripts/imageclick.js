$( document ).ready(function() {
  console.log( "ready!" );
  
  $(".api_column_images").click(function(){
	    var textbox = document.getElementById("article_body").value;
	    var imageID = $(this).attr("id")
	    var newText = textbox + "[image id=\"" + imageID + "\"]";
	    document.getElementById("article_body").value = newText;
	});
});
