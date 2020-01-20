<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Document Upload</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body style=" 
margin:0 auto;
padding: 0 20px 20px 20px;
width:600px;
border:2px solid black; 
background-image: -moz-linear-gradient( 136deg, rgb(0,158,253) 0%, rgb(42,245,152) 100%);
    background-image: -webkit-linear-gradient( 136deg, rgb(0,158,253) 0%, rgb(42,245,152) 100%);
    background-image: -ms-linear-gradient( 136deg, rgb(0,158,253) 0%, rgb(42,245,152) 100%);">
<form action="upload" method="post" enctype="multipart/form-data">
<pre>
<h2 style="
    font-size: 30px;
    text-align: center;
    margin: 0%;
    padding: 20px 0;
    color: deepskyblue;
    text-shadow: 3px 3px 1px black ;">Web Document</h2>
Id:       <input type="text" name="id" />
Document: <input class="btn btn-primary" type="file" name ="document" />
<input class="btn btn-success" type="submit" name="submit" value="Upload" />
</pre>
</form>

<table class="table table-sm table-dark">
  <thead>
    <tr class="bg-primary">
     <th scope="col">Id</th>
     <th scope="col">Name</th>
      <th scope="col">Link</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${Documents}" var="document" >
<tr >
<td class="bg-success">${document.id}</td> 
<td class="bg-success">${document.name}</td> 
<td class="bg-success"><a href="download?id=${document.id}" class="btn btn-danger">Download</a></td>
</tr>

</c:forEach>
   
  </tbody>
</table>
</body>
</html>