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
    <%
           String location = (String)session.getAttribute("location");
    %>
  
    
    <div class="container-fluid main-container">
  		<div class="col-md-2 sidebar">
  			<div class="row">
	<!-- uncomment code for absolute positioning tweek see top comment in css -->
	<div class="absolute-wrapper"> </div>
	<!-- Menu -->
	<div class="side-menu">
		<nav class="navbar navbar-default" role="navigation">
			<!-- Main Menu -->
			<div class="side-menu-container">
				<ul class="nav navbar-nav">
					<li><a href="admin2.jsp"><span class="glyphicon glyphicon-dashboard"></span> Dashboard</a></li>
                                        <li><a href="talent.jsp?unit=<%=location%>"><span class="glyphicon glyphicon-star"></span> Talents</a></li>
					<li><a href="hiring.jsp?unit=<%=location%>&process=Init. Qualification&page=1"><span class="glyphicon glyphicon-user"></span> Hiring Process</a></li>
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
					<!-- Dropdown
					<li class="panel panel-default" id="dropdown">
						<a data-toggle="collapse" href="#dropdown-lvl1">
							<span class="glyphicon glyphicon-user"></span> Sub Level <span class="caret"></span>
						</a>

						level 1
						<div id="dropdown-lvl1" class="panel-collapse collapse">
							<div class="panel-body">
								<ul class="nav navbar-nav">
									<li><a href="#">Link</a></li>
									<li><a href="#">Link</a></li>
									<li><a href="#">Link</a></li>

									level 2
									<li class="panel panel-default" id="dropdown">
										<a data-toggle="collapse" href="#dropdown-lvl2">
											<span class="glyphicon glyphicon-off"></span> Sub Level <span class="caret"></span>
										</a>
										<div id="dropdown-lvl2" class="panel-collapse collapse">
											<div class="panel-body">
												<ul class="nav navbar-nav">
													<li><a href="#">Link</a></li>
													<li><a href="#">Link</a></li>
													<li><a href="#">Link</a></li>
												</ul>
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</li>-->
                                        
					

				</ul>
			</div><!-- /.navbar-collapse -->
		</nav>