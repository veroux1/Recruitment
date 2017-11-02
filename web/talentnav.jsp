<nav class="navbar navbar-default navbar-static-top">
    <div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle navbar-toggle-sidebar collapsed">
			MENU
			</button>
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">
				Hi &nbsp;<% out.print(session.getAttribute("user")); %>, Welcome to Aryaduta Talent
			</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">      
			
			<ul class="nav navbar-nav navbar-right" style="padding-right:2%;">
				<li class="dropdown ">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
						Account
						<span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li class="dropdown-header">SETTINGS</li>
							<li class=""><a href="#">Other Link</a></li>
							<li class="divider"></li>
							<li><a href="helper/doLogout.jsp">Logout</a></li>
						</ul>
					</li>
				</ul>
			</div><!-- /.navbar-collapse -->
		</div><!-- /.container-fluid -->
	</nav>  	
    
      
    <div class="container-fluid main-container">
  		<div class="col-md-2 sidebar">
  			<div class="row">
	<!-- uncomment code for absolute positioning tweek see top comment in css -->
	<div class="absolute-wrapper"> </div>
	<!-- Menu -->
        <%
            String location = (String)session.getAttribute("location");
        %>
	<div class="side-menu">
		<nav class="navbar navbar-default" role="navigation">
			<!-- Main Menu -->
			<div class="side-menu-container">
				<ul class="nav navbar-nav">
					<li><a href="admin2.jsp"><span class="glyphicon glyphicon-dashboard"></span> Dashboard</a></li>
                                        <%
                                                    if(session.getAttribute("location") != null && session.getAttribute("location").equals("Head Office"))
                                                    {
                                                %>
					<!-- Dropdown-->
					<li class="panel panel-default" id="dropdown">
						<a data-toggle="collapse" href="#dropdown-lvl1">
							<span class="glyphicon glyphicon-user"></span> Talent <span class="caret"></span>
						</a>
                                                
						<!-- Dropdown level 1 -->
						<div id="dropdown-lvl1" class="panel-collapse collapse">
							<div class="panel-body">
								<ul class="nav navbar-nav">
                                                                        <li><a href="talent.jsp?unit=Head Office">Head Office</a></li>
									<li><a href="talent.jsp?unit=Lippo Village">Lippo Village</a></li>
									<li><a href="talent.jsp?unit=Semanggi">Semanggi</a></li>
									<li><a href="talent.jsp?unit=Jakarta">Jakarta</a></li>
                                                                        <li><a href="talent.jsp?unit=Palembang">Palembang</a></li>
                                                                        <li><a href="talent.jsp?unit=Manado">Manado</a></li>
                                                                        <li><a href="talent.jsp?unit=Pekan Baru">Pekan Baru</a></li>
                                                                        <li><a href="talent.jsp?unit=Makasar">Makasar</a></li>
                                                                        <li><a href="talent.jsp?unit=Medan">Medan</a></li>
								</ul>
							</div>
						</div>
                                               
					</li>
                                         <%
                                            }
                                            else
                                            {
                                         %>
                                        <li><a href="talent.jsp?unit=<%=location%>"><span class="glyphicon glyphicon-star"></span> Talents</a></li>
					<%
                                            }
                                        %>
                                        <li><a href="hiring.jsp?unit=<%=location%>&process=Init.%20Qualification&page=1"><span class="glyphicon glyphicon-user"></span> Hiring Process</a></li>
					<li><a href="createjob.jsp"><span class="glyphicon glyphicon-pencil"></span> Create Job Vacancy</a></li>
                                        <%
                                            if(location.equals("Head Office"))
                                            {
                                        %>
                                        <li><a href="question.jsp"><span class="glyphicon glyphicon-signal"></span> Question</a></li>
                                        <li><a href="createnewadmin.jsp"><span class="glyphicon glyphicon-pencil"></span> Create New Admin</a></li>
                                        <%
                                            }
                                        %>
                                                
					<!--<li><a href="#"><span class="glyphicon glyphicon-signal"></span> Link</a></li>-->

				</ul>
			</div><!-- /.navbar-collapse -->
		</nav>