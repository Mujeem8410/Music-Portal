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
<link href="style1.css" rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
	
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
		<h2 class="m-3">Recently Song</h2>
		<div class="container-fluid cont">
			<div class="row">
				<%
				
				String path = application.getRealPath("/Recently");

				File file = new File(path);
				File files[] = file.listFiles();

				for (File f : files) {
					String mname = f.getName();
					String mpath = "Recently/" + mname + "/poster.jpg";
				%>

				<div class="col-3">
					<a class="anc" href="Play.jsp?mname=<%=mname%>&cat=Recently">

						<div class="card" style="width: 20vw;">

							<img src="<%=mpath%>" class="card-img-top" alt="Poster">
							<div class="card-body">
								<p class="card-text mname"><%=f.getName()%></p>
							</div>

						</div>
					</a>
				</div>


				<%
				}
				%>
			</div>
		</div>

	</div>
	<hr>
	<div class="container-fluid m-5 ">
		<h2>Select your Movie</h2>
		<%
		for (int i = 65; i <= 90; i++) {
		%>
		<b><a class="ac" href="Movie.jsp?mname=<%=(char) i%>"><%=(char) i%></a></b>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<%
		}
		%>


	</div>
	<hr>
	<div class="container mb-5">
    <div class="scrolling-wrapper">
      <%
      String spath = application.getRealPath("/Singer");

      File sfile = new File(spath);
      File sfiles[] = sfile.listFiles();
      for (File f : sfiles) {
        String singerName = f.getName();
        String poster = "Singer/" + singerName + "/poster.jpeg";
      %>
      <a href="Play.jsp?mname=<%=singerName%>&cat=Singer">
      <div class="card">
        <img src="<%=poster%>" class="card-img-top" alt="Poster" style="height: 320px;">
        <div class="card-body">
          <p class="card-text mname"><%=singerName%></p>
        </div>
      </div>
      </a>
      <% } %>
      
      <!-- Optional: duplicate the cards for smooth scrolling -->
      <%
      for (File f : sfiles) {
        String singerName = f.getName();
        String poster = "Singer/" + singerName + "/poster.jpeg";
      %>
      <a href="Play.jsp?mname=<%=singerName%>&cat=Singer">
      <div class="card">
        <img src="<%=poster%>" class="card-img-top" alt="Poster" style="height: 320px;">
        <div class="card-body">
          <p class="card-text mname"><%=singerName%></p>
        </div>
      </div>
      </a>
      <% } %>

    </div>
  </div>
  <hr>
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>