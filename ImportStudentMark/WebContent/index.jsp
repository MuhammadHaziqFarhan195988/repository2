<!DOCTYPE html>
<html>
<head>

<script src="https://ajax.googleapis.com/ajax/jquery/3.3.1/jquery.min.js"><</script>
<script>
$(document).ready(
			function(){
			$("form").submit(
				function(event){
					event.preventDefault();
					var formData = new FormData(this);
					$.ajax({
						url : "upload",
						type : 'POST',
						data : formData,
						success : function(data) {
							var row = data;
							for(i=0; i < row.length; i++) {
								var column = row[i];
								var eachrow = "<tr>";
								for(j=0; j< column.length; j++){
									eachrow = eachrow + "<td>" + column[j] + "</td>";
								}
								eachrow= eachrow + "</td>";
								$('#tbody').append(eachthrow);
							}
						},
						cache : false,
						contentType: false,
						processData: false
					});
							});
						});
</script>
</head>
<body>
<form method="multipart/form-data" method="post">
<input type="file" name="file">
<input type="submit" value="Save">
</form>

<table>
		<tbody id="tbody">
		</tbody>
</table>
</body>
</html>