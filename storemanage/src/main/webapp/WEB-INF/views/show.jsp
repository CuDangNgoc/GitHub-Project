<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	
	  <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
	
	<script type="text/javascript">
	
	$(document).ready(function(){
		
		$.ajax({
			
			url: "http://localhost:8080/traodoivat/rest/listMember",
			type :"get",
			
			success:function(data){
				$("#result").html(data.phone);
				console.log(data);
				
			}
		});
		
	});

	
	</script>
	
	
</head>
<body>

<a href="${pageContext.request.contextPath}/getlist.html">click</a>

<P> 

  </P>
</body>
</html>
