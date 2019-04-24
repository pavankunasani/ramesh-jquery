<!DOCTYPE html>
<html>

<body>

	Welcome
	<br />



	<button id="start">Start</button>
	<button id="stop">Stop</button>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#start").click(function() {
				$("#start").attr("disabled", true);
				$("#stop").attr("disabled", false);
				
				// ajax call
				
				   $.ajax({ 
			             type: "GET",
			             dataType: "json",
			             url: "http://localhost:8080/person/getInfo",
			             success: function(data){        
			               
			             },
				   		 error: function(err){
				   			 
				   		 }	
			         }); // ajax call ending
				
				
			});

			$("#stop").click(function() {
				$("#stop").attr("disabled", true);
				$("#start").attr("disabled", false);
			});

		});
	</script>


</body>
</html>
