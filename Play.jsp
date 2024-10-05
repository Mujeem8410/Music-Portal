<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.io.File"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Online Music Portal</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="play.css" rel="stylesheet">
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
<body>
	<div class="container">
		<%
		String mname = request.getParameter("mname");
		String mainpath = request.getParameter("cat");
		String path = application.getRealPath("/" + mainpath + "/" + mname);

		File file = new File(path);
		File files[] = file.listFiles();

		for (File f : files) {
			if (f.getName().startsWith("poster")) {
				// Dynami
				String posterPath = mainpath +"/" + mname + "/" + f.getName();
		%>
		<div class="card mb-3 play-card mt-2">
			<img src="<%=posterPath%>" class="card-img-top poster-image"
				alt="Poster for <%=mname%>">
			<div class="card-body">
				<h5 class="card-title"><%=mname%></h5>
			</div>
		</div>
		<%
		}

		}
		%>
       
		<%
		for (File f : files) {
			if (f.getName().endsWith(".mp3")) {

				String songpath = mainpath +"/" + mname + "/" + f.getName();
		%>
         <div class="card mb-3 song-card">
         <div class="card-header">
         
		 <span><%=f.getName()%>&nbsp;&nbsp;<p class="mt-3"><audio controls="controls">
			<source src="<%=songpath%>" type=audio/mp3>
		</audio>
		</p></span>
         </div>
		
		</div>
	

		<%
		}
			
	    }
		%>
		
			

	</div>
	  <script>
  
    const audios = document.querySelectorAll('audio');

    
    audios.forEach(audio => {
      audio.addEventListener('play', () => {
       
        audios.forEach(otherAudio => {
          if (otherAudio !== audio) {
            otherAudio.pause();
          }
        });
      });
    });
  </script>
</body>
</html>