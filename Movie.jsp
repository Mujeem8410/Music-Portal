<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.io.File"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Online Music Portal</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="style.css" rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>

</head>
<body class="body">
	<div class="container-fluid head mt-1">
		<h1>Online Music Portal</h1>

	</div>
	<div class="container-fluid ">
		<h2 class="m-3">Select a Movie</h2>
		<div class="container-fluid cont">
			<div class="row">
				<%
				String mname1=request.getParameter("mname");
				String path = application.getRealPath("/Music");
				File file = new File(path);
				File files[] = file.listFiles();

				for (File f : files) {
					if(f.getName().startsWith(mname1))
					{
					String mname = f.getName();
					String mpath = "Music/" + mname + "/poster.jpg";
					%>
					<div class="col-3">
				<a  class="anc" href="Play.jsp?mname=<%=mname%>&cat=Music">
				
					<div class="card" style="width: 20vw;">

						<img src="<%=mpath%>" class="card-img-top" alt="Poster">
						<div class="card-body">
							<p class="card-text mname"><%=f.getName()%></p>
						</div>

					</div>
					</a>
				</div>
				
					
					<% }
				%>
                 
				

				<%
				}
				%>
			</div>
		</div>

		</div>
		<hr>