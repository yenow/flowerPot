<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script src="https://cdn.ckeditor.com/ckeditor5/21.0.0/classic/ckeditor.js"></script>

<style type="text/css">
.margain-write textarea {}
.ck-content {min-height: 500px;}
</style>

</head>
<body>


	<form action="${pageContext.request.contextPath }/magazine/magazine_writer_ok" method="post" class="margain-write">
		제목 : <input type="text" name="title">
		<textarea rows="" cols="" id="editor" ></textarea>
		<input type="file" name="file">
	</form>
  
 <script>
    ClassicEditor
        .create( document.querySelector( '#editor' ) )
        .catch( error => {
            console.error( error );
        } );
    
    
</script>
</body>
</html>