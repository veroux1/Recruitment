<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

	
    <%@ include file="head.jsp"%>
  	
   	
    <!-- Loader -->
    <link href="assets/css/loader.css" rel="stylesheet">
    
    
	
<title>Untitled Document</title>
	
	<style>
	@font-face {
			  font-family: 'Gotham';
			  src: url("assets/fonts/Gotham-Book.ttf"),
				   url("assets/fonts/Gotham-Medium.ttf"),
			       url("assets/fonts/Gotham-Bold.tff"),
				   url("assets/fonts/Gotham-Black.tff");
				   
     	}
		
		
	.centered{
			color:#936444; 
			font-family:'Gotham', Gotham-Medium;
			letter-spacing:5px;
		}
		
	#fixedbutton {
			position: fixed;
			bottom: 15px;
			right: 30px; 
		}
	
  	.modal-backdrop{
 		background-color:white;
 	 }
  
  	.container1 {
    	position: relative;
    	margin:0px;
		padding:0px;
	}
	
	#fixedbutton {
			position: fixed;
			bottom: 15px;
			right: 30px; 
	}
	
	.modal-header{
		background-color:#936444;
	}

	
  	</style>
		
</head>
	
<body>



<%@ include file="navbar.jsp"%>
<%@ include file="up.jsp"%>
<div id="maps" name="maps" style="width:100%; height:522px;">
	
    <div class="container1">
  	<div id="box1">
      <img src="assets/image/all-01.jpg" alt="map1" usemap="#map1" class="img-responsive"/>
      <map name="map1">
      <area shape="rect" coords="1737,1713,2037,1805" alt="one" data-toggle="modal" data-target="#myModal" /> <!-- Jakarta, Semanggi -->
      <map name="map1">
      <area shape="rect" coords="1205,1637,1513,1673" alt="one" data-toggle="modal" data-target="#myModal1" /> <!-- Bandung -->
      <map name="map1">
      <area shape="rect" coords="1769,1293,2349,1333" alt="one" data-toggle="modal" data-target="#myModal2" /> <!-- Jakarta, Tugu Tani -->
      <map name="map1">
      <area shape="rect" coords="1229,1261,1605,1349" alt="one" data-toggle="modal" data-target="#myModal3" /> <!-- Lippo Village-->
      <map name="map1">
      <area shape="rect" coords="1237,889,1597,933" alt="one" data-toggle="modal" data-target="#myModal4" /> <!-- Palembang -->
      <map name="map1">
      <area shape="rect" coords="1025,605,1381,645" alt="one" data-toggle="modal" data-target="#myModal5" /> <!-- Pekan Baru -->
      <map name="map1">
      <area shape="rect" coords="729,305,949,349" alt="one" data-toggle="modal" data-target="#myModal6" /> <!-- Medan -->
      <map name="map1">
      <area shape="rect" coords="3141,1025,3473,1069" alt="one" data-toggle="modal" data-target="#myModal7" /> <!-- Makassar -->
      <map name="map1">
      <area shape="rect" coords="3757,385,4037,429" alt="one" data-toggle="modal" data-target="#myModal8" /> <!-- Manado -->
      <map name="map1">
      <area shape="rect" coords="1031,1384,1561,1422" alt="one" data-toggle="modal" data-target="#myModal9" /> <!-- IKG -->
      <map name="map1">
      <area shape="rect" coords="883,1436,1565,1478" alt="one" data-toggle="modal" data-target="#myModal10" /> <!-- Country Club -->
      <map name="map1">
      <area shape="rect" coords="1009,1581,1485,1625" alt="one" data-toggle="modal" data-target="#myModal11" /> <!-- Puncak Resort -->
      <map name="map1">
      <area shape="rect" coords="1825,1365,2641,1401" alt="one" data-toggle="modal" data-target="#myModal12" /> <!-- Water Boom Lippo Cikarang -->
      
      
      <!-- Modal -->
      <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog">
          
          <!-- Modal content-->
          <div class="modal-content" style="opacity:1;">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">Aryaduta Semanggi</h4>
            </div>
            <div class="modal-body" style="overflow-y:scroll; max-height:200px;  word-wrap: break-word;">
            <div class="row">
                <div class="col-lg-4"><img src="assets/img/unitmap/semanggi.jpg" class="img-responsive" /></div>
              <div class="col-lg-8">
                  <p style="margin-bottom:0px;">Aryaduta Semanggi is located at the very center of the capital of Jakarta, an exceptional downtown address with 275 suites and facilities to match. Adjacent to Plaza Semanggi and the immediate vicinity of Sudirman Central Business District, the unrivalled location together with its convenience and comfort, is a great option for business and discovery of one of the world&acute;s greatest megalopolises.<br><a href="http://www.aryaduta.com/semanggi/default-en.html">Details</a>
              </p>
              </div>
              </div>
             
            </div>
           
          </div>
          
        </div>
      </div>
      
      <div class="modal fade" id="myModal1" role="dialog">
        <div class="modal-dialog">
        
          <!-- Modal content-->
          <div class="modal-content" style="opacity:1;">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">Aryaduta Bandung</h4>
            </div>
            <div class="modal-body" style="overflow-y:scroll; max-height:200px;  word-wrap: break-word;">
              <div class="row">
              <div class="col-lg-4"><img src="assets/img/unitmap/bandungg.jpg" class="img-responsive" /></div>
              <div class="col-lg-8">
              <p style="margin-bottom:0px;">Located in the lively heart of the West Java capital, Aryaduta Bandung is recognized and appreciated for its Dutch art deco features and 254 well-appointed rooms and suites, considered amongst the city&acute;s preferred accommodation. Equipped with complementing event and culinary venues and facilities, the hotel welcomes a variety of travelers year round, some for its thriving and peerless shopping or as a starting point for day trips to tea plantations, volcanic peaks or hot springs.<br><a href="http://www.aryaduta.com/bandung/default-en.html">Details</a> 
              </p>
              </div>
              </div>
             
              
            </div>
          
          </div>
          
        </div>
      </div>
      
       <!-- Modal -->
      <div class="modal fade" id="myModal2" role="dialog">
        <div class="modal-dialog">
        
          <!-- Modal content-->
          <div class="modal-content" style="opacity:1;">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">Aryaduta Jakarta</h4>
            </div>
            <div class="modal-body" style="overflow-y:scroll; max-height:200px;  word-wrap: break-word;">
           
              <div class="row">
              <div class="col-lg-4"><img src="assets/img/unitmap/jakarta.jpg" class="img-responsive" /></div>
              <div class="col-lg-8">
              <p style="margin-bottom:0px;">At the very hub of the business district in the Indonesian capital city, Aryaduta Jakarta provides a close reach to all the main shopping, dining and entertainment areas. Merging comfort with convenience, its 304 tastefully furnished guest rooms and suites look out to a forever changing cityscape.<br><a href="http://www.aryaduta.com/jakarta/default-en.html">Details</a>
              </p>
              </div>
              </div>
              
              
            </div>
           
          </div>
         
        </div>
      </div>
      
      <!-- Modal -->
      <div class="modal fade" id="myModal3" role="dialog">
        <div class="modal-dialog">
        
          <!-- Modal content-->
          <div class="modal-content" style="opacity:1;">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">Aryaduta Lippo Village</h4>
            </div>
            <div class="modal-body" style="overflow-y:scroll; max-height:200px;  word-wrap: break-word;">
              
              <div class="row">
              <div class="col-lg-4"><img src="assets/img/unitmap/lippo village.jpg" class="img-responsive" /></div>
              <div class="col-lg-8">
              <p style="margin-bottom:0px;">Aryaduta Lippo Village is today its own sought-after destination located outside Jakarta in the Lippo Karawaci township, only a short drive to the Jakarta international airport. Unlike the city center of Jakarta, Lippo Village is appreciated for its easeful pedestrian walkways linking the hotel with the Aryaduta Country Club and Imperial Klub Golf, Siloam Hospital and the newest entertainment and lifestyle hub, Maxxbox. The hotel features 190 rooms and cabanas and equipped with complementing event and meeting venues and facilities.<br><a href="http://www.aryaduta.com/lippo-village/default-en.html">Details</a> 
              </p>
              </div>
              </div>
              
              
            </div>
            
          </div>
          
        </div>
      </div>
      
        <!-- Modal -->
      <div class="modal fade" id="myModal4" role="dialog">
        <div class="modal-dialog">
        
          <!-- Modal content-->
          <div class="modal-content" style="opacity:1;">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">Aryaduta Palembang</h4>
            </div>
            <div class="modal-body" style="overflow-y:scroll; max-height:200px;  word-wrap: break-word;">
              <div class="row">
              <div class="col-lg-4"><img src="assets/img/unitmap/palembang.jpg" class="img-responsive" /></div>
              <div class="col-lg-8">
              <p style="margin-bottom:0px;">Located near key shopping and tourism attractions in the heart of Sumatra&acute;s second-largest city, Aryaduta Palembang offers its international and regional guests 169 upmarket rooms and suites from its 18 floors with views of the Musi River that divides the metropolis with its upstream and downstream banks.<br><a href="http://www.aryaduta.com/palembang/default-en.html">Details</a>
              </p>
              </div>
              </div>
             
              
            </div>
            
          </div>
          
        </div>
      </div>
      
       <!-- Modal -->
      <div class="modal fade" id="myModal5" role="dialog">
        <div class="modal-dialog">
        
          <!-- Modal content-->
          <div class="modal-content" style="opacity:1;">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">Aryaduta Pekanbaru</h4>
            </div>
            <div class="modal-body" style="overflow-y:scroll; max-height:200px;  word-wrap: break-word;">
              <div class="row">
              <div class="col-lg-4"><img src="assets/img/unitmap/pekanbaru.jpg" class="img-responsive" /></div>
              <div class="col-lg-8">
              <p style="margin-bottom:0px;">Located on a wide avenue in the government administration district, this nine-storey hotel offers 158 rooms and two suites suited for business travelers to this oil rich capital city of Riau on the island of Sumatra. Set in lush gardens, Aryaduta Pekanbaru is the closest major Indonesian city to Singapore.<br><a href="http://www.aryaduta.com/pekanbaru/default-en.html">Details</a>
              </p>
              </div>
              </div>
             
              
            </div>
            
          </div>
          
        </div>
      </div>
      
       <!-- Modal -->
      <div class="modal fade" id="myModal6" role="dialog">
        <div class="modal-dialog">
        
          <!-- Modal content-->
          <div class="modal-content" style="opacity:1;">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">Aryaduta Medan</h4>
            </div>
            <div class="modal-body" style="overflow-y:scroll; max-height:200px;  word-wrap: break-word;">
        
              <div class="row">
              <div class="col-lg-4"><img src="assets/img/unitmap/medan.jpg" class="img-responsive" /></div>
              <div class="col-lg-8">
              <p style="margin-bottom:0px;">In the heart of Indonesia&acute;s third largest city at Grand Palladium Mall, Aryaduta Medan offers exceptional comfort in its 195 guest rooms and suites that meet the needs of discerning regional and international business and leisure travelers. The hotel is equipped with event facilities and a 35-meter courtyard pool and offers stirring views of a city inspired by European architectural styles.<br><a href="http://www.aryaduta.com/medan/default-en.html">Details</a> 
              </p>
              </div>
              </div>
              
              
            </div>
            
          </div>
          
        </div>
      </div>
      
      <!-- Modal -->
      <div class="modal fade" id="myModal7" role="dialog">
        <div class="modal-dialog">
        
          <!-- Modal content-->
          <div class="modal-content" style="opacity:1;">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">Aryaduta Makassar</h4>
            </div>
            <div class="modal-body" style="overflow-y:scroll; max-height:200px;  word-wrap: break-word;">
             
               <div class="row">
              <div class="col-lg-4"><img src="assets/img/unitmap/makassar.jpg" class="img-responsive" /></div>
              <div class="col-lg-8">
              <p style="margin-bottom:0px;">A sanctuary of comfort set amidst scenic shores of Losari Beach Boulevard and lively city center, Aryaduta Makassar places emphasis on Indonesian charm and classic Indonesian hospitality. Its 224 rooms and suites showcase the city&acute;s stunning ocean and city views, making your travel to Makassar, also known as Ujung Padang, truly exceptional.<br><a href="http://www.aryaduta.com/makassar/default-en.html">Details</a>
              </p>
              </div>
              </div>
              
              
            </div>
            
          </div>
          
        </div>
      </div>
      
      <!-- Modal -->
      <div class="modal fade" id="myModal8" role="dialog">
        <div class="modal-dialog">
        
          <!-- Modal content-->
          <div class="modal-content" style="opacity:1;">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">Aryaduta Manado</h4>
            </div>
            <div class="modal-body" style="overflow-y:scroll; max-height:200px;  word-wrap: break-word;">
                          
              <div class="row">
              <div class="col-lg-4"><img src="assets/img/unitmap/manado.jpg" class="img-responsive" /></div>
              <div class="col-lg-8">
              <p style="margin-bottom:0px;">Aryaduta Manado is located on Manado Boulevard, a seaside promenade known for its colorful food offerings and as a gathering place to enjoy panoramic views over the Bay of Manado and Mt. Klabat. Situated near the center of the city, the hotel features 198 rooms and suites appreciated by regional and international travelers to this Northern Sulawesi capital. <br><a href="http://www.aryaduta.com/manado/default-en.html">Details</a>
              </p>
              </div>
              </div>
            
              
              
            </div>
            
          </div>
          
        </div>
      </div>
      
       <!-- Modal -->
      <div class="modal fade" id="myModal9" role="dialog">
        <div class="modal-dialog">
        
          <!-- Modal content-->
          <div class="modal-content" style="opacity:1;">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">Imperial Klub Golf</h4>
            </div>
            <div class="modal-body" style="overflow-y:scroll; max-height:200px;  word-wrap: break-word;">
          
			 <div class="row">
              <div class="col-lg-4"><img src="http://www.aryaduta.com/d/aryaduta/images/page_imperialklubgolf_bgImg_desktop.jpg" class="img-responsive" /></div>
              <div class="col-lg-8">
              <p style="margin-bottom:0px;">Imperial Klub Golf is one of Jakarta&acute;s premier golf courses designed by British golf course architect Desmond Muirhead. The 6,486-metre championship course blends essential Indonesian landscape into an astonishing sculpture today lauded as one of SE Asia&acute;s most fulfilling golf experiences.<br><a href="http://www.aryaduta.com/leisure/imperialklubgolf/default-en.html">Details</a>

              </p>
              </div>
              </div>
              <div class="row">
              	<div class="col-lg-12" style="padding-top:0px; margin-top:0px;">
                	<p>
                    	
                    </p>
                </div>
              </div>

            </div>
            
          </div>
          
        </div>
      </div>
      
      <!-- Modal -->
      <div class="modal fade" id="myModal10" role="dialog">
        <div class="modal-dialog">
        
          <!-- Modal content-->
          <div class="modal-content" style="opacity:1;">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">Aryaduta Country Club</h4>
            </div>
            <div class="modal-body" style="overflow-y:scroll; max-height:200px;  word-wrap: break-word;">
	
             <div class="row">
              <div class="col-lg-4"><img src="http://www.aryaduta.com/d/semanggi/images/page_home_bgImg_landscape.jpg" class="img-responsive" /></div>
              <div class="col-lg-8">
              <p style="margin-bottom:0px;">From the Balinese inspired lap and kids pool with curving slide, to the outdoor and indoor tennis facilities, multi purpose hall for badminton and basketball, the club is focused on meeting member and guest satisfaction that includes a range of daily club activities and scheduled yearly tournaments never to be missed.<br><a href="http://www.aryaduta.com/leisure/aryadutacountryclub/default-en.html">Details</a>
              </p>
              </div>
              </div>
             
            
            </div>
            
          </div>
          
        </div>
      </div>
      
      <!-- Modal -->
      <div class="modal fade" id="myModal11" role="dialog">
        <div class="modal-dialog">
        
          <!-- Modal content-->
          <div class="modal-content" style="opacity:1;">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">Puncak Resort</h4>
            </div>
            <div class="modal-body" style="overflow-y:scroll; max-height:200px;  word-wrap: break-word;">

            </div>
            <div class="modal-body" style="overflow-y:scroll; max-height:200px;  word-wrap: break-word;">
	
             <div class="row">
              <div class="col-lg-4"><img src="http://www.aryaduta.com/d/semanggi/images/page_home_bgImg_landscape.jpg" class="img-responsive" /></div>
              <div class="col-lg-8">
              <p style="margin-bottom:0px;">Approximately two hours travel time, both from Jakarta or Bandung, Puncak Resort offers a number of highland activities for the family in the cool, fresh air of this popular weekend destination.<br><a href="http://www.aryaduta.com/leisure/puncakresort/default-en.html">Details</a>
              </p>
              </div>
              </div>
              
            
            </div>
            
          </div>
          
        </div>
      </div>
      
      <!-- Modal -->
      <div class="modal fade" id="myModal12" role="dialog">
        <div class="modal-dialog">
        
          <!-- Modal content-->
          <div class="modal-content" style="opacity:1;">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">Water Boom Lippo Cikarang</h4>
            </div>
            <div class="modal-body" style="overflow-y:scroll; max-height:200px;  word-wrap: break-word;">

              <div class="row">
              <div class="col-lg-4"><img src="http://www.aryaduta.com/d/semanggi/images/page_home_bgImg_landscape.jpg" class="img-responsive" /></div>
              <div class="col-lg-8">
              <p style="margin-bottom:0px;">Located near two major cities, Jakarta and Bandung, Water Boom Lippo Cikarang features a 17-meter high water slide with safe water flow for children to swim and enjoy and for adults the soothing sound of cascading water provides the ideal backdrop for a traditional Indonesian spa treatment by a professional masseuse.<br><a href="http://www.aryaduta.com/leisure/waterboomlippocikarang/default-en.html">Details</a>
              </p>
              </div>
              </div>
              
            
            
            </div>
            
          </div>
          
        </div>
      </div>
      
      </div>


<div id="box2">
      <img src="assets/image/hotel-01.jpg" alt="map2" usemap="#map2" class="img-responsive"/>
     
      <map name="map2">
      <area shape="rect" coords="1737,1713,2037,1805" alt="one" data-toggle="modal" data-target="#modal1" /> <!-- Jakarta, Semanggi -->
      <map name="map2">
      <area shape="rect" coords="1205,1637,1513,1673" alt="one" data-toggle="modal" data-target="#modal2" /> <!-- Bandung -->
      <map name="map2">
      <area shape="rect" coords="1769,1293,2349,1333" alt="one" data-toggle="modal" data-target="#modal3" />
      <map name="map2">
      <area shape="rect" coords="1229,1261,1605,1349" alt="one" data-toggle="modal" data-target="#modal4" />
      <map name="map2">
      <area shape="rect" coords="1237,889,1597,933" alt="one" data-toggle="modal" data-target="#modal5" />
      <map name="map2">
      <area shape="rect" coords="1025,605,1381,645" alt="one" data-toggle="modal" data-target="#modal6" />
      <map name="map2">
      <area shape="rect" coords="729,305,949,349" alt="one" data-toggle="modal" data-target="#modal7" />
      <map name="map2">
      <area shape="rect" coords="3141,1025,3473,1069" alt="one" data-toggle="modal" data-target="#modal8" />
      <map name="map2">
      <area shape="rect" coords="3757,385,4037,429" alt="one" data-toggle="modal" data-target="#modal9" />
      
       <!-- Modal -->
      <div class="modal fade" id="modal1" role="dialog">
        <div class="modal-dialog">
          
          <!-- Modal content-->
          <div class="modal-content" style="opacity:1;">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">Aryaduta Semanggi</h4>
            </div>
            <div class="modal-body" style="overflow-y:scroll; max-height:200px;  word-wrap: break-word;">
              <div class="row">
              <div class="col-lg-4"><img src="http://www.aryaduta.com/d/semanggi/images/page_home_bgImg_landscape.jpg" class="img-responsive" /></div>
              <div class="col-lg-8">
              <p style="margin-bottom:0px;">Aryaduta Semanggi is located at the very center of the capital of Jakarta, an exceptional downtown address with 275 suites and facilities to match. Adjacent to Plaza Semanggi and the immediate vicinity of Sudirman Central Business District, the unrivalled location together with its convenience and comfort, is a great option for business and discovery of one of the world&acute;s greatest megalopolises.<br><a href="http://www.aryaduta.com/semanggi/default-en.html">Details</a>
              </p>
              </div>
              </div>
            </div>
           
          </div>
          
        </div>
      </div>
      
      <div class="modal fade" id="modal2" role="dialog">
        <div class="modal-dialog">
        
          <!-- Modal content-->
          <div class="modal-content" style="opacity:1;">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">Aryaduta Bandung</h4>
            </div>
            <div class="modal-body" style="overflow-y:scroll; max-height:200px;  word-wrap: break-word;">
              <div class="row">
              <div class="col-lg-4"><img src="assets/img/unitmap/bandungg.jpg" class="img-responsive" /></div>
              <div class="col-lg-8">
              <p style="margin-bottom:0px;">Located in the lively heart of the West Java capital, Aryaduta Bandung is recognized and appreciated for its Dutch art deco features and 254 well-appointed rooms and suites, considered amongst the city&acute;s preferred accommodation. Equipped with complementing event and culinary venues and facilities, the hotel welcomes a variety of travelers year round, some for its thriving and peerless shopping or as a starting point for day trips to tea plantations, volcanic peaks or hot springs.<br><a href="http://www.aryaduta.com/bandung/default-en.html">Details</a> 
              </p>
              </div>
              </div>
            </div>
          
          </div>
          
        </div>
      </div>
      
       <!-- Modal -->
      <div class="modal fade" id="modal3" role="dialog">
        <div class="modal-dialog">
        
          <!-- Modal content-->
          <div class="modal-content" style="opacity:1;">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">Aryaduta Jakarta</h4>
            </div>
            <div class="modal-body" style="overflow-y:scroll; max-height:200px;  word-wrap: break-word;">
              <div class="row">
              <div class="col-lg-4"><img src="assets/img/unitmap/jakarta.jpg" class="img-responsive" /></div>
              <div class="col-lg-8">
              <p style="margin-bottom:0px;">At the very hub of the business district in the Indonesian capital city, Aryaduta Jakarta provides a close reach to all the main shopping, dining and entertainment areas. Merging comfort with convenience, its 304 tastefully furnished guest rooms and suites look out to a forever changing cityscape.<br><a href="http://www.aryaduta.com/jakarta/default-en.html">Details</a>
              </p>
              </div>
              </div>
            </div>
           
          </div>
         
        </div>
      </div>
      
      <!-- Modal -->
      <div class="modal fade" id="modal4" role="dialog">
        <div class="modal-dialog">
        
          <!-- Modal content-->
          <div class="modal-content" style="opacity:1;">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">Aryaduta Lippo Village</h4>
            </div>
            <div class="modal-body" style="overflow-y:scroll; max-height:200px;  word-wrap: break-word;">
              <div class="row">
              <div class="col-lg-4"><img src="assets/img/unitmap/lippo village.jpg" class="img-responsive" /></div>
              <div class="col-lg-8">
              <p style="margin-bottom:0px;">Aryaduta Lippo Village is today its own sought-after destination located outside Jakarta in the Lippo Karawaci township, only a short drive to the Jakarta international airport. Unlike the city center of Jakarta, Lippo Village is appreciated for its easeful pedestrian walkways linking the hotel with the Aryaduta Country Club and Imperial Klub Golf, Siloam Hospital and the newest entertainment and lifestyle hub, Maxxbox. The hotel features 190 rooms and cabanas and equipped with complementing event and meeting venues and facilities.<br><a href="http://www.aryaduta.com/lippo-village/default-en.html">Details</a> 
              </p>
              </div>
              </div>
            </div>
            
          </div>
          
        </div>
      </div>
      
        <!-- Modal -->
      <div class="modal fade" id="modal5" role="dialog">
        <div class="modal-dialog">
        
          <!-- Modal content-->
          <div class="modal-content" style="opacity:1;">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">Aryaduta Palembang</h4>
            </div>
            <div class="modal-body" style="overflow-y:scroll; max-height:200px;  word-wrap: break-word;">
              <div class="row">
              <div class="col-lg-4"><img src="assets/img/unitmap/palembang.jpg" class="img-responsive" /></div>
              <div class="col-lg-8">
              <p style="margin-bottom:0px;">Located near key shopping and tourism attractions in the heart of Sumatra&acute;s second-largest city, Aryaduta Palembang offers its international and regional guests 169 upmarket rooms and suites from its 18 floors with views of the Musi River that divides the metropolis with its upstream and downstream banks.<br><a href="http://www.aryaduta.com/palembang/default-en.html">Details</a>
              </p>
              </div>
              </div>
            </div>
            
          </div>
          
        </div>
      </div>
      
       <!-- Modal -->
      <div class="modal fade" id="modal6" role="dialog">
        <div class="modal-dialog">
        
          <!-- Modal content-->
          <div class="modal-content" style="opacity:1;">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">Aryaduta Pekan Baru</h4>
            </div>
            <div class="modal-body" style="overflow-y:scroll; max-height:200px;  word-wrap: break-word;">
              <div class="row">
              <div class="col-lg-4"><img src="assets/img/unitmap/pekanbaru.jpg" class="img-responsive" /></div>
              <div class="col-lg-8">
              <p style="margin-bottom:0px;">Located on a wide avenue in the government administration district, this nine-storey hotel offers 158 rooms and two suites suited for business travelers to this oil rich capital city of Riau on the island of Sumatra. Set in lush gardens, Aryaduta Pekanbaru is the closest major Indonesian city to Singapore.<br><a href="http://www.aryaduta.com/pekanbaru/default-en.html">Details</a>
              </p>
              </div>
              </div>
            </div>
            
          </div>
          
        </div>
      </div>
      
       <!-- Modal -->
      <div class="modal fade" id="modal7" role="dialog">
        <div class="modal-dialog">
        
          <!-- Modal content-->
          <div class="modal-content" style="opacity:1;">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">Aryaduta Medan</h4>
            </div>
            <div class="modal-body" style="overflow-y:scroll; max-height:200px;  word-wrap: break-word;">
              <div class="row">
              <div class="col-lg-4"><img src="assets/img/unitmap/medan.jpg" class="img-responsive" /></div>
              <div class="col-lg-8">
              <p style="margin-bottom:0px;">In the heart of Indonesia&acute;s third largest city at Grand Palladium Mall, Aryaduta Medan offers exceptional comfort in its 195 guest rooms and suites that meet the needs of discerning regional and international business and leisure travelers. The hotel is equipped with event facilities and a 35-meter courtyard pool and offers stirring views of a city inspired by European architectural styles.<br><a href="http://www.aryaduta.com/medan/default-en.html">Details</a> 
              </p>
              </div>
              </div>
            </div>
            
          </div>
          
        </div>
      </div>
      
      <!-- Modal -->
      <div class="modal fade" id="modal8" role="dialog">
        <div class="modal-dialog">
        
          <!-- Modal content-->
          <div class="modal-content" style="opacity:1;">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">Aryaduta Makassar</h4>
            </div>
            <div class="modal-body" style="overflow-y:scroll; max-height:200px;  word-wrap: break-word;">
                <div class="row">
              <div class="col-lg-4"><img src="assets/img/unitmap/makassar.jpg" class="img-responsive" /></div>
              <div class="col-lg-8">
              <p style="margin-bottom:0px;">A sanctuary of comfort set amidst scenic shores of Losari Beach Boulevard and lively city center, Aryaduta Makassar places emphasis on Indonesian charm and classic Indonesian hospitality. Its 224 rooms and suites showcase the city&acute;s stunning ocean and city views, making your travel to Makassar, also known as Ujung Padang, truly exceptional.<br><a href="http://www.aryaduta.com/makassar/default-en.html">Details</a>
              </p>
              </div>
              </div>
            </div>
            
          </div>
          
        </div>
      </div>
      
      <!-- Modal -->
      <div class="modal fade" id="modal9" role="dialog">
        <div class="modal-dialog">
        
          <!-- Modal content-->
          <div class="modal-content" style="opacity:1;">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">Aryaduta Manado</h4>
            </div>
            <div class="modal-body" style="overflow-y:scroll; max-height:200px;  word-wrap: break-word;">
            <div class="row">
              <div class="col-lg-4"><img src="assets/img/unitmap/manado.jpg" class="img-responsive" /></div>
              <div class="col-lg-8">
              <p style="margin-bottom:0px;">Aryaduta Manado is located on Manado Boulevard, a seaside promenade known for its colorful food offerings and as a gathering place to enjoy panoramic views over the Bay of Manado and Mt. Klabat. Situated near the center of the city, the hotel features 198 rooms and suites appreciated by regional and international travelers to this Northern Sulawesi capital. <br><a href="http://www.aryaduta.com/manado/default-en.html">Details</a>
              </p>
              </div>
              </div>
            </div>
            
          </div>
          
        </div>
      </div>
     
      </div>
      
      
      
<div id="box3">
      <img src="assets/image/leisure-01.jpg" alt="map3" usemap="#map3" class="img-responsive"/>
      
      <map name="map3">
      <area shape="rect" coords="1031,1384,1561,1422" alt="one" data-toggle="modal" data-target="#modals1" /> <!-- IKG -->
      <map name="map3">
      <area shape="rect" coords="883,1436,1565,1478" alt="one" data-toggle="modal" data-target="#modals2" /> <!-- Country Club -->
      <map name="map3">
      <area shape="rect" coords="1009,1581,1485,1625" alt="one" data-toggle="modal" data-target="#modals3" /> <!-- Puncak Resort -->
      <map name="map3">
      <area shape="rect" coords="1825,1365,2641,1401" alt="one" data-toggle="modal" data-target="#modals4" /> <!-- Water Boom Lippo Cikarang -->
      
       <!-- Modal -->
      <div class="modal fade" id="modals1" role="dialog">
        <div class="modal-dialog">
        
          <!-- Modal content-->
          <div class="modal-content" style="opacity:1;">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">Imperial Klub Golf</h4>
            </div>
            <div class="modal-body" style="overflow-y:scroll; max-height:200px;  word-wrap: break-word;">
                <div class="row">
              <div class="col-lg-4"><img src="http://www.aryaduta.com/d/aryaduta/images/page_imperialklubgolf_bgImg_desktop.jpg" class="img-responsive" /></div>
              <div class="col-lg-8">
              <p style="margin-bottom:0px;">Imperial Klub Golf is one of Jakarta&acute;s premier golf courses designed by British golf course architect Desmond Muirhead. The 6,486-metre championship course blends essential Indonesian landscape into an astonishing sculpture today lauded as one of SE Asia&acute;s most fulfilling golf experiences.<br><a href="http://www.aryaduta.com/leisure/imperialklubgolf/default-en.html">Details</a>

              </p>
              </div>
             
                </div>
            </div>
            
          </div>
          
        </div>
      </div>
      
      <!-- Modal -->
      <div class="modal fade" id="modals2" role="dialog">
        <div class="modal-dialog">
        
          <!-- Modal content-->
          <div class="modal-content" style="opacity:1;">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">Aryaduta Country Club</h4>
            </div>
            <div class="modal-body" style="overflow-y:scroll; max-height:200px;  word-wrap: break-word;">
              <p>From the Balinese inspired lap and kids pool with curving slide, to the outdoor and indoor tennis facilities, multi purpose hall for badminton and basketball, the club is focused on meeting member and guest satisfaction that includes a range of daily club activities and scheduled yearly tournaments never to be missed.<br><a href="http://www.aryaduta.com/leisure/aryadutacountryclub/default-en.html">Details</a>
</p>
            </div>
            
          </div>
          
        </div>
      </div>
      
      <!-- Modal -->
      <div class="modal fade" id="modals3" role="dialog">
        <div class="modal-dialog">
        
          <!-- Modal content-->
          <div class="modal-content" style="opacity:1;">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">Puncak Resort</h4>
            </div>
            <div class="modal-body" style="overflow-y:scroll; max-height:200px;  word-wrap: break-word;">
              <p>Approximately two hours travel time, both from Jakarta or Bandung, Puncak Resort offers a number of highland activities for the family in the cool, fresh air of this popular weekend destination.<br><a href="http://www.aryaduta.com/leisure/puncakresort/default-en.html">Details</a>
</p>
            </div>
            
          </div>
          
        </div>
      </div>
      
      <!-- Modal -->
      <div class="modal fade" id="modals4" role="dialog">
        <div class="modal-dialog">
        
          <!-- Modal content-->
          <div class="modal-content" style="opacity:1;">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">Water Boom Lippo Cikarang</h4>
            </div>
            <div class="modal-body" style="overflow-y:scroll; max-height:200px;  word-wrap: break-word;">
              <p>Located near two major cities, Jakarta and Bandung, Water Boom Lippo Cikarang features a 17-meter high water slide with safe water flow for children to swim and enjoy and for adults the soothing sound of cascading water provides the ideal backdrop for a traditional Indonesian spa treatment by a professional masseuse.<br><a href="http://www.aryaduta.com/leisure/waterboomlippocikarang/default-en.html">Details</a>
</p>
            </div>
            
          </div>
          
        </div>
      </div>
      
     
      </div>

</div>

<div style="padding-bottom:30px; padding-top:20px; margin-bottom:150px;"> 
	<div class="row">
	<div class="col-lg-4" style="height:70px; text-align:center;"><img src="assets/image/icon1.jpg" class="img-responsive" style="height:30px; margin:auto" />
    <a href=#maps id="all" class="smoothScroll hvr-underline-from-center" style="color:black;">All</a></div>
    <div class="col-lg-4" style="height:70px; text-align:center;"><img src="assets/image/icon2.jpg" class="img-responsive" style="height:30px; margin:auto" />
    <a href=#maps id="hotel" class="smoothScroll hvr-underline-from-center" style="color:black;">Hotels</a></div>
    <div class="col-lg-4" style="height:70px; text-align:center;"><img src="assets/image/icon3.jpg" class="img-responsive" style="height:30px; margin:auto" />
    <a href=#maps id="leisure" class="smoothScroll hvr-underline-from-center" style="color:black;">Leisures</a></div>
    
    </div>
</div>
<section>
<h1 class="centered">ARYADUTA HISTORY</h1>
<div class="col-lg-12" style="height:550px;margin-bottom:100px; margin-top:50px;" id="timeline">
	<img src="assets/image/timeline01.jpg" class="img-responsive map" usemap="#timeline" />
    <!--<map name="timeline">
     <area shape="rect" coords="481,1705,745,1937" />
    </map>-->
</div>

</section>

<!--
<div class="col-lg-1" style="height:550px; background-color:red;"></div>
<div class="col-lg-1" style="height:550px; background-color:blue;"></div>
<div class="col-lg-2" style="height:550px; background-color:yellow;"></div>
<div class="col-lg-1" style="height:550px; background-color:green;"></div>
<div class="col-lg-2" style="height:550px; background-color:yellow;"></div>
<div class="col-lg-1" style="height:550px; background-color:green;"></div>
<div class="col-lg-2" style="height:550px; background-color:red;"></div>
<div class="col-lg-2" style="height:550px; background-color:blue;"></div> 
-->

 	  <%@ include file="footer.jsp"%>
	  
	  <script src="assets/js/jquery.min.js"></script>
	  <script src="assets/js/bootstrap.min.js"></script>
     
      <script src="assets/js/jquery.rwdImageMaps.min.js"></script>
      
      <script>
		$(document).ready(function(){
			$("#box2").hide();
			$("#box3").hide();
			$('img[usemap]').rwdImageMaps(); //responsive coordinate
			$("#all").click(function(){
				$("#box2").hide();
				$("#box3").hide();
				$("#box1").show();
				$('img[usemap]').rwdImageMaps(); //responsive coordinate (for button all)
			});
			$("#hotel").click(function(){
				 $("#box1").hide();
				 $("#box2").show();
				 $("#box3").hide();
				 $('img[usemap]').rwdImageMaps(); //responsive coordinate (for button hotel)
			});
			$("#leisure").click(function(){
				 $("#box1").hide();
				 $("#box2").hide();
				 $("#box3").show();
				 $('img[usemap]').rwdImageMaps(); //responsive coordinate (for button hotel)
			});
			
		});
		</script>
        
        <!--
        <script type="text/javascript" src="assets/js/jquery.maphilight.min.js"></script>
    
        <script type="text/javascript">
		$(function() {
		$('.map').maphilight();
		});</script>-->

</body>
</html>