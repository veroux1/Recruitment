<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>

<%@ include file="head.jsp"%>
 <link href="assets/css/admin.css" rel="stylesheet">
 
 <style>
 	.well-block {
    background-color: #fff;
    padding: 40px;
	}

	.well-title {
		margin-top: 40px;
	}
 </style>
 

</head>

<body>

<%
	if(session.getAttribute("userPosition") == null || !session.getAttribute("userPosition").equals("Admin"))
	{
		response.sendRedirect("index.jsp?msg=You are not authorized to access this page!");
	}
	else if(session.getAttribute("userPosition").equals("Admin"))
	{
%>

	<%@ include file="adminnav.jsp" %>

	</div>
</div>  	
	
</div>

  	<div class="col-md-10 content">
  	<div class="panel panel-default">
            <div class="panel-heading">
                Create / Edit Job Ad
            </div>
	<div class="panel-body">
		 <div class="container">
            <div class="row">
            <div class="col-md-2">
            </div>
                <div class="col-md-7">
                    <div class="well-block">
                       
                        <form action="helper/doCreateJob.jsp" method="post">
                            <!-- Form start -->
                            <div class="row">
                             <div class="well-title">
                            	<h2>Job Details</h2>
                                <br />
                        	 </div>
                               <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="control-label">Department</label>
                                        <select name="department" class="form-control">
                                            <option value="Human Resource">Human Resource</option>
                                            <option value="Executive Office">Executive Office</option>
                                            <option value="Accounting">Accounting</option>
                                            <option value="Engineering">Engineering</option>
                                            <option value="Front Office">Front Office</option>
                                            <option value="Food and Beverage">Food & Beverage</option>
                                            <option value="Housekeeping">Housekeeping</option>
                                            <option value="Sales">Sales & Marketing</option>
                                            <option value="Golf Operation">Golf Operation</option>
                                            <option value="House Maintenance">House Maintenance</option>
                                            <option value="Golf Course Maintenance">Golf Course Maintenance</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label">Position Title</label>
                                        <select name="position" class="form-control" id="position">
                                            <option value="Asst. Chief Security">Asst. Chief Security</option>
                                            <option value="Asst. HR  GA Manager">Asst. HR  GA Manager</option>
                                            <option value="Chief of Security">Chief of Security</option>
                                            <option value="HR  GA Officer">HR  GA Officer</option>
                                            <option value="HR  GA Supervisor">HR  GA Supervisor</option>
                                            <option value="HR & GA Manager">HR & GA Manager</option>
                                            <option value="Messenger">Messenger</option>
                                            <option value="Security">Security</option>
                                            <option value="Training Manager">Training Manager</option>
                                            <option value="Training Supervisor">Training Supervisor</option>
                                        </select>
                                    </div>
                                </div>
                                <!-- Text input-->
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label" >Location</label>
                                        <select name="location" class="form-control">
                                            <option value="Head Office">Head Office</option>
                                            <option value="Lippo Village">Lippo Village</option>
                                            <option value="Semanggi">Semanggi</option>
                                            <option value="Jakarta">Jakarta</option>
                                            <option value="Palembang">Palembang</option>
                                            <option value="Manado">Manado</option>
                                            <option value="Pekan Baru">Pekanbaru</option>
                                            <option value="Makassar">Makassar</option>
                                            <option value="Medan">Medan</option>
                                            <option value="Bali">Bali</option>
                                            <option value="Imperial Klub Golf">Imperial Klub Golf</option>
                                        </select>
                                    </div>
                                </div>
                                
                                 <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label" >Seats</label>
                                        <input name="seats" type="text" placeholder="Input number of Seat(s)" class="form-control input-md">
                                    </div>
                                </div>
                                
                                <div class="col-md-6" style="margin-bottom:50px;">
                                    <br />
                                    <br />
                                </div>
                                
                                <div class="well-title">
                                	
                            		<h2>Requirements</h2>
                                    <br />
                        	 	</div>
                               
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="control-label" for="appointmentfor">Education Level</label>
                                        <select name="education" class="form-control">
                                            <option value="SMU">SMU</option>
                                            <option value="Diploma">Diploma</option>
                                            <option value="Bachelor Degree">Bachelor's Degree</option>
                                            <option value="Master Degree/Post Graduate Degree">Master's Degree/Post Graduate Degree</option>
                                            <option value="Doctorate">Doctorate</option>
                                        </select>
                                    </div>
                                </div>
                               
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label">Field of Studies</label>
                                        <select id="FoS" name="FoS" class="form-control">
                                            <option value="Business /  Administration / Management">Business /  Administration / Management</option>
                                            <option value="Engineering">Engineering</option>
                                            <option value="Computer Science / Information Technology">Computer Science / Information Technology</option>
                                            <option value="Finance / Accountancy / Banking">Finance / Accountancy / Banking</option>
                                            <option value="Marketing">Marketing</option>
                                            <option value="Human Resource Management">Human Resource Management</option>
                                            <option value="Secretarial">Secretarial</option>
                                            <option value="Food and Beverages Management">Food and Beverages Management</option>
                                            <option value="Advertising / Media">Advertising / Media</option>
                                            <option value="Art / Design / Creative Multimedia">Art / Design / Creative Multimedia</option>
                                            <option value="Mass Communication">Mass Communication</option>
                                            <option value="Psychology">Psychology</option>
                                            <option value="Architecture">Architecture</option>
                                            <option value="Education / Teaching / Training">Education / Teaching / Training</option>
                                            <option value="Hospitality / Tourism / Hotel Management">Hospitality / Tourism / Hotel Management</option>
                                            <option value="Law">Law</option>
                                            <option value="Urban Studies / Town Planning">Urban Studies / Town Planning</option>
                                            <option value="Others">Others</option>
                                        </select>
                                    </div>
                                </div>
                                
                                 <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label">&nbsp;</label>
                                        <br />
                                       
                                        <input id="any" type="checkbox" value="Any Fields" name="any" style="height:20px;  margin:0;"><p style="padding:0px; margin:0px; font-size:15px;">Any Fields</p>
                                    </div>
                                </div>
                                
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label">Years of Experience</label>
                                        <input name="experience" type="text" placeholder="Input years of experience" class="form-control input-md">
                                    </div>
                                </div>
                                
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label">Language</label>
                                        <input name="language" type="text" placeholder="Input language" class="form-control input-md">
                                    </div>
                                </div>
                                
                                
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="control-label">Job Description</label>
                                        <textarea rows="6" cols="50" name="description" class="form-control input-md" id="description"></textarea>
                                    </div>
                                </div>
                                
                                <!-- Button -->
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <input type="submit" id="singlebutton" name="singlebutton" class="btn btn-default" value="Submit">
                                    </div>
                                </div>
                            </div>
                        </form>
                        <!-- form end -->
                    </div>
                </div>
                
        </div>       
    
	</div>
</div>
  		</div>
  	
  	</div>
    
    <%
		}
	%>

<script>
	$(function () {
  	$('.navbar-toggle-sidebar').click(function () {
  		$('.navbar-nav').toggleClass('slide-in');
  		$('.side-body').toggleClass('body-slide-in');
  		$('#search').removeClass('in').addClass('collapse').slideUp(200);
  	});

  	$('#search-trigger').click(function () {
  		$('.navbar-nav').removeClass('slide-in');
  		$('.side-body').removeClass('body-slide-in');
  		$('.search-input').focus();
  	});
  });
</script>

<!-- for disabling dropdown -->
<script>
	$(document).on('change', '#any', function(){
    debugger;
    if($(this).prop('checked')){
        $('#FoS').attr('disabled', 'disabled');
    } else {
        $('#FoS').removeAttr('disabled');
    }
    
});
</script>
<script>
    
    $("#description").val("Assist the Chief Security in directing and co-coordinating overall activities of the department to achieve maximum efficiency and safety measures as required by the hotel.")
        
    $("select[name='department']").change(function() {
        var optionSelected = $("option:selected", this);
        var valueSelected = this.value;
        
        if(valueSelected === "Human Resource")
        {
                $("#description").val("Assist the Chief Security in directing and co-coordinating overall activities of the department to achieve maximum efficiency and safety measures as required by the hotel.")
        
                var newOptions = {"Asst. Chief Security": "Asst. Chief Security",
                "Asst. HR  GA Manager": "Asst. HR  GA Manager",
                "Chief of Security": "Chief of Security",
                "HR  GA Officer": "HR  GA Officer",
                "HR  GA Supervisor": "HR  GA Supervisor",
                "HR & GA Manager": "HR & GA Manager",
                "Messenger": "Messenger",
                "Security": "Security",
                "Training Manager": "Training Manager",
                "Training Supervisor": "Training Supervisor"
                
                
                };

                var $el = $("#position");
                $el.empty(); // remove old options
                $.each(newOptions, function(key,value) {
                  $el.append($("<option></option>")
                     .attr("value", value).text(key));
                });
        }
        else if(valueSelected === "Executive Office")
        {
                $("#description").val("Under the general guidance of the General Manager assesses, evaluates, executes and meets / exceeds the short and long term needs of the hotel to ensure its continuous success. Promotes the desired work culture around the vision and core values of Aryaduta Hotel Group.")
      
        
                var newOptions = {"Executive Assistant Manager": "Executive Assistant Manager",
                "General Manager": "General Manager",
                "Personal Assistant": "Personal Assistant",
                "Resident Manager": "Resident Manager"
                
                };

                var $el = $("#position");
                $el.empty(); // remove old options
                $.each(newOptions, function(key,value) {
                  $el.append($("<option></option>")
                     .attr("value", value).text(key));
                });
        }
        else if(valueSelected === "Accounting")
        {
                $("#description").val("Responsible for receiving, verifying, recording and paying of all invoices and maintaining A/P trade payable ledger. Maintain strong interdepartmental coordination and cooperation during the work day.")
       
                var newOptions = {"Accounts Payable Officer": "Accounts Payable Officer",
                "Accounts Receivable Officer": "Accounts Receivable Officer",
                "Asst. Financial Controller": "Asst. Financial Controller",
                "Chief Accountant": "Chief Accountant",
                "Corporate Financial Controller": "Corporate Financial Controller",
                "Cost Controller": "Cost Controller",
                "Credit Manager or Supervisor": "Credit Manager or Supervisor",
                "Financial Controller": "Financial Controller",
                "General Cashier": "General Cashier",
                "Group Head of Finance": "Group Head of Finance",
                "HO Finance Staff": "HO Finance Staff",
                "Income Auditor": "Income Auditor",
                "IT Manager": "IT Manager",
                "Purchasing Manager": "Purchasing Manager",
                "Purchasing Officer": "Purchasing Officer",
                " Receiving": " Receiving",

                
                
                };

                var $el = $("#position");
                $el.empty(); // remove old options
                $.each(newOptions, function(key,value) {
                  $el.append($("<option></option>")
                     .attr("value", value).text(key));
                });
        }
        else if(valueSelected === "Engineering")
        {       
                $("#description").val("The Assistant Chief Engineer is responsible for the efficient day to day operation of the hotel property and all its equipment, ancillary/ preventive maintenance and repair services and protection of the Aryaduta asset.  Structural aspects of the hotel as well as the maintenance of grounds and external facilities all fall within the span of responsibility. Under the guidance of the Chief Engineer assists in coordinating the engineering operations of the hotel. Promotes the desired work culture around the vision and core values of Aryaduta Hotel Group.")
        
                var newOptions = {"Assistant Chief Engineer": "Assistant Chief Engineer",
                "Chief Engineer": "Chief Engineer",
                "Duty Engineer": "Duty Engineer",
                "Senior Technician": "Senior Technician",
                "Technician": "Technician"
                
                };

                var $el = $("#position");
                $el.empty(); // remove old options
                $.each(newOptions, function(key,value) {
                  $el.append($("<option></option>")
                     .attr("value", value).text(key));
                });
        }
        else if(valueSelected === "Front Office")
        {       
                $("#description").val("Under the general direction of the Chief Concierge and Front Office Manager responsible for meeting and greeting guests at the airport and projecting a positive first impression of the hotel to arriving guests. Promotes the desired work culture around the vision and core values of Aryaduta Hotel Group.")
        
                var newOptions = {"Airport Representative": "Airport Representative",
                "Assistant Front Office Manager": "Assistant Front Office Manager",
                "Bell Attendant": "Bell Attendant",
                "Bell Captain": "Bell Captain",
                "Butler": "Butler",
                "Chief Concierge": "Chief Concierge",
                "Club Lounge Manager": "Club Lounge Manager",
                "Club Lounge Supervisor": "Club Lounge Supervisor",
                "Concierge": "Concierge",
                "Director of Rooms": "Director of Rooms",
                "Duty Manager": "Duty Manager",
                "Front Desk Agent": "Front Desk Agent",
                "Front Desk Supervisor": "Front Desk Supervisor",
                "Front Office Manager": "Front Office Manager",
                "Guest Relations Manager": "Guest Relations Manager",
                "Guest Relations Officer": "Guest Relations Officer",
                "Guest Relations Supervisor": "Guest Relations Supervisor",
                "Kids Club Attendant": "Kids Club Attendant",
                "Telephone Operator": "Telephone Operator"
                
                
                
                };

                var $el = $("#position");
                $el.empty(); // remove old options
                $.each(newOptions, function(key,value) {
                  $el.append($("<option></option>")
                     .attr("value", value).text(key));
                });
                
        }
        else if(valueSelected === "Food and Beverage")
        {
                $("#description").val("Under the direction of the Director of Food and Beverage or delegate, and within the limits of established Aryaduta Hotel & Group  Policies and Procedures, assists in overseeing and directing all aspects of the Food and Beverage operation.  Promotes the desired work culture around the core values of Aryaduta Hotel Group  and the brand ethos.")
        
                var newOptions = {
                "Asst. F&B Manager": "Asst. F & B Manager",
                "Asst. Banquet Manager": "Asst. Banquet Manager",
                "Asst. Restaurant Manager": "Asst. Restaurant Manager",
                "Banquet Manager": "Banquet Manager",
                "Banquet Supervisor": "Banquet Supervisor",
                "Bartender": "Bartender",
                "Butcher": "Butcher",
                "Chef de Cuisine": "Chef de Cuisine",
                "Chef de Partie": "Chef de Partie",
                "Chief Steward": "Chief Steward",
                "Commis": "Commis",
                "Demi Chef": "Demi Chef",
                "Director Food & Beverage": "Director Food and Beverage",
                "Executive Chef": "Executive Chef",
                "Executive Sous Chef": "Executive Sous Chef",
                "FB Captain": "FB Captain",
                "Food & Beverage Manager": "Food and Beverage Manager",
                "Head Baker": "Head Baker",
                "Restaurant Manager": "Restaurant Manager",
                "Sous Chef": "Sous Chef",
                "Steward Supervisor": "Steward Supervisor",
                "Steward": "Steward",
                "Waiter or Waitress": "Waiter or Waitress"
                
                };

                var $el = $("#position");
                $el.empty(); // remove old options
                $.each(newOptions, function(key,value) {
                  $el.append($("<option></option>")
                     .attr("value", value).text(key));
                });
        }
        else if(valueSelected === "Housekeeping")
        {
                $("#description").val("With the guidance of the Executive Housekeeper oversees and directs all aspects of Aryaduta Housekeeping day to day operations which includes guest rooms, public areas, laundry, gardens and other specified back-of-the house areas. Promotes the desired work culture around the vision and core values of Aryaduta Hotel Group.")
        
                var newOptions = {"Assistant Executive Housekeeper": "Assistant Executive Housekeeper",
                "Assistant Laundry Manager": "Assistant Laundry Manager",
                "Executive Housekeeper": "Executive Housekeeper",
                "Gardener": "Gardener",
                "Housekeeping Supervisor": "Housekeeping Supervisor",
                "Laundry Attendant": "Laundry Attendant",
                "Laundry Manager": "Laundry Manager",
                "Linen Attendant": "Linen Attendant",
                "Public Area Attendent": "Public Area Attendent",
                "Public Area Supervisor": "Public Area Supervisor",
                "Room Attendent": "Room Attendent"
                
                };

                var $el = $("#position");
                $el.empty(); // remove old options
                $.each(newOptions, function(key,value) {
                  $el.append($("<option></option>")
                     .attr("value", value).text(key));
                });
        }
        else if(valueSelected === "Sales")
        {   
                $("#description").val("Ensure the hotel achieves it budgeted occupancy and revenue through driving room and catering sales.")
        
                var newOptions = {"Assistant Director of Sales": "Assistant Director of Sales",
                "Assistant Marketing Communications Manager": "Assistant Marketing Communications Manager",
                "Catering Sales Coordinator": "Catering Sales Coordinator",
                "Catering Sales Executive": "Catering Sales Executive",
                "Catering Sales Manager": "Catering Sales Manager",
                "Digital Marketing Executive": "Digital Marketing Executive",
                "Digital Marketing Manager": "Digital Marketing Manager",
                "Director of Sales": "Director of Sales",
                "DOSM": "DOSM",
                "E-Commerce Executive": "E-Commerce Executive",
                "E-Commerce Manager": "E-Commerce Manager",
                "Graphic Designer": "Graphic Designer",
                "Group Director of Marketing Communications": "Group Director of Marketing Communications",
                "Group Director of Revenue Management": "Group Director of Revenue Management",
                "Group Director of Sales": "Group Director of Sales",
                "Key Account Executive": "Key Account Executive",
                "Key Account Manager": "Key Account Manager",
                "Marketing Communications Executive": "Marketing Communications Executive",
                "Marketing Communications Manager": "Marketing Communications Manager",
                "PR Executive": "PR Executive",
                "PR Manager": "PR Manager",
                "Reservation Agent": "Reservation Agent",
                "Reservation Supervisor": "Reservation Supervisor",
                "Reservations Manager": "Reservations Manager",
                "Revenue Analyst": "Revenue Analyst",
                "Revenue Manager": "Revenue Manager",
                "Sales & Marketing Coordinator": "Sales and Marketing Coordinator",
                "Sales Executive": "Sales Executive",
                "Sales Manager": "Sales Manager",
                "Senior Catering Sales Manager": "Senior Catering Sales Manager",
                "Senior Key Account Manager": "Senior Key Account Manager",
                "Senior Sales Manager": "Senior Sales Manager",
                "Social Media Executive": "Social Media Executive",
                "Social Media Manager": "Social Media Manager"
                
                };

                var $el = $("#position");
                $el.empty(); // remove old options
                $.each(newOptions, function(key,value) {
                  $el.append($("<option></option>")
                     .attr("value", value).text(key));
                });
        }
        else if(valueSelected === "Golf Operation")
        {
                $("#description").val("Manages all golf and golf-related activities and business.")
                var newOptions = {"Golf Operation Manager": "Golf Operation Manager",
                "Caddie Captain": "Caddie Captain",
                "Starter": "Starter",
                "Porter": "Porter",
                "Driving Range Attendant": "Driving Range Attendant",
                "Marshal": "Marshal",
                "Caddie": "Caddie",
                
                
                };

                var $el = $("#position");
                $el.empty(); // remove old options
                $.each(newOptions, function(key,value) {
                  $el.append($("<option></option>")
                     .attr("value", value).text(key));
                });
        }
        else if(valueSelected === "House Maintenance")
        {
                $("#description").val("To provide a safe, secure and comfortable environment by maintaining the club’s assets through on-going preventive maintenance as well as day to day maintenance activities, and ensuring that all mechanical, electrical, hot water plant, golf cart availability and housekeeping activity are operating efficiently.")
        
                var newOptions = {"House Maintenance Manager": "House Maintenance Manager",
                "Chief Technician": "Chief Technician",
                "Asst. Chief Technician": "Asst. Chief Technician",
                "Golf Cart Technician": "Golf Cart Technician",
                "Marshal": "Marshal",
                "Locker Attendant": "Locker Attendant",
                
                
                };

                var $el = $("#position");
                $el.empty(); // remove old options
                $.each(newOptions, function(key,value) {
                  $el.append($("<option></option>")
                     .attr("value", value).text(key));
                });
        }
        else if(valueSelected === "Golf Course Maintenance")
        {
               $("#description").val("Assist the Golf Course Superintendent with the turf management of the course and managing the daily golf course operations by scheduling, training, and supervising the golf maintenance staff.")
        
                var newOptions = {"Golf Course Superintendent": "Golf Course Superintendent",
                "Assistant Golf Course Superintendent": "Assistant Golf Course Superintendent",
                "Administration Officer": "Administration Officer",
                "Irrigation Staff": "Irrigation Staff",
                "Drainage Staff": "Drainage Staff",
                "Landscape Staff": "Landscape Staff",
                "Mechanic Staff": "Mechanic Staff",
                "Equipment Operator": "Equipment Operator",
                
                
                };

                var $el = $("#position");
                $el.empty(); // remove old options
                $.each(newOptions, function(key,value) {
                  $el.append($("<option></option>")
                     .attr("value", value).text(key));
                });
        }
    });
    
    $("select[name='position']").change(function() {
        var optionSelected = $("option:selected", this);
        var valueSelected = this.value;
        
        
        if(valueSelected === "Asst. HR  GA Manager")
        {
            $("#description").val("To assist, control and process the company’s recruitment, payroll, training, HR Information System and all other related duties.")
        }
        else if(valueSelected === "Chief of Security")
        {
            $("#description").val("Responsible to protect and safeguard all hotel guests, employees, their belongings and all hotel assets. Also ensuring that all hotel properties are adequately secured at all times.")
        }
        else if(valueSelected === "HR  GA Officer")
        {
            $("#description").val("To support the process the company’s recruitment, payroll, training, HR Information System and all other related duties.")
        }
        else if(valueSelected === "HR  GA Supervisor")
        {
            $("#description").val("To process the company’s recruitment, payroll, training, HR Information System and all other related duties.")
        }
        else if(valueSelected === "Asst. Chief Security")
        {
            $("#description").val("Assist the Chief Security in directing and co-coordinating overall activities of the department to achieve maximum efficiency and safety measures as required by the hotel.")
        }
        else if(valueSelected === "HR & GA Manager")
        {
            $("#description").val("Plan, manage, and coordinate human resource management activities in the property to maximize the strategic use of human resources and maintain functions such as recruitment, training and development, employee compensation and benefit, performance management, personnel policies, and regulatory compliance.")
        }
        else if(valueSelected === "Messenger")
        {
            $("#description").val("Responsible to take the documents or packages from one place to another place in safe condition and on time.")
        }
        else if(valueSelected === "Security")
        {
            $("#description").val("To protect working conditions and helps to maintain discipline in the premises and ensure that no suspicious activity is going on in the building. Responsible to see and report on anything or person with a doubtful behavior and take a front in case of theft and emergency.")
        }
        else if(valueSelected === "Training Manager")
        {
            $("#description").val("Plans, directs, or coordinates the training and development activities for all team members and develops career development & succession planning programs. Ensures all team members have the knowledges, skills, company ethos and motivation to fulfill their roles to a very high level.")
        }
        else if(valueSelected === "Training Supervisor")
        {
            $("#description").val("To assist and coordinate the training and development activities for all employee ")
        }
        else if(valueSelected === "Executive Assistant Manager")
        {
            $("#description").val("Under the general guidance of the General Manager assesses, evaluates, executes and meets / exceeds the short and long term needs of the hotel to ensure its continuous success. Promotes the desired work culture around the vision and core values of Aryaduta Hotel Group.")
        }
        else if(valueSelected === "General Manager")
        {
            $("#description").val("Directs the overall operation of an assigned hotel to maximize performance, profitability and return on investment by creating a positive and productive work environment and ensuring superior guest service and compliance with quality and operational standards.  Plays the leading role in promoting the desired work culture around the vision and core values of Aryaduta Hotel Group.")
        }
        else if(valueSelected === "Personal Assistant")
        {
            $("#description").val("Under the general direction of the General Manager or delegate directs all aspects of secretarial work in the hotel, maintains the executive office to Aryaduta standards and maintains all matters relating to executive administration in a confidential and professional manner. Promotes the desired work culture around the vision and core values of Aryaduta Hotel Group.")
        }
        else if(valueSelected === "Resident Manager")
        {
            $("#description").val("Under the general guidance of the General Manager assesses, evaluates, executes and meets or exceeds the short and long term needs of the hotel to ensure its continuous success. Promotes the desired work culture around the vision and core values of Aryaduta Hotel Group")
        }
        else if(valueSelected === "Asst. F & B Manager")
        {
            $("#description").val("Under the direction of the Director of Food and Beverage or delegate, and within the limits of established Aryaduta Hotel & Group  Policies and Procedures, assists in overseeing and directing all aspects of the Food and Beverage operation.  Promotes the desired work culture around the core values of Aryaduta Hotel Group  and the brand ethos.")
        }
        else if(valueSelected === "Asst. Banquet Manager")
        {
            $("#description").val("Under the direction of the Banquet Manager and within the limits of established Aryaduta Hotel Group Policies and Procedures, assists in the procurement of conference business and assists in the planning and delivery of service during the conference.  Promotes the desired work culture around the core values of Aryaduta Hotel Group and the brand ethos.")
        }
        else if(valueSelected === "Asst. Restaurant Manager")
        {
            $("#description").val("Under the direction of the Director of Food and Beverage and the Executive Chef or delegate, and within the limits of established Aryaduta Hotel & Group  Policies and Procedures, oversees and directs all aspects of the Stewarding operation.  Promotes the desired work culture around the core values of Interstate Hotels & Resorts and the brand ethos.")
        }
        else if(valueSelected === "Banquet Manager")
        {
            $("#description").val("Under the general guidance and supervision of the Food and Beverage Manager, and within the limits of established Aryaduta Hotel & Group  policies and procedures, manages the procurement and delivery of conference and meeting.  Promotes the desired work culture around the core values of Aryaduta Hotel Group  and the brand ethos. ")
        }
        else if(valueSelected === "Banquet Supervisor")
        {
            $("#description").val("Under the direction of the Director of Food and Beverage and the Executive Chef or delegate, and within the limits of established Aryaduta Hotels Group Policies and Procedures, oversees and directs all aspects of the Banquet operation.  Promotes the desired work culture around the core values of Aryaduta Hotels Group and the brand ethos.")
        }
        else if(valueSelected === "Bartender")
        {
            $("#description").val("To ensure each guest leaves the restaurant feeling that they have been personally recognized and have enjoyed a special dining or bar experience, full of good humor, attention to detail and genuine care. Resources available include the Restaurant Manager, Food and Beverage Manager.")
        }
        else if(valueSelected === "Butcher")
        {
            $("#description").val("Under the direction of the Director of Food and Beverage and the Executive Chef or delegate, and within the limits of established Aryaduta Hotels Group Policies and Procedures, oversees and directs all aspects of the Butcher operation.  Promotes the desired work culture around the core values of Aryaduta Hotels Group and the brand ethos.")
        }
        else if(valueSelected === "Chef de Cuisine")
        {
            $("#description").val("To efficiently and effectively  run all aspects of the kitchen including execution of food, management of the team and cost control. To ensure a positive, productive, creative and happy environment working together with all other departments to be a part of the overall feel of the hotel. To provide leadership and support to the culinary team, built on a foundation of quality, consistency and free thinking with edge which is our expectation for each and every member of our team.")
        }
        else if(valueSelected === "Chef de Partie")
        {
            $("#description").val("To ensure, a positive productive, creative and happy environment working together with all other departments to be a part of the overall feel of the hotel. Resources available include the Food & beverage Manager and Executive Chef. To provide leadership and support to the culinary team, built on a foundation of quality, consistency and free thinking with edge which is our expectation for each and every member of our team.")
        }
        else if(valueSelected === "Chief Steward")
        {
            $("#description").val("Responsible for supervising the stewarding operation during shift and for cleaning and maintaining food and beverage premises to high hygienic standards.   Promotes the desired work culture around the core values of Aryaduta Hotel Group and the brand ethos.")
        }
        else if(valueSelected === "Commis")
        {
            $("#description").val("To ensure a positive, productive, creative and happy environment working together with all other departments to be a part of the overall feel of the hotel.")
        }
        else if(valueSelected === "Demi Chef")
        {
            $("#description").val("To ensure a positive, productive, creative and happy environment working together with all other departments to be a part of the overall feel of the hotel. To provide leadership and support to the culinary team, built on a foundation of quality, consistency and free thinking with edge which is our expectation for each and every member of our team.")
        }
        else if(valueSelected === "Director Food and Beverage")
        {
            $("#description").val("Responsible for the management and achievement of profit for all food and beverage operations in the hotel including restaurants, bars, kitchen operations, catering and banquet operations. Promotes the desired work culture around the core values of Aryaduta Hotel Group and the brand ethos.")
        }
        else if(valueSelected === "Executive Chef")
        {
            $("#description").val("To ensure a positive, productive, creative and happy environment working together with all other departments to be a part of the overall feel of the hotel. To provided leadership and support the culinary team, built on a foundation of quality, consistency and free thinking with edge which is our expectation for each and every member of our team.")
        }
        else if(valueSelected === "Executive Sous Chef")
        {
            $("#description").val("Under the direction of the Executive Chef and within the limits of established Aryaduta Hotel Group Policies and Procedures, assists in the direction of all aspects of the Food Production and Stewarding operations.  Promotes the desired work culture around the core values of Aryaduta Hotel Group and the brand ethos.")
        }
        else if(valueSelected === "FB Captain")
        {
            $("#description").val("To ensure each guest leaves the restaurant or bar feeling that they have been personally recognized and have enjoyed a special dining experience, full of good humor, attention to detail and genuine care. ")
        }
        else if(valueSelected === "Food and Beverage Manager")
        {
            $("#description").val("Responsible for the management and achievement of profit for all food and beverage operations in the hotel including restaurants, bars, kitchen operations, catering and banquet operations. Promotes the desired work culture around the core values of Aryaduta Hotel Group and the brand ethos.")
        }
        else if(valueSelected === "Head Baker")
        {
            $("#description").val("Under the direction of the Director of Food and Beverage and the Executive Chef or delegate, and within the limits of established Aryaduta Hotel Group Policies and Procedures, oversees and directs all aspects of the Bakery operation.  Promotes the desired work culture around the core values of Aryaduta Hotels Group and the brand ethos.")
        }
        else if(valueSelected === "Restaurant Manager")
        {
            $("#description").val("To ensure the seamless running of the Restaurant or Bar in the most efficient and effective manner delivering the highest possible standards of service, whilst being pro-active in maintaining and improving turnover and profitability. To ensure each guest leaves the restaurant feeling that they have been personally recognized and have enjoyed a special dining experience, full of good humor, attention to detail and genuine care. To provide leadership and support to the culinary team, built on a foundation of quality, consistency and free thinking with edge which is our expectation for each and every member of our team.")
        }
        else if(valueSelected === "Sous Chef")
        {
            $("#description").val("To efficiently and effectively assist the Executive Chef in all aspects of the kitchen including execution of food, management of the team and cost control. To ensure a positive, productive, creative and happy environment working together with all other departments to be a part of the overall feel of the hotel. To provide leadership and support to the culinary team, built on a foundation of quality, consistency and free thinking with edge which is our expectation for each and every member of our team.")
        }
        else if(valueSelected === "Steward Supervisor")
        {
            $("#description").val("To ensure a positive, creative and happy environment working together with all other departments to be a part of the overall feel of the hotel. To integrate into the permanent hotel team, in a friendly productive manner. Leadership and support provided to the culinary team, built on a foundation of quality, consistency and free thinking with edge which is our expectation for each and every member of our team. ")
        }
        else if(valueSelected === "Steward")
        {
            $("#description").val("Supports the food and beverage operation by cleaning and maintaining kitchen equipment and the premises whilst maintaining hygienic standards and practices.  Promotes the desired work culture around the core values of Aryaduta Hotel Group and the brand ethos.")
        }
        else if(valueSelected === "Waiter or Waitress")
        {
            $("#description").val("To ensure each guest leaves the restaurant feeling that they have been personally recognized and have enjoyed a special dining experience, full of good humor, attention to detail and genuine care.")
        }
        else if(valueSelected === "Accounts Payable Officer")
        {
            $("#description").val("Responsible for receiving, verifying, recording and paying of all invoices and maintaining A/P trade payable ledger. Maintain strong interdepartmental coordination and cooperation during the work day.")
        }
        else if(valueSelected === "Accounts Receivable Officer")
        {
            $("#description").val("Carry out all duties pertaining to Accounts Receivable functions and ensure compliance with Hotel Credit Policy.")
        }
        else if(valueSelected === "Asst. Financial Controller")
        {
            $("#description").val("The AFC is responsible for managing the day to day operations of the Accounting Department and ensuring a clean and accurate set of books are available to present timely financial information to Owners and Management Company. ")
        }
        else if(valueSelected === "Chief Accountant")
        {
            $("#description").val("The Chief Accountant is responsible for managing the day to day operations of the Accounting Department and ensuring a clean and accurate set of books are available to present timely financial information to Owners and Management Company.")
        }
        else if(valueSelected === "Corporate Financial Controller")
        {
            $("#description").val("The Corporate FC is responsible for managing all the Accounting staff at Head office and providing Technical support to FC’s at properties. The Corporate FC is responsible for consolidation of all business results and reporting to LK corporate in a timely manner.")
        }
        else if(valueSelected === "Cost Controller")
        {
            $("#description").val("To control and audit all food & beverage financial activities including but not limited to menu costing, catering costing and profit determination.")
        }
        else if(valueSelected === "Credit Manager or Supervisor")
        {
            $("#description").val("To ensure compliance with the Hotel credit policy for fast realization of accounts receivable and maintaining the Company standards with regards to aging reports and Days credit sales outstanding.")
        }
        else if(valueSelected === "Financial Controller")
        {
            $("#description").val("The Finance Director functions as the property’s Financial Business Leader.  As a member of the Executive Committee the incumbent champions, develops and implements hotel-wide strategies that deliver products and services to meet or exceed the needs and expectations of guests, owners, and Aryaduta Hotel Group. Creates and executes a business plan that is aligned with the hotel’s business strategy with a primary focus on the execution of financial and accounting activities and the delivery of financial results.")
        }
        else if(valueSelected === "General Cashier")
        {
            $("#description").val("Accurately control the hotels cash funds and ensure all cash handling procedures are in place. Ensure the secure transfer and deposit of daily cash and change requests to and from the Bank. Ensure all cash handling areas in the Hotel have adequate change and cash for operations.")
        }
        else if(valueSelected === "Group Head of Finance")
        {
            $("#description").val("Responsible for the planning, reviewing, directing, controlling, and coordinating  the activities of the  Aryaduta Hotel Group accounting Department in Head Office.")
        }
        else if(valueSelected === "HO Finance Staff")
        {
            $("#description").val("Perform Accounting functions in a timely and accurate manner. Prepare analysis and presentation reports as required.")
        }
        else if(valueSelected === "Income Auditor")
        {
            $("#description").val("To accurately record and audit all revenues and associated statistics of the hotel according to Aryaduta policy leading to authentic financial statements.")
        }
        else if(valueSelected === "IT Manager")
        {
            $("#description").val("The Finance Director functions as the property’s Financial Business Leader.  As a member of the Executive Committee the incumbent champions, develops and implements hotel-wide strategies that deliver products and services to meet or exceed the needs and expectations of guests, owners, and Aryaduta Hotel Group. Creates and executes a business plan that is aligned with the hotel’s business strategy with a primary focus on the execution of financial and accounting activities and the delivery of financial results.")
        }
        else if(valueSelected === "Purchasing Manager")
        {
            $("#description").val("Responsible for overall operations and administration of the purchasing process and policies in the Hotel.")
        }
        else if(valueSelected === "Purchasing Officer")
        {
            $("#description").val("Responsible for overall operations and administration of the purchasing process and policies in the Hotel.")
        }
        else if(valueSelected === "Receiving")
        {
            $("#description").val("Ensure that all proper receiving procedures of goods into the Hotel is adopted and controlled.")
        }
        else if(valueSelected === "Airport Representative")
        {
            $("#description").val("Under the general direction of the Chief Concierge and Front Office Manager responsible for meeting and greeting guests at the airport and projecting a positive first impression of the hotel to arriving guests. Promotes the desired work culture around the vision and core values of Aryaduta Hotel Group.")
        }
        else if(valueSelected === "Assistant Front Office Manager")
        {
            $("#description").val("Under the guidance of the Director of Rooms/ Front Office Manager manage the day to day operations of the Front Office Department by ensuring Aryaduta standards of product and services are met.  Promotes the desired work culture around the vision and core values of Aryaduta Hotel Group.")
        }
        else if(valueSelected === "Bell Attendant")
        {
            $("#description").val("Responsible for receiving and ensuring correct delivery of guest’s luggage to and from rooms, airport and cars and assists all guests with inquiries and requests.  The Bell Attendant performs various errands related to guest’s needs, comfort and satisfaction. Promotes the desired work culture around the vision and core values of Aryaduta Hotel Group.")
        }
        else if(valueSelected === "Bell Captain")
        {
            $("#description").val("Responsible for the efficient handling of guest luggage, adhering to proper check-in and check-out procedures, Aryaduta Standards of product and services and to check/maintain the cleanliness of lobby and main entrance. Promotes the desired work culture around the vision and core values of Aryaduta Hotel Group.")
        }
        else if(valueSelected === "Butler")
        {
            $("#description").val("Under the general guidance of the Front Office Manager provide a highly personalized valet service with the highest amount of discretion to each guest assigned. Promotes the desired work culture around the vision and core values of Aryaduta Hotel Group.")
        }
        else if(valueSelected === "Chief Concierge")
        {
            $("#description").val("Under the general direction of the Front Office Manager oversees and directs all aspects of the Bell service operations. Continually strives to deliver the highest quality of service to customers, whilst adhering to Aryaduta Standards of product and services.  Promotes the desired work culture around the vision and core values of Aryaduta Hotel Group.")
        }
        else if(valueSelected === "Club Lounge Manager")
        {
            $("#description").val("Under the general direction of the Front Office Manager,  provides supportive functional assistance to the Aryaduta Club Lounge; interact with guests and members and adheres to the highest standards.   Coordinates with all departments in the hotel related to Club Louge. Promotes the desired work culture around the vision and core values of Aryaduta Hotel Group.")
        }
        else if(valueSelected === "Club Lounge Supervisor")
        {
            $("#description").val("Under the general direction of the Club Lounge Manager,  provides supportive functional assistance to the Aryaduta Club Lounge; interact with guests and members and adheres to the Aryaduta standards of product and services. Promotes the desired work culture around the vision and core values of Aryaduta Hotel Group.")
        }
        else if(valueSelected === "Concierge")
        {
            $("#description").val("Responsible for assisting all guests with their inquiries and requests prior, during and after their stay and arrange airport transfers and cars.  The Concierge performs various errands related to guest’s needs, comfort and satisfaction. Promotes the desired work culture around the vision and core values of Aryaduta Hotel Group.")
        }
        else if(valueSelected === "Director of Rooms")
        {
            $("#description").val("Under the general guidance of the General Manager, or delegate, oversees and directs all aspects of Front Office, Housekeeping, Laundry operations and Recreation and Health Club operations. Promotes the desired work culture around the vision and core values of Aryaduta Hotel Group.")
        }
        else if(valueSelected === "Duty Manager")
        {
            $("#description").val("Under the general direction of the Front Office Manager, provides supportive functional assistance to all departments as well as acting as senior management during off business hours and night time; interact with guests and members of the community.   Coordinates with all departments in the hotel. Promotes the desired work culture around the vision and core values of Aryaduta Hotel Group.")
        }
        else if(valueSelected === "Front Desk Agent")
        {
            $("#description").val("Under the general direction of the Front Office Manager or his / her delegate, responsible for all activities relevant to the Front Desk such as the reception, check in / out, rooming of all Hotel guests and assisting them with other inquiries. Promotes the desired work culture around the vision and core values of Aryaduta Hotel Group.")
        }
        else if(valueSelected === "Front Desk Supervisor")
        {
            $("#description").val("Responsible for the operational efficiency of all front office areas during shift and the service delivery of those areas. Promotes the desired work culture around the vision and core values of Aryaduta Hotel Group.")
        }
        else if(valueSelected === "Front Office Manager")
        {
            $("#description").val("To manage the operations of the Front Office Department by ensuring quality standards are met and that optimum service is provided to all hotel guests according to the hotel’s and Aryaduta business objectives.  Responsible, together with the Human resources department, in ensuring team member selection, training, counseling and recognition programs are adhered to; in order to maximize guest satisfaction, brand and team member satisfaction.")
        }
        else if(valueSelected === "Guest Relations Manager")
        {
            $("#description").val("Under the general direction of the Front Office Manager, oversees and directs all aspects of the guest relations function to achieve the highest possible guest satisfaction to current and future VIPs.  Promotes the desired work culture around the vision and core values of Aryaduta Hotel Group.")
        }
        else if(valueSelected === "Guest Relations Officer")
        {
            $("#description").val("Under the general direction of the Guest Relation Manager, assists and supports all aspects of the guest relations function to achieve the highest possible guest satisfaction to current and future VIPs. Promotes the desired work culture around the vision and core values of Aryaduta Hotel Group.")
        }
        else if(valueSelected === "Guest Relations Supervisor")
        {
            $("#description").val("Under the general direction of the Guest Relation Manager, assists and supports all aspects of the guest relations function to achieve the highest possible guest satisfaction to current and future VIPs.  Promotes the desired work culture around the vision and core values of Aryaduta Hotel Group.")
        }
        else if(valueSelected === "Kids Club Attendant")
        {
            $("#description").val("To supervise younger Guests of the Hotel through preparing and delivering innovative and safe activities which keep them content and amused. Promotes the desired work culture around the vision and core values of Aryaduta Hotel Group.")
        }
        else if(valueSelected === "Telephone Operator")
        {
            $("#description").val("Under the general direction of the Front Office Manager or designated person, oversees and directs all aspects of Telecommunications services (including Room Service) in the hotel to achieve the highest possible guest satisfaction. Promotes the desired work culture around the vision and core values of Aryaduta Hotel Group.")
        }
        else if(valueSelected === "Assistant Executive Housekeeper")
        {
            $("#description").val("With the guidance of the Executive Housekeeper oversees and directs all aspects of Aryaduta Housekeeping day to day operations which includes guest rooms, public areas, laundry, gardens and other specified back-of-the house areas. Promotes the desired work culture around the vision and core values of Aryaduta Hotel Group.")
        }
        else if(valueSelected === "Assistant Laundry Manager")
        {
            $("#description").val("Under the general guidance of the Laundry Manager assist to oversee and direct the day to day operation of Laundry Department and maintains the overall efficiency. Promotes the desired work culture around the vision and core values of Aryaduta Hotel Group.")
        }
        else if(valueSelected === "Executive Housekeeper")
        {
            $("#description").val("With the guidance of the General Manager oversees and directs all aspects of Aryaduta Housekeeping operations which includes guest rooms, public areas, laundry, gardens and other specified back-of-the house areas. Promotes the desired work culture around the vision and core values of Aryaduta Hotel Group.")
        }
        else if(valueSelected === "Gardener")
        {
            $("#description").val("Under the general direction of the Gardening Supervisor and Executive Housekeeper,, maintains the Hotels landscape and indoor and outdoor gardens to the highest standards. Promotes the desired work culture around the vision and core values of Aryaduta Hotel Group.")
        }
        else if(valueSelected === "Housekeeping Supervisor")
        {
            $("#description").val("Responsible for the operational efficiency of all housekeeping areas and the service delivery of those areas within budgeted guidelines. Promotes the desired work culture around the vision and core values of Aryaduta Hotel Group.")
        }
        else if(valueSelected === "Laundry Attendant")
        {
            $("#description").val("Under the general direction of the Laundry Manager responsible for assisting the washers, pressers and other members of the laundry team in providing a clean and timely laundry service to guests and internal customers. Promotes the desired work culture around the vision and core values of Aryaduta Hotel Group.")
        }
        else if(valueSelected === "Laundry Manager")
        {
            $("#description").val("Under the general guidance of the Executive Housekeeper oversees and directs the day to day operation of Laundry Department and maintains the overall efficiency. Promotes the desired work culture around the vision and core values of Aryaduta Hotel Group.")
        }
        else if(valueSelected === "Linen Attendant")
        {
            $("#description").val("Under the general guidance of the Executive Housekeeper responsible for receiving, sorting, storing and issuing of linen for all areas of the hotel. Promotes the desired work culture around the vision and core values of Aryaduta Hotel Group.")
        }
        else if(valueSelected === "Public Area Attendent")
        {
            $("#description").val("Provides a cleaning service for public areas that meets the hotel’s standards for cleanliness and presentation. Promotes the desired work culture around the vision and core values of Aryaduta Hotel Group.")
        }
        else if(valueSelected === "Public Area Supervisor")
        {
            $("#description").val("Provides, while supervising the Public Area team member, a cleaning service for all public areas that meets the hotel’s standards for cleanliness and presentation. Promotes the desired work culture around the vision and core values of Aryaduta Hotel Group.")
        }
        else if(valueSelected === "Room Attendent")
        {
            $("#description").val("Provide a consistent room and bathroom product and service adjacent areas that meets the hotel’s standards for cleanliness and presentation.  Promotes the desired work culture around the vision and core values of Aryaduta Hotel Group.")
        }
        else if(valueSelected === "Job Description - Assistant Chief Engineer")
        {
            $("#description").val("The Assistant Chief Engineer is responsible for the efficient day to day operation of the hotel property and all its equipment, ancillary/ preventive maintenance and repair services and protection of the Aryaduta asset.  Structural aspects of the hotel as well as the maintenance of grounds and external facilities all fall within the span of responsibility. Under the guidance of the Chief Engineer assists in coordinating the engineering operations of the hotel. Promotes the desired work culture around the vision and core values of Aryaduta Hotel Group.")
        }
        else if(valueSelected === "Chief Engineer")
        {
            $("#description").val("The position of Chief Engineer is responsible for the efficient operation of the hotel property and all its equipment, ancillary maintenance and repair services and protection of Aryaduta  assets.  Structural aspects of the hotel as well as the maintenance of grounds and external facilities all fall within the span of responsibility. Promotes the desired work culture around the vision and core values of Aryaduta Hotel Group.")
        }
        else if(valueSelected === "Duty Engineer")
        {
            $("#description").val("Under the guidance of the Chief Engineer ensures that the Hotels equipment is operated in accordance with Aryaduta standards to ensure maximum efficiency and maintenance as well as highest guest satisfaction. Promotes the desired work culture around the vision and core values of Aryaduta Hotel Group.")
        }
        else if(valueSelected === "Senior Technician")
        {
            $("#description").val("Under the guidance of the Chief Engineer ensures that the Hotels equipment is operated in accordance with Aryaduta standards to ensure maximum efficiency and maintenance as well as highest guest satisfaction. Promotes the desired work culture around the vision and core values of Aryaduta Hotel Group.")
        }
        else if(valueSelected === "Technician")
        {
            $("#description").val("Under the general direction of the Asst. Chief Engineer / Duty Engineer ensure that routine and emergency maintenance is performed in order for the Hotels equipment to be operated with maximum efficiency to achieve customer and guest satisfaction. Promotes the desired work culture around the vision and core values of Aryaduta Hotel Group.")
        }
        else if(valueSelected === "Assistant Director of Sales")
        {
            $("#description").val("Ensure the hotel achieves it budgeted occupancy and revenue through driving room and catering sales.")
        }
        else if(valueSelected === "Assistant Marketing Communications Manager")
        {
            $("#description").val("To plan, develop and implement the marketing strategies, marketing communications and public relations activity of the hospitality and leisure division of Lippo Karawaci, including but not limited to Aryaduta, Dali by Aryaduta and Aryaduta Leisure. ")
        }
        else if(valueSelected === "Catering Sales Coordinator")
        {
            $("#description").val("Provide support to the Catering Department and liaise with all operations department to ensure all meetings and events are held smoothly to exceed guest’s expectations.")
        }
        else if(valueSelected === "Catering Sales Executive")
        {
            $("#description").val("Responsible for achieving catering revenue goals and ensure customer satisfaction at all times to obtain repeat guest and new guest acquisition.")
        }
        else if(valueSelected === "Catering Sales Manager")
        {
            $("#description").val("Responsible for achieving catering revenue goals and ensure customer satisfaction at all times to obtain repeat guest and new guest acquisition.")
        }
        else if(valueSelected === "Digital Marketing Executive")
        {
            $("#description").val("Managing and improving online distribution channel performance")
        }
        else if(valueSelected === "Digital Marketing Manager")
        {
            $("#description").val("Managing and improving online distribution channel performance")
        }
        else if(valueSelected === "Director of Sales")
        {
            $("#description").val("Ensure the hotel achieves it budgeted occupancy and revenue through driving room and catering sales.")
        }
        else if(valueSelected === "DOSM")
        {
            $("#description").val("Ensure the hotel achieves it budgeted occupancy and revenue through driving room and catering sales.")
        }
        else if(valueSelected === "E-Commerce Executive")
        {
            $("#description").val("Managing and improving online distribution channel performance to maximize revenue.")
        }
        else if(valueSelected === "E-Commerce Manager")
        {
            $("#description").val("Managing and improving online distribution channel performance to maximize revenue.")
        }
        else if(valueSelected === "Graphic Designer")
        {
            $("#description").val("Create all online and print promotions and collateral in line with brand personality and tone that is creative and to of a professional and standard.")
        }
        else if(valueSelected === "Group Director of Marketing Communications")
        {
            $("#description").val("To plan, develop and implement the marketing strategies, marketing communications and public relations activity of Aryaduta Hotel Group, including but not limited to Aryaduta, Dali by Aryaduta and Aryaduta Leisure.  Ensure that Aryaduta is recognized as the premier Indonesian hotel brand by the end of 2017.")
        }
        else if(valueSelected === "Group Director of Revenue Management")
        {
            $("#description").val("Implementation of a revenue management culture at Aryaduta Hotel Group to ensure the maximization of revenue.  Ensure all systems are correctly set up and interfaced with third party suppliers.")
        }
        else if(valueSelected === "Group Director of Sales")
        {
            $("#description").val("Ensure all Aryaduta hotels achieve their budgeted occupancy and revenue through driving sales for the group and implementing initiatives that will strengthen the group in the market and during need periods.  Develop and grow the MICE market for the group and identify new markets that will strengthen Aryaduta’s position in revenue and awareness.")
        }
        else if(valueSelected === "Key Account Executive")
        {
            $("#description").val("Achieve budgeted hotel revenue through maintaining and growing existing accounts and new account acquisition.")
        }
        else if(valueSelected === "Key Account Manager")
        {
            $("#description").val("Achieve Aryaduta’s revenue through maintaining and growing existing accounts, acquiring new accounts and identifying new revenue channels.")
        }
        else if(valueSelected === "Marketing Communications Executive")
        {
            $("#description").val("To assist in the planning, development and implementation of the marketing strategies, marketing communications and public relations activity of the hotel. ")
        }
        else if(valueSelected === "Marketing Communications Manager")
        {
            $("#description").val("To plan, develop and implement the marketing strategies, marketing communications and public relations activity of the hotel. ")
        }
        else if(valueSelected === "PR Executive")
        {
            $("#description").val("Managing and improving online distribution channel performance")
        }
        else if(valueSelected === "PR Manager")
        {
            $("#description").val("Managing and improving online distribution channel performance")
        }
        else if(valueSelected === "Reservation Agent")
        {
            $("#description").val("Record and process all reservation inquiries made by phone, fax or email efficiently and accurately and assist to achieve hotel targets.")
        }
        else if(valueSelected === "Reservation Supervisor")
        {
            $("#description").val("Supervise the operations of the Reservations Department during shift by assisting to co-ordinate operational plans to meet Hotel sales targets")
        }
        else if(valueSelected === "Reservations Manager")
        {
            $("#description").val("Efficiently managing all reservation working flow and ensuring calls are converted to achieve hotel revenue goals.")
        }
        else if(valueSelected === "Revenue Analyst")
        {
            $("#description").val("Analyst the market and strategy that has been implemented by the property and comes with initiative toward dynamic demand in the market with fact & figures.")
        }
        else if(valueSelected === "Revenue Manager")
        {
            $("#description").val("Maximizing profitability by implementing Revenue Management culture in business process")
        }
        else if(valueSelected === "Sales & Marketing Coordinator")
        {
            $("#description").val("Provide support to the sales and marketing department and assist to ensure the departments are run efficiently and effectively.")
        }
        else if(valueSelected === "Sales Executive")
        {
            $("#description").val("Assist to achieve hotels revenue and performance goals through maintaining and growing existing accounts and new account acquisition.")
        }
        else if(valueSelected === "Sales Manager")
        {
            $("#description").val("Achieve hotels revenue and performance goals through maintaining and growing existing accounts and new account acquisition.  Implement strategies to achieve revenue and identify new revenue opportunities for the hotel.")
        }
        else if(valueSelected === "Senior Catering Sales Manager")
        {
            $("#description").val("Achieve hotel catering revenue and performance goals through implementing specific strategies for each catering segment and identifying new revenue opportunities for the hotel.")
        }
        else if(valueSelected === "Senior Key Account Manager")
        {
            $("#description").val("Assist the hotels to achieve their revenue and performance goals through maintaining and growing key accounts and identifying new accounts and revenue opportunities for the group.  Achieve individual group and FIT budgets.")
        }
        else if(valueSelected === "Senior Sales Manager")
        {
            $("#description").val("Achieve hotel’s revenue and performance goals through implementing specific strategies for each segment and identify new revenue opportunities for the hotel.")
        }
        else if(valueSelected === "Social Media Executive")
        {
            $("#description").val("Manage and improve the performance of all social media platforms through increasing the number of followers and ensuring all posting of material is relevant and to brand guidelines.")
        }
        else if(valueSelected === "Social Media Manager")
        {
            $("#description").val("Implement strategies to improve the performance of all social media platforms and identifying new opportunities to grow the online presence of the group.")
        }
        else if(valueSelected === "Golf Operation Manager")
        {
            $("#description").val("Manages all golf and golf-related activities and business.")
        }
        else if(valueSelected === "Caddie Captain")
        {
            $("#description").val("Organize work schedules and supervise the daily work of caddies")
        }
        else if(valueSelected === "Starter")
        {
            $("#description").val("Organize players to play golf according to his/ her tee time")
        }
        else if(valueSelected === "Porter")
        {
            $("#description").val("Ensure all players get a bag tag in accordance with the rules and regulations at the Club")
        }
         else if(valueSelected === "Driving Range Attendant")
        {
            $("#description").val("Ensuring every player who trained at the driving range to get excellent service, a ball with good quality standards and stick clean at all times")
        }
        else if(valueSelected === "Marshal")
        {
            $("#description").val("Organize pace of play players at golf course so that players can play in accordance with the standards and Marshal should ensure the flow of players on the field is smooth.")
        }
        else if(valueSelected === "Caddie")
        {
            $("#description").val("Carrying the bags, caddies also hand golfers the various clubs they use, and put clubs back into the bag after golfers have hit their shots in clean condition, raking bunkers and sand traps, Replacing divots and ball marks and  tell the player how far it is from the ball to the green")
        }
        else if(valueSelected === "House Maintenance Manager")
        {
            $("#description").val("To provide a safe, secure and comfortable environment by maintaining the club’s assets through on-going preventive maintenance as well as day to day maintenance activities, and ensuring that all mechanical, electrical, hot water plant, golf cart availability and housekeeping activity are operating efficiently.")
        }
        else if(valueSelected === "Chief Technician")
        {
            $("#description").val("Responsible for the efficient operation of the club property and all its equipment, ancillary maintenance and repair services and protection of Club  assets.  Structural aspects of the hotel as well as the maintenance of grounds and external facilities all fall within the span of responsibility")
        }
        else if(valueSelected === "Asst. Chief Technician")
        {
            $("#description").val("Responsible for the efficient day to day operation of the club property and all its equipment, ancillary/ preventive maintenance and repair services and protection of the Club asset.  Structural aspects of the club as well as the maintenance of grounds and external facilities all fall within the span of responsibility. Under the guidance of the Chief Engineer assists in coordinating the engineering operations of the club.")
        }
        else if(valueSelected === "Golf Cart Technician")
        {
            $("#description").val("Conduct, supervise and coordinate all activities of maintenance and repair Golf Cart that can be used by players as it should be.")
        }
        else if(valueSelected === "Locker Attendant")
        {
            $("#description").val("Responsible for cleanliness, orderliness and appearance of the entire guest locker area, Provide a consistent room and bathroom product and service adjacent areas that meets the hotel’s standards for cleanliness and presentation.")
        }
        else if(valueSelected === "Golf Course Superintendent")
        {
            $("#description").val("Responsible for all phases of Golf Maintenance and Agronomic operations, cost control, and personnel. Oversees the care and maintenance of the turf, ornamental plants, shrubs, trees and wetlands on the facility grounds.")
        }
        else if(valueSelected === "Assistant Golf Course Superintendent")
        {
            $("#description").val("Assist the Golf Course Superintendent with the turf management of the course and managing the daily golf course operations by scheduling, training, and supervising the golf maintenance staff.")
        }
        else if(valueSelected === "Administration Officer")
        {
            $("#description").val("Assist Golf Course Superintendent in managing the administration and reporting required by the Department.")
        }
        else if(valueSelected === "Irrigation Staff")
        {
            $("#description").val("Maintains and repairs all irrigation systems in golf course. Ensure the water needs for watering / water needs are met on a golf course (no less so the grass or plants dry / dead and not excessive, causing muddy ground)")
        }
        else if(valueSelected === "Drainage Staff")
        {
            $("#description").val("To ensure the field in a good condition (did not mud) appropriate to management standards expected, especially in terms of the overall quality of the drainage system.")
        }
        else if(valueSelected === "Landscape Staff")
        {
            $("#description").val("Care for established lawns by mulching, aerating, weeding, grubbing and removing thatch, and trimming and edging around field, flower beds, walks, and walls. Responsible for treating lawns and soil with nourishing chemicals.")
        }
        else if(valueSelected === "Mechanic Staff")
        {
            $("#description").val("Responsible for the maintenance, repair and prepare units of golf equipment properly and correctly according to the recommended standards in order to support operational working at the field.")
        }
        else if(valueSelected === "Equipment Operator")
        {
            $("#description").val("Responsible for performing work involved in golf course maintenance, including, but not limited to semi-skilled grounds construction and maintenance work, operation of small hand-powered equipment, and work involving large equipment such as tractors, sprayer, trucks, mowers, loaders and other maintenance equipment. ")
        }
    });
</script>
	<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="assets/js/retina.js"></script>
	<script type="text/javascript" src="assets/js/jquery.easing.1.3.js"></script> <!-- slider using this also -->
        <script type="text/javascript" src="assets/js/smoothscroll.js"></script>
	<script type="text/javascript" src="assets/js/jquery-func.js"></script>

</body>
</html>