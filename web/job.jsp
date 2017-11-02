<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	
    <%@ include file="helper/connect.jsp" %>
	<%@ include file="head.jsp"%>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>

<style>
	@import url(http://fonts.googleapis.com/css?family=Anaheim);

*{
  margin: 0;
  padding: 0;
  outline: none;
  border: none;
    box-sizing: border-box;
}
*:before,
*:after{
    box-sizing: border-box;
}
html,
body{
	min-height: 100%;
}


.container1{
	margin: 4% auto;
	width: 210px;
	height: 140px;
	position: relative;
	perspective: 1000px;
}
#carousel{
	width: 100%;
	height: 100%;
	position: absolute;
	transform-style: preserve-3d;
	animation: rotation 20s infinite linear;
}
#carousel:hover{
	animation-play-state: paused;
}
#carousel figure{
	display: block;
	position: absolute;
		width: 90%;
	height: 50%px;
	left: 10px;
	top: 10px;
	
	overflow: hidden;
	border: none;
}
#carousel figure:nth-child(1) {transform: rotateY(0deg) translateZ(288px);}
#carousel figure:nth-child(2) { transform: rotateY(45deg) translateZ(288px);}
#carousel figure:nth-child(3) { transform: rotateY(90deg) translateZ(288px);}
#carousel figure:nth-child(4) { transform: rotateY(135deg) translateZ(288px);}
#carousel figure:nth-child(5) { transform: rotateY(180deg) translateZ(288px);}
#carousel figure:nth-child(6) { transform: rotateY(225deg) translateZ(288px);}
#carousel figure:nth-child(7) { transform: rotateY(270deg) translateZ(288px);}
#carousel figure:nth-child(8) { transform: rotateY(315deg) translateZ(288px);}


img{
	/*-webkit-filter: grayscale(1);*/
	cursor: pointer;
	transition: all .5s ease;
}
img:hover{
/*	-webkit-filter: grayscale(0);
  transform: scale(1.2,1.2); */
}

@keyframes rotation{
	from{
		transform: rotateY(0deg);
	}
	to{
		transform: rotateY(360deg);
	}
}

	 @font-face {
			  font-family: 'Gotham';
			  src: url("assets/fonts/Gotham-Book.ttf"),
				   url("assets/fonts/Gotham-Medium.ttf");
			  
    }
	
	.centered{
		color:#936444; 
		font-family:'Gotham', Gotham-Medium;
		letter-spacing:5px;
	}


</style>


</head>

<body>

  <%@ include file="navbar.jsp"%>
  <h1 class="centered" style="margin-top:125px; margin-bottom: 50px;">Our Department</h1>
  
                <%
                   if(request.getParameter("msg") != null)
                   {
                %>
                <div class="alert alert-info alert-dismissable" style="width: 80%; margin: auto; text-align: center;">
                <a class="panel-close close" data-dismiss="alert">×</a> 
                <i class="fa fa-coffee"></i>
                <%=request.getParameter("msg")%>
                </div>
                <%
                    }
                %>
  
  <div class="container1" style="margin-top:150px; margin-bottom:200px;">
  
  
  <%
  		int total[];
        total = new int[10];
		int count = 0;
		String id[];
		id = new String[10];
  		
  		String query = " select * from departments ";
		ResultSet rs; 
		
		rs = st.executeQuery(query);
		
		while(rs.next())
		{
			id[count] =  rs.getString(1);
                        total[count] = rs.getInt("seat");
			count++;
		}
		
		
		
		
  %>
               
  
  		
        <div id="carousel">
        	<figure><a href="listjob.jsp?name=Human Resource"><img src="assets/img/HR-01.png" alt=""  class="img-responsive"><h4 style="text-align:center;"><b>Human Resource</b></h4><h6 style="text-align:center;"><b><%=total[0]%> position</b></h6></a></figure>
			<figure><a href="listjob.jsp?name=Executive Office"><img src="assets/img/executive office-01.png" alt="" class="img-responsive"><h4 style="text-align:center;"><b>Executive Office</b></h4><h6 style="text-align:center;"><b><%=total[1]%> position</b></h6></a></figure>
			<figure><a href="listjob.jsp?name=Accounting"><img src="assets/img/accounting-01.png" alt=""  class="img-responsive"><h4 style="text-align:center;"><b>Accounting</b></h4><h6 style="text-align:center;"><b><%=total[2]%> position</b></h6></a></figure>
			<figure><a href="listjob.jsp?name=Engineering"><img src="assets/img/engineering 1-01.png" alt=""  class="img-responsive"><h4 style="text-align:center;"><b>Engineering</b></h4><h6 style="text-align:center;"><b><%=total[3]%> position</b></h6></a></figure>
			<figure><a href="listjob.jsp?name=Front Office"><img src="assets/img/front office-01.png" alt=""  class="img-responsive"><h4 style="text-align:center;"><b>Front Office</b></h4><h6 style="text-align:center;"><b><%=total[4]%> position</b></h6></a></figure>
			<figure><a href="listjob.jsp?name=Food and Beverage"><img src="assets/img/food&beverage-01.png" alt=""  class="img-responsive"><h4 style="text-align:center;"><b>Food & Beverage</b></h4><h6 style="text-align:center;"><b><%=total[5]%> position</b></h6></a></figure>
			<figure><a href="listjob.jsp?name=Housekeeping"><img src="assets/img/housekeeping-01.png" alt=""  class="img-responsive"><h4 style="text-align:center;"><b>Housekeeping</b></h4><h6 style="text-align:center;"><b><%=total[6]%> position</b></h6></a></figure>
			<figure><a href="listjob.jsp?name=Sales"><img src="assets/img/sales-01.png" alt=""  class="img-responsive"><h4 style="text-align:center;"><b>Sales</b></h4><h6 style="text-align:center;"><b><%=total[7]%> position</b></h6></a></figure>
			
			
		</div>
  </div>
    
    

   		<%@ include file="footer.jsp"%>

   
    <script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="assets/js/retina.js"></script>
	<script type="text/javascript" src="assets/js/jquery.easing.1.3.js"></script> <!-- slider using this also -->
   
	<script type="text/javascript" src="assets/js/jquery-func.js"></script>
    
</body>
</html>
