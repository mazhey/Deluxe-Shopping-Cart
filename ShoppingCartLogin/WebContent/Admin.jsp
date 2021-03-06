<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Lists</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"
	integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ=="
	crossorigin="anonymous" rel="stylesheet">
<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css"
	integrity="sha384-aUGj/X2zp5rLCbBxumKTCw2Z50WgIr1vs/PFN4praOTvYXWlVyh2UtNUU0KAUhAX"
	crossorigin="anonymous">
</head>
<body>
<div class="container">
<nav class="navbar navbar-default">
      <div class="container">
	<div class="container">
		<div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          
           <c:if test="${not empty myUser}">
          <a class="navbar-brand">ShoppingCart!</a> 
             </c:if>
                <c:if test="${ empty myUser}">
          <a class="navbar-brand" href="Index.html">ShoppingCart!</a> 
             </c:if>
         
          <a class="navbar-brand" href="ShopCartServlet">Products Pool</a>
          <c:if test="${not empty myUser}">
          <a class="navbar-brand" href="#">${myUser.username}</a>
          </c:if>
          <c:if test="${not empty myUser}">
				<a class="navbar-brand" href="LogoutServlet">Log Out</a>
       		</c:if>
          
   
           
              
        </div>

      </div>
      </div>
    </nav>
    </br >
<div class="panel panel-default">

  <div class="panel-body">
		<table class="table table-striped">
<thead>

			<tr>
			    <th>ProductDate</th>
				<th>ProductName</th>
				<th>productQuantity</th>
		        <th>UserID</th>
			</tr>
</thead>
<tbody>

${tableinfo}

</tbody>
		</table>
		
		
 
  
   </div>
   </div>
   </div>
   
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"
		integrity="sha512-K1qjQ+NcF2TYO/eI3M6v8EiNYZfA95pQumfvcVrTHtwQVDG+aHRqLi/ETn2uB+1JqwYqVG3LIvdm9lj6imS/pQ=="
		crossorigin="anonymous"></script>
   
</body>
</html>