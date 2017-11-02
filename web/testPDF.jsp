<%-- 
    Document   : testpdf
    Created on : Oct 26, 2017, 8:49:43 AM
    Author     : Darien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="helper/connect.jsp" %>
        <script src="assets/js/jspdf.js"></script>
        <script src="assets/js/jquery-2.1.3.js"></script>
        <script src="assets/js/html2canvas.js"></script>
     
        <%
             
             
             String transactionid = request.getParameter("transactionid");
             String name = request.getParameter("membername");
             String jobpos = request.getParameter("jobpos");
             String department = request.getParameter("department");
             String loc = request.getParameter("loc");
             String city = request.getParameter("city");
             String report = request.getParameter("report");
             String etype = request.getParameter("etype");
             String bsalary = request.getParameter("bsalary");
             String bsalary_text = request.getParameter("bsalary_text");
             String allowances = request.getParameter("allowances");
             String allowances_text = request.getParameter("allowances_text");
             String cdate = request.getParameter("cdate");
             String adate = request.getParameter("adate");
             String location = request.getParameter("location");
        %>
        
        <script>
           /* function genPDF(){
                html2canvas(document.getElementById("testDiv"),{
                    onrendered: function(canvas){
                        
                        var img = 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAcEAAABXCAIAAADzkWlVAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAEhVSURBVHhe7X2HfxtHmuX9bfe7G48se2d3bnfH4yBGBCYF27JyFkIDJCUxSc4jy9mylcUAIgOkck5UJpUl5oiMe6+qAYIUSJEgZM/u9oeH6upCpa766tVXnfC/kppoookmmuQqGodqookmmuQuGodqookmmuQuGodqookmmuQuGodqookmmuQuGodqookmmuQuGodqookmmuQuGodqookmmuQuGodqookmmuQuGodqookmmuQuGodqookmmuQuGodqookmmuQuGodqookmmuQuGodqookmmuQuGodqookmmuQuGodqookmmuQuGodqookmmuQuGodqookmmuQuL3FoQoMGDRo0ZEM20ThUgwYNGuaGbKJxqAYNGjTMDdlE41ANGjRomBuyicahGjRo0DA3ZBONQzVo0KBhbsgmGodq0KBBw9yQTTQO1aBBg4a5IZvkm0OlpP3TPQnVo+4KyQxJY6bwBSKdbaYkUrWaRWSEdLTM3dyBcrFJ7arO5C7lZf/MIXQyQ6ZgasvnBSxObKaEpDyqiB0ZmA5P7+YRaZkWnjOkTAucI6RkhDAsHQ5Rw+UPQtSQmSHjpCUzHJLenRcyE6oifOkQ6XkZ02Tar2mkf0p7FoiX80nLtHDg5cCXQ+aLbJInDmXCRDKeiMm9WDyJTyKOwBj8yRg+SewmI8k4AuHFz7F4QgzBdCaZmCl8gWClIqgVtTfFKkmExFE/4afIYBlDDUugrqi+/IX7SCUgQ3IAvgnUJCxaiVmh+WKijZJoRdYQjcSoELVV2WiIxR3h4BNTqyF+iYlIjCoiiA1aXtScRy1yySPwjUdiiShbiRVjkOpPsEHRZjxG1kBUEr8wRip5fqE62KBQiYxfs0JUKeUXlVPBtPLHyQjzgnToVzOKcjeCnmRnyOqxxLCIJkpFmCwyK0S9kEoIIsegkGziKDzIVu30+YEiWkmUy/7iDkeHDFFFRs5EajNFeFDIIF0TagW3yCpGRRY7C4MUeJDnZA1loQIMlw2LXUpmZFYAAnchyCZ55FBC3RNaSE8iFh7ojUwMRccGo2MDwjMUHR6Khak9gk6FyGTymCUmA/MJobfjrMz4SHR0MDY2GBuH28dajY3GxkYEhoHo2AhC4uFwMhIVFYVukfOhamAFZCa7LWfNgBNJJEPRRGwkhIKi46jAcHRc1mEoNtYfHe+Ph0cSETYUkE6oQorwyzokoqDLUHRiAAcVHRtjhuPIZCA6ipxHwmHUOpU2LxAC1sYAiU2MRUcG0Z6iUDSdOBC0GwcQ2EMMJqnHMlk6k7xA5JwMT4heQ9HsU7gCoj7jw7HxAYCtAQ2cGIYOJKPhhJzEWTkeCLIRsxd0hITCTGX+uUEK85d6kogOPQoNPQHCQ4/DdJ+EBh9FQqHJppkVzCk8Fhp4Eh5+HBp8EIZnsD80+Hxi+IWYfKfHfzXoiI1sQDjRsdjoUw6K0eEY1IatlxVi4HAQwc/mnforuyA68ZzqNyH8Y/2h0DhamE2bLj0HSIEHFU63GfKMhUVfoyyMo1FBNcORidAUDgVkHkyzAGSTfK3lU62TPjhR6bH+Z99b1hw0rThuqWxRVhytXnVM+bjZvtLxdU0yNkLNFXEpMnk6n9eEaPh+4Ji7Yb23cb2/YU2g/hNvwxrsuhs2eho2+OrXSXjr1/saN7gbNnj3bPF9ut2/t+b+idZkf3cyOpKIR6MYe6wwWEkQE/25ACZ6Ihy973O5G7d4Gtd5UGjdRl/9ek/9RkfDRsfuzRebfwQtoklEfBYqGldNnob6Q3Ti4ek2Z+NaX/0aLw6hYZW7cbWnab2ncUNr07Zbl87m2LZSsgVyG40mw/2ez83epg2+pg1oN2/9Wnfj+vbGLacO/5yMRWLxWFQmEfpAkbv5gmwRHNrTOyga8DQQ7kZgDeCiu9pXvwrwNqx2N6xzomc/3eb8zBz4tv5h8Fjk2X00He0mrp5iMOw5s8vMc66tqFXGFtNb+MKvexx1G9rr1jp2rmrfscqxY03LzvU3z59WTYlU7BmBqerB1bZda127PvbsXOGu/ci7a137znX7G0ywC6ZHniNEmRQ0YDw8ePeCk02H0bEBA8TTsM7TAHcSHCkMX+trWO2tXyOaenocV8MmjCa0PAaUs3GTq3GDs2HzyeP7k9GQNK1yhJRMHeZuPBkZfn7yuHf3BlfDOtfuze7Gjd66NZ6mzcf22Mf6nqFEzuOZOUDSOeSAbJJPDsWWRyV92MZjV/ytdYZ/PbL6/ZbV/6/lk//XvO6D1nXvOTa8d9hkHH56EysRNdWUcjOaKe+Ix7pdv3qtRp+5NGAp6TAXeK06t9XosRh9Fr3PUuIHzMK1FPusxQFrsd9a7LXqW5UVzfblnfvsTy74kuExwVvUu+n5zwdiCk0kx/vO/cPstZb6LMWpovUeq8FtNbTtWh16cpdDm/FZpFhwicbKyIdLZdDxyFN//Rq3Vee16APmooClEHm6FYNDqTj5Q2Pua3kpU0PgSM1MRiNPO4552J6FPnNJ0FwaNKPcIre1rLl27cSLB6i6yqFqR+e1c6lj0p9I9lz0m0v9Fhy+zmNFA8It9VhLvFb0YxF/Qo/T1bGjrUavtcxtKXdZKlpsnwQ+V7rafw296EZl5TCfLCI3iIphq/YXzNvo+IVvFSgeesdnoe6hqg5l6a0zHarCqwcyM+LxcPcFp7XCZ9VBJwPIxIzDrNhfu0HMAS/FnxtYPfrA8mODXZ0esz5g1aE3g4oONfQRetSZYKsSXgvauRiKKn4V7ZmCODq9x2JA48MPD1K5bEu9P38F42NBdqgUGvVqg/GLPAfu+XZ+HLCiSiU+qx5K2GEp8lh0LfaPO47+IucnMViBVC7qbk7IJvm8pgRHHJ84TswAodGvNy/bbXjr+2V/Pb7mP9rW/Hvr2nfa1v7NvfHvxzcW3HEfVNkhe6Eiu7wjnrzrOoDeDaC5LfqghfwItvJb9X5LKUgHlAodFR50CRSlEGQUtBQFTeieYp8NlLT0zE+fxwf7uK4XGU4vYs6AA35JJKNDt0+57FU+pdijFIHHMcCC5qKgtbjNYjzWuB1L1HSSKRwKn2g/nlAID5/7od6LmQCHYzEGzMVBS4nXXOqprjy2Y83wo26mTGUyP0iHfhQqyk39wrVSdOLs1za/qShoKQgouqBZ32Eu9FsLMLSctqWnDu6DHohTgYRIihoLXx7BdhAcasE8JIc6hq6BXMPGFKMdIWJ4+9G/iGYGMFmCyzD2DD6T3qtUNdes6vIcmxganJ5/LuAxYiu1gyM5Onb9O3PAXNjB6a2o07zkhKnQbS2/eSaoLjlnB5x4MtxzyWUpRxd7cAhWXdCE6aGMHBrL1Q6VpxAJ6FZosOuUz1IG6iRHmwG0HtqHAG+y3fiTaEDBnpjsBcC5iIldEhnGFDsC85bY9ZqLHNaK9v17MdPjQKeUPh/AUVtBWJY82YKg6HjfRYfTYhQdTesHpQfNBX5rqcNa/vOOzaO9zxGN45Tx1UT85oxskh8OhaMm5q6qE/fO+Bqr/qO+5P9+XfWvhz7527GVf3Ws+5tjw7uODX9zbn7/kGVFYnyIKcSKXlW314148r77Vx9mLXOJ12JANwfsRnCNz4SJvRgsCT+pB+YMNVXnV/QBG6i2tNMkOokodWG8NW5PjPbzgHPmJoJKheNOxiYe+39zmEq8tlKwuddU1EmFKPYqhhbb8sdnvaklSTyG0ShSqCm5y+S9XSdaLZU0skwlQRts6lLv9mJoeatt+UMkh/4Kts4FqoMNr3RhRw1GybFosu+O01p5wloUsBY5zbABjWwla4EYPPrWpq3h4V6RVE3IpCn1yCsSyQcX0a0058Us6DHR0Aug19Cz6GvMiEqp21zk4aqiOGArDdpLAzZUtQg2O6wqMW/pnNalxxotY0+fJiI4WDFhTS9obhB9RIGf3ZRMRiaufGvGfMyWodFUFDQXg0O7zgbVpmGzzNwywol0n4eBT8tOAenrQMc4xgM1a0F/UyLPHeKsFI6T7BKLDN485zRXgaa99jIvTFEL6J4zEACzNGgtAbzbl8CPOggOJb0GRLjPVNihQGk5SZCF0aRyqYfFkH2Z98D3sPBR1vQKzBHpBhUcCm3i4gaz8/izru9h3WPiVCsjass6o5GPVH9yo8MFYw6RWTivwYnMmGeuSphN8sahdDjMZAiOMnS4fluj4a3dxjcbdYt+XfnesdV/b1v3TvO6vzu2vO/Y9F7zduP1zmaOw1QmacWjpAPzi3i0x/UTNDhgwpITTc8hB7sAExcm3k5pJnBBrfeaYZyW+cwwPxGBPeRSjE4FGgyaK3bYyk/s35OMjy1oeYK0IME4NTk21utu3OQ1wcoo85LQweN6n2JwWQzNO9eOPX8IxeH5U+phRolxpIwkhx75dm+A5eU3wRLUdVgKfDZMDHqXtbx1tykeGgX1sm3TqeYFVVAoCUVmw28slpwY6vzK5LOV+U0FZChbOUrEWg/2O1opaNEdV5b3nPMmo+FUspTInPMJyaE8/SKGkFzqYmrEoNIHYCuZCvw0AIv9YAFzkY+LDAEQmVLCEyBkXo5AWKwtNR/fO+dO8DJ6rp2rOmKDYwcioUvfWUHlggGNbrFSdlmrrp8THMr2ESll8uyIRO+fFhN/CVbKPoVnokBzh6s/TsbGX4o8N6hzhPDFxgdvnPCaYdOhHQp9PJdFJkLLkKGwUKPlUdRhpbmXJlDRYoQXSzowFxsfJirWQ4hgoMdicNlWePZ/RzM0Xe78kVI8VJbmBDkxMhq6c9KFYcKTNlx8CJBPRVcWO2DrfGpLTowxA/kV+TAn4c8F2SR/a3mKMFXQMfH4+JPb9RX/2aR7s17/53rDoq9W/NvBNe+0rXu3dd07jg1/92x8z725KPDZFthQbA9pp6iZCMnMOY+IhcGhGEsdGFRiecJZ1FLgUcqctio3lbvMrVQ4lUqXUunGusliwAjEaETHQPUFR0CfwL/FzfZl3Wc9GdPG/AECBQOCB7kbCz244a9e6aV2ijWUUuYxc+nktJWfO/AFDBlJ11NyQMrY6M3mb0C1XlC/1QAODZqX+G2lOKL2netCT+9h+mWXgPKmJJwzpFDnuKMOdtQ8Mj725JbPVu6ltcKJh/a7mJaEFQADEKxaebhuY3S0LzUCUvlhk2dwLQ+rBzUJWjARwoaCGV7it5XBcIO5h8EM9vFajR6z3q9gYJPC/KbSIOhAweyoc6LrraSPDsv7HUrhMfuHt8/4aLlML2huUB1sRJ/h8KPgUBvGNuZjqBBKJLlYl944G+TPYjXDJDL5y6DEw7RDK3EgbqverdASxErlQM3q3O3QSU7h2YbBGx1epYwEZC12WfXtUCGlHHAq5WhDXjPAPA3rnmeWS8RKn8syDA03DspW5rSWuewVTpsBpoZTwQwBm6O83WpstcEO/UZUUhxkLhDLMHjEhrdKQQPHX1z9eSd0HsNZnEAQa8fUCRz0PnaP2FfePttJYxuJxfjh8bIaCxsOUyWf50PJoTg21DAR/3nXpnr9242lbzYZFu/Wv9lo/NOB1X9vXv2eY9177Rvebd+8pH1rUcuW4sc3LjAJm2ZK4VN28ohY9J77N4/ViCWeDzMYxhisFUtpcPfmy80/Xmz9CbjU+uPllu+9+2pdn24N7F7vql4mzE99h7kEK3qMOmiYz1zislYG9zVMsaPnAzgcOFxfhNml2EZC1479g9axAtOp1AsbitdqUFxJm21p/81LsELZTvhyA2bENhF+fNNTuwLc4bMUuS16j9nosWFmLmi2VF1tPwLqRMbqhZIFgZ2KLXKjRsKwDY/edv6KxbLfZvCZSzvI3TDqOajA41DlgBnmgKGldmX3pRPMQSiv2s/MML+AHXoZrCTIkWPbY6FdfNRkdDdt8OzZ6tq9zb1nu2f3Vt+erc6dq7w7V4LfXVaDTzEGufYE+/MUKtOaYYLp220rWmrXh/oev1TQfEBhw/HgoxOXv7OiWztNnHI4x5gNHsvSrrMBjmc2q2yhGSCyCndf8Fiq0LCoJ5gOB+tWyhe0llcdIfF4//1r7bu3uj8zuXZv9ezZ4m7arKJxs69pc6BxU7BhXes2kGy5MDZh9NGqcCiVgaZ1roZ13j1b3Wje3ZtcTZtdTeuR0Nm41b17m6PRHGg+lFjIYmgqh2JL42PkYbBmOZg9KFaQXLphDWeBGVEEcIxbSluVpc3ffspb1FNZiUbG7j8ph5IK4AEljg083lX1H03GxQ36N+t1i/cY/9Kk/9N3y/7SvLagbe277Rvec2wsaN9S6Nha4PzckgyNiymCY1PkouYn9vKNWKTbtd+NAcPrswa0uAdTqGK4dPgbLjlRf5BaPMqbRWAgR0cTE/0T/Q+vNP/oti7tBE2YxNlSGBEK+aK1ekV8uG9K/nMGHDFw4FdHGVogPvGk48utPitsIiydiv2mQiorx4zO1bA+Oj7CdhIqxHTxWGzsRaBpI6+NiOWzOBxots5jL/PtrUmEuYpBKUyA7wIAJ3OXHDrwAEaHb3uxBwTKSQVWACyCIhjOWA8GzLAL9GgrmDMnvq9LRMUgSHPotNzmDilZdmGHXmKHCh6UxhGM4kPVq2NDz5LhoUR4OBEZxuoP1M+7R4eej7/o6bsUbP+8tl2p8FhKOmwwQkH64swaFqcWnglpbtgSGeqDPos+4jZV3KswRdhn0K4r31lQMWG7qetft7Wi62wHlT/dLpmZTEci1HMBSQSHwthHbUs8ivFA9bqFcOikYBcGQXgUapMMoaFGkqHhZFgAntBIcmIg2XvbaV8GNROXkuQKuuy47eNQ99VkaEiNpkL6RwXG4tEFPOKRqp26kYiM3D/UJG6uMHTw3CvP3gTFOQdMLWBVrsnEmZkjO9YPv3ik2nZIKr+k0Yzc5o5skqfzoawW1pXiGmw8eqnt57ryf2kwLGowYC2/uE7/VqP+jX2rlzRvMbTQDgUKnJsL27csabZWhZ518zZDkYHMS9RjMvN8Ihbpcf3MJScVkXoAQ8+j6C8c+VaeX58sF2pN5Yb2x8Dyd9p+BF+gk3jHhgLyhZFY4rCVPb56Jsf+SG/xZVmiDWMjg7dOtFqWguV5ZxUoiZc4aV7BFr7pPiDutmQDsa7RiZ7AIaxPRbQSVAw2rA9rf4vuqP3DwZ7rmAzUsYnvgoAvt+ouT+mHu4NHAvLaK6iTZxh17Rbjuc/We6uX+axlMAQCsAqhykpps21F3/27IhvUnbmQUGVW8wQcSsYuQ5itvC4P3jSgXwTFEPur10cmJlIJZDMTPCAY6Jg1J0YHuzrP7bNiHerHMh+kwNkRhgzb87h9xY2gA0njUT5JgIQUmdmsgCN8QhgiOdQkztNJ+gPLy2tKJ0SF0jFnRhwces6l0AYUmaCvobqGA9ULsENngpTJFhaAeTH00FldJU43AbD1OHEetX8y+rhbplBjvgbAoci2ikWjfXexhkBNoPN+uZLAwLRV3v5R8SjoSuqAuMOv9LiyrPnbPUgitY/5yE1uyCZ5u6YUJ9PTFx7utVW+s4vr97fq9W+CRnfqFtWXvf3onLtzr/3YhiWODR8Azi1LHFuXtJgMF377KhkOpewluKljfR3g/aH7BYdyxceLDOIKw6Uj34BeM+wBCqPLgEhk7Okdf7XBx7OomIQNGG+gtnZb+bmW/Qs5a6aK2MVx8y7OyMCt1p/cWMVDTa0wQovE5Zoyl2Josy8d7L6NOkaivNA+1nOtTVkuzj9yEuapCazvzEVtNR92+Y/jcOSJ1sniFoZJBkGjhIaCn28LYMEOfqcFqnebS9rsyx6ed/e0/whrrsOqD5jwK5iipF1Z1vnTl7IusoHVx1vnDziUjF2GUGFexaFTk4grgVhaYsERTUbGkmNPL/zc4LWUB2E424o9Vl6jx6zQZqvaX7MxPNjPNCKh2Iji6JkRcIRPCEM0Dl0o4FDU8Tj24lxrp62S96hxmPDKcHv1Cs8XSnLwtq9mGRQS5k6nON3hsFf9VrNu8NmjyUxSeeaCbJI/DoXLTfSS99jOsr/WG8CeXMs36N+or/jLd9uX8U7gwfsHN5aAQNs2vu/e8h7sUMeWwmZTxcTTHrV1iFTXvQ7E4/fc5FBQJwz+ICw4lUP38iY7dXmNeElMWzCqCZ7CTsRDwy3bl5y081JvwGwMWow+sxEKffrgt7lzKCCPVvjhI2WD+8YG+LgU7TgsRrBIL2m36l0gfWtpYF8TDSjEiwyd+6HOp5TJ2/FS46rYbSlt/0yJh0LojimreHZPyp8LEiI3kUk8Mng1CKuTXMBTIjpei7MZDtesio+NjD2541YMQUXfgSYyFfsUnd9W5ar+GKloh/IpauYh8pw34FAydhnCHF/FoWjYSQUjkEIkFWekwaeh3gt7bT5TidtW7FagHrwZHjPZcfvKq742xM84p0ZbAZmldrMAjvAJYYjGoQsEvkJkP068CO780GfixV40BRvTZvxV4eWjZKj/wk81HsXo5/2tUD+902psUZZd9LRw1KhZiey4nT+ySX44FCOUmoBvdOwH26p6Ixbvi2CENhoWNxkX1Rr+5WzbIZ5Ei0+c2lvdtqGgZdN77i3vurZ84N2yxLWt+Jb3KFeIzALZTWabf6gcWupXb38rgUEq1vL71CvXrAMBB/viiinGfSQy3Ouy631mXs0X98rwjhko0JnDP6b6Zv5AWeJo4cUuW4+BaIfY2N0LLnsVFiPe7QUoRWhtEdw2+4d3OhzJyPA9729OWyXvJOWNq1BlRCCZttR+PPb0Hu+JEzmpwuJyrWQKcERWCRqhX5gwigLiri/Uio9U2asenmpnkeHxc3sttA7AFNRveGizn2/9lWcU5Q0YapXmDTiiDpO7DEGVgLnZoQIikWxpMW3y8lw0Euu7c6Jxlbj9iOfKxSGUOq0Vge92Ix4TqYBeaBwK/I4cim/aHw2/ONfmV3D44g4BXn0tdtiqjn+xMxEKoykmbndgUudpcXEPFpQQq/uDddvG+uWlCza3zDIXZJP82aFIG489unxih/HfGvV/btAtknZovWFx/Yr3x/teIAYWcU/P+o5tKHFset+15X3vlgLflvfd25a0NW5OjA8LMsJX5Cklo4j8IB6/7/oF4wQcynOIfKrH4FLKLhz5juc95agSIOfguORuNDrcfZ2XcclT6BgwrzwJYLjiwvyW0cE5QD1O4aAsemH2jN84/jW0JGgqgsErnv/BkCuD1rqaNiSeXwvWrcJAAsniJ7+4MoYR5bCWXXUegBrJyqdzlVnmjHhMUobINBYNP7nhrq6CFR8Q9wahaBhuzfXrwkMvxG1UseiDS157uXiyRdyJDVNaKTlevTo8NASrj6bfS0XMEXAoGbsMYT+9gkPVhBCmUTOCI9ubP7OXRx92HAQpcGYVZIc2xyEctouaM57Mge0gGmRGwBE+IQzROHQBgIP2RiuJBWEy3H/9ezvWZx6buMVK3KJwrOaTK0EXI8NQm3h+ee82rOHEM6kcI3674Zj9o6tBLxmGmbyi+2ZDNskPh4qEGD+hn6rXgTQbdW/sNi6u1/25seytnWX/eurQt3wQWdh5sFMcO9a5ti5p31Tg3vyBZ8v7nu2FzdbK7tNOng2Ul6XSkllEXsDzoT8LDi3iwzx8LL3MYyu/fPhbvhOBJid4HoNEjiscEbQ/HhsZvvJ9fZB2Hy+nejDFKZj9CtqVypEHPVPynzukk/JzAw8VRe7Gk8OP3Ts/FjfiGXj2wFyC2dVnLXJaDZh1MXgCpqKTNpqobt4OZWw3G9yfiQdDJafzKJi1OkLxXQBYKT5QGEtGRq/8tttlKg7yqYRS//Yiv63MoRiD+78UdzVQR5PR4VNfbnHzFkistsAXRS5bqctc8eDCyWSCN3KpfDR/wKFk7DIE2QGzcuhku0JSyVOI4DfRWtFE/12PUoV5CwTn5w1bGKKlrdUf3TuPmqupRZrUdgbAET4hDNE4dAGgI1QQFYiHYo8uilVCsdcubqczlziVsp9rNo70PlPjR8eenWv2KQbYqkFwKKwQG1b0Fa1f1Sej46KnGUuNPF9kkzxxKMBHr/oal/+9Sf/nJsObTcY3G/Vv1BsXm/V/7X90n2okM48lHp5xt20udG4pcm0tgB3u2V7sNuuCX1mT0RFEm9R1SDrzfCEe73b9AuXjtRox5Hy2MnRD14EvROkTKmJjychgMtybHH307HSr99PtHku5cysv3XhBoDY9n8qwGdp3b+cdBXIMzBNweKTYqKctxQ5aiUaa+CkW7r912mVbGgAviKUlL0HyURydj09z8gUffhOGIo5C124pw1Q88OA6k3O9LAg0s2Ii+1wAB1nRn0hGQhNPuo6byzvtMH5BVboOXk3SH9+xKjrSxx6W9Y9HHpw41m7jk9eCQ8H+uqC1zLHHkggNMtOcWgyAIyo0ucsQVu/VdihjSpE76SC+PVa8OBDVig5d/W4HG5avKdH5zHxO3GFf6v/1a8Rhp6TzyczkJcARPiEM0Th0AeChi6rEYsnxF5d/rA4qpR4+v8tXWPituuM1K0+2YPkVwSzOnsZaZ+iB116Fn7CcD/KhbbR22WH7qodXzlA/GYdMmguySf44NBpu/kd9nfHtJt2fuIoHjer/tMvw5s+7NiejEWFA8x4xDPDIwKOjW/TOTe+3bytybCl2byvxby9sVyomHlwT4+GlnPOImORQTF98nNzHG4N0J80FgV2rTnxbf/r7utPf7jrzXd2pfTsCX5g8Teva7FWY5TwKSROzGYxBXkXByloxtFkrr7iPybuycgAckCfHD89cciuHqPyV99EAoaHLv30m7xUlgQrdhQYHFb14UQ3qDxOV15pabcuuOPajC3iDFtpQXJInGxOqQSpznjdQEebAzJLRifvuXzxKmXd7YYBPp0CJoZ3GE79+BfVlyeKL7k6O9XbuXss7H3jRSbzOx6Rrsy3ruXxKVeKcAIeSscsQ6swrz4dOLVQV+ETjqD+C6UYHTjWji2G8+MVrSjwWfZtS7t5biwHM06aiW7hlmwhfNsARPiEM0Th0wcA3Gov13evcUSUuSxh8240BPmOqO1i3dejZE7EM4rsoqamRsf4Tv/oxxmFhmMGkrGebUnX8q8Z4NIrB8YdyaFpSu2Jhhk185PkDe8U7dToYobwhtE6/aLf+/9ZV/HX82X0MaPJFIozjoycWunHkH46the1bC1zbSl1bCgPbPoBd4/nMnAiTZ5mjzD/vIIf+zAerzfKmdJ3fauwwF/oUo0epDJh5QdbHRzwr+OAwb7cs5dlPS5HPWggaBWH5zQaAT0R8bklOjE0fnHOHGI38CjsU29TgTIFBWDsP+vdswnjj7aKidPImz/KUoOZuc+kJM5bJRvfX1cnYhKyLqJJqO4qsFsShcKiUgh2TI8+9dWt8CqYQTCQwBAw+paxNWfbk2jmUoNrTVGWeNn3k3Q96JV9wvHEC8Fh0nb98wTv15KFmYm7Vg5MZU27l8c7nmpLMRQp3xLEBfP/bSPdFr6VMvjiD9bfzeUfnlzZYqrLWqW56FYfyK4QhyBscykttErTirUVowBtnTqo5vhLxeLjnPCojz5BwlUq1NByoWSdOs7wUfyGQMtnCAr8bh2aKDOFlPHDoRL/rJ17xg01jNnRaykCRDmXZ0a+bwIyMgBqCP/GNRWO9N0/ULhVPfBoD5jKPxeDGfLNzy0DvM7T3H8mhckudQEXiYCQOB8Hr4WueI7sM/9JoeKNOv7ix7C/1xkV7DG98b14pU0VYaTFRUJ9i8ZGnLdYq5+YP3FsKPduW+E0fdJoKPLalI0/v89UaKGKOijVfxGI97h9AiOBQj8I7h9zWShev4olHp8UlZr4ah6+Po9UpLy+g2zptpc7N7wdICnoYYkfsH40+vYtuC0dY2emlLBw8fFjuMcy9A9fPtSkVndaCDr5ZCjYp1sh80ZTPXEZrdJvuqLKy//4tJkHKafksGHCYMWyw2MQj3wGntRwNgmYhxViMHltl+x5TMjIsdBzxoezq370kn99ttlTClIPFyqfCYNmZi47ZVkSePeSvorKyl5FSBqRDZgIcNVpqlyFMP08OfRmUaDI+Nvzohlep6rAUsoVB/VZ9u6W89fOaRISvCpqMKys9A+CIb8oDxEJXvrVBwbgCtegCvKW3EIbk9TNzNszj0UjP+ValHFNRQJyrDfItUIbfahbw7ruZICVVL3Xz+3DoNGEg6oGhEE8O9vjslSgRxjiaEfMcV+i2dX23r6pahzjir4d4bWNi8MZPtTxrx7u5abz7lJKjyrKW/XuZHyNlFDp3ZJN526HCUXUdDi1jeEb7G1bp6/Rv7+bJ0MVYwtfr/0+t8e2r/hZEQoTI8ODTK6efXD7x9Ma559fP9F1ydzSucW4ucm0tcm0r9JoKAuZit6XiZtvPVAikmXUs5Y5YotsNOxRLcjAjuIBMBJ0OWvgsvHzBHV9hwCs5vEFXaDyMU3FKxVbugemnVLbVbxx60MUFlJj3pheRD2BYsdWgD1GYoiM3jn3ptRk6xfNRqJLXXBpQDB6zwavoHNblN12/JcRbeCWPZeaTBzBXnolJhgdOfbHVbaP6Cg6FFV/mspbfO/Z179WO513nn9+8+PzG2d4bp3uvn3lx4/zIFe/JprUYb2xGi77TjmmpsL16eceve3nqKrOeqiM2s/Y7HDVaapchqBuQM4dCUCiBBh8ffngZx+gDPfEkiR7mtlupaPuyNiEfpUtVUBSakclUwBHflAcgh1phFvlYMRAQ3+vhUUpvkENTcWZHPB69f85hMfoVQ5AsXMrllNXwW+1/i7V81rRpQdGR0Renj51QYNnA+sax81WhMHfa6zcMdp181nWm98a5/mtn+26cf3LjfO/Ns/2XfSP+b90Kn8yGunaaCzpNS3z2KqjE0JOHtP6QbWZZc0Q2yYFDUxtJdFSm+LVAa43xrw36t/foFjXp3mgoW9yo/z+fba7kQyCcH8Zve347sKbw2IaSIxtLD28sdJiKHVs/8GxdAjsUHOrhW9D5uHezsiw08ESYq6kS84tY8j7fYy8sI968UiSuepMxgyZ9p4msCgOh01wIGoV+iHf5GDpMeqwI3LYKd/Wya4e/jA884mvopOrPcQDME2JdLDgUu/FIeOBu+85VHhPWzmglnuVxk98NLpu+pckUGX7GC3oiKb/5RzyOOty7wJdaCUIUF5Rgphn5znBziUupcNiqWm1VbbZKB9/0g/UvH2QOWtHCmB35ED3s0A5zISyIY7s2RoZeUIXStU3LZInZASczmtzmgUPR3AC6MjoxcjPYruiwRvHznfylmNpd1srWr3cmUi+XkR0+u/EIR3yFwCNyvrrPKtqNHIp5BZ2IBdAkh8qYsyCWiHVfcJoNyEFcqUMlSxf+3qbskDLZwgKvm0MhLwWqWwy28acXvtoMFQIbipMYXDWidFCkQzG2KpVOZSl6qt1a2WZf2mrDrnypPi/GIv4JU8EJE3im9HjNykve5vQ/1Kgidyb3M0KmIZssiEPFWXYM9dDBXVt36RfvKl30qeHtJv0bMEIby98+1fabuBwBE2bIvXNNyyfvHF/5TvO6d9s2v9u68W/tWMhvWuLbvMS1rchjKlJv5qquuOE99Bo5NE4OTT0vX8rnlCxcs3usZU7rUqe10mGrcPJ5W0PQTAtU3KDDl3Iyvs14Y39Dcrw3GY2omaWzzTdUDmXriVkqPj7W1elRlsJ4ge76xXsS/YreYTMO3LvGFbScy17KJ0+IowdP7t7mV3Q8T4/xI6wAaU8FFayVePWTz31Sa9GPnIc6lNIOSzHPNYvZqMNmAJ96LSUttqX3OlqQJzIWhylUiEQiRC0xO+BkxpFbHjaQK4fCYeEqh449af/GbcWswIvyfOCab0Rf6vnlK57SR5Wh87Ku8+PQRDI6Ljk0dRoEPWhoVypunu5EdmpckXZGgEZun/bY+DA4lRMTvMJ33x3878KhwhEbOamkArmNRYaveZ1iVhZXiqBR6Gs+D803lnKQorv5fGdQvBKQT8fxgV190EQbyKvwWkLAbPTZK1qtVQf3WCPhURQiy5ksRt0Rkg6ZhmySO4fCvgRgAQ3c76op+/dGw5/rDW826t9uNCxq0P3v6vL/HO99wpixeM8Z9+G1S1yr/uZY837r+vdbN77j2PxO+xYaof4tSzzbizzbsXQq4quwbXr/p5uTfIXSbDqaO8S9TeJqEkcarE75twqeujVnf/m044eGjl/2nP7500DjFo+5ApaIXynyK1jTkSxO2PRHrcue3jgPZcJxYzWA/Cb7O99Qjx8fIhbq7/HUfogZVbyrjcYg72/dsSI8OqSqQkbaPCMWGXl83aUsh2p2mgoCmM/5elDQQREsKdQEk1CHuZi3BLFWVGI0LMJBEx7F6LQaYahisIkXkRQj8MiOdZGBFzgu3izKmouJNi3pcl8CnMwIcisbKGcORevhC28MHBHqC+76GNTpEnYidNJrLmmt/uhah4NXQ6nxqYHHQiczmQY44isEHnBoZOz6dwpml9SbLsGhRnDo3VPeZDQqr/jPnidaaeCatx2trfBdBFgEYB71WY0H7eDQ3P9PKTukpKqjbl47h6obNjHaWTwmyD2+TWro8g81PsXg5hV2eVcDzRq+EJodzfpwOIhxzYeXCJg+JX5Tsdemb7eDc/UY0T5LuddkPFq96ry/DUWJOREuNihcVUJRiVStXkY2WRCHigl29KcdW3ca/9Jg+FOdcVGD/q0GMKnhz+3ffsb7fjBrR0ItDZuOrf6bc+VfnWved6x9v33Du85Nf3dued+5dYlna4Fra5H6hzz886Jij1Lx6Mp5cXVidpXKCeI99l7eJ88njvxWvpzNbdVdPfRlMjqUjA9THSPjidHn/oYNfthW5gKftYjv8kF/WEpctkrPV9XJ0DBzQn44fLnczjvUXGUns6DQwCN37Yd8xp8cSrYiZez4ODQ+ijZ+LW2VRnT87vF/YBnuseiwJuqwFKDFxCvKxW3/5FDYmyqHwsLiSWQ5Syl8Jy5oFOt6Yc6jl1n5ZtuKBxeCYnBwKpJjRRZFJ13uS4Ajo6R3GcJjXxCHwoZnFonx/psdfquxk/ds4BB4ztFl1h+qXT3ytBtxqfGMyXTpHsoOiHQhMgRr+W9tqJJ4K6DkUL1LKTt7eB+mKL5fC8L8U/FfRmzi0ekjHru4NZi9D/MKvFDW3Gj+73BNSU2c2qaB8RUbT/Z1BWqXYgzC+ubcxluaeEvfCUsBjE3QJQYyCNSN9bswd6CKWDt2Ut/4unSXUuLGvK5UYO45YcbissL5jx1odr4JA4cl+l4oIbsBIdPrkIlskjuHiuEdHevtqVv6foMR1PmG+p4RYNnfRp49ZoRoPNz3+PDGkmOr/r111V/b1r7Tsu69tvXvtW9817X53fatH7RtK3WZdO6tS4LWwgBR2mE1er7emQiPyKGVZ8Qj4FCsBTzifXFobq7WbUa+tyk6If56UKyMo6FHp1rarOV8IyFpHXafeHLRVNKuVHa5DkKfaDug6VOnyfIMGD1iKxoZLREPDTwQdijfuSeGIljM4K5dFR4fFcP6NbSVRDwaeX7XaVtK08xi5CuErYVum6Gd9zOUib9vBFuBF7DG51OwMAfECksXQCNvWxLg9MNnEzA7yhcUYPg5lUr/3h0wzdDSQn35BJssTfpnAhxKxi5DmMMCOFQkT0TGkqGnF36sDphKO3m9kXZNwKx3KJWOf9RCbRB3spEpszY4vnSFyJBY+PJPO8R9aWwBMdPwGVnHp9sxZ/P/bRFndg6NDt49+qkLxwU71CwfXoAFUNn+jwaeDZ8WeYGQMtnCAq+bQ9kEqpcbaaBgfIX67/66k6dWRJ9Ckfy8nUbnxHg0l/pokoNSuaD0yDuRxf/BkFjFNQ/+oY58vZOppIPTD58NPVL9UX/3LV7bVCdRUaTgUFUQkhXZZN4cqm7kbjR08uDeXbq3mvRvcAmvh+fPDfrFuzcsY4tz/Mcc3zT9svKDX9cW7F//wcHNhb9tLj2w2XBss75lq+74duNh89Ljm3mV3MdbPYo6rNBgfaD2o/Dzu7MPpxxBO/QXMch58R2mvt+m91t1l49+zxaUhCVHdHzgzHc7PObyTr7hnLNcQDHQQgGN7lobGXmOhucsxhE4tYg8Qe1abuCJhfq6/TXLYbzwLBjvKOBbu901a8NjQ6LGMOkQW02bT8TG73h+cfNkE08w8R9HFJ3TWnbMtvy47UOsRtt4NWmpQJXDVoEQTDMOZWmrstRRvaIVg9wCOxQDHtyhshsY5Khl2dOuC9RZEhO5g6Xx+3tzKL/i5oebbfuwKBHPyCMf6mTQYmyr/vCi56DKnvjCZaWxnVU58aWreolYpLttr7DH1fs92A7WkiO2FX33ungEsr9l5CxIJMPPOnZ9JG6NpJEVJJmWuuwr/Ad+eAX55gApqeqom9fKoQS+3AqVF7soMRqN9vWIM1eAuJ7G/2sobbUvO2L7uNm+st32YZsNSljerix1Wle0W5e32Srb7BVtyvIW20fHlA9bleUua5VXMXQoxX5zIeYtTPxIfuDzXXw/dFz+D5EoWe1lIfBkRTbJgUNRkigWC8zBp/bKv+82vLVH90ajfnGj/q3d+jfqDG/33r4mbojBiIj0Prg92H2zv+fOwIObgw+7BnpuD/TcG3xwb+jh7cFHd4YeXLv20y6nCZ3B/9jARNFp0p+Elf7THr5MPl1o2l0g4vEe5370B9YCNPip0EUdltKLh7CkEhwa4fHxLtbE2PC98w7LR75t7DnojQ+TG//Igc/ednxDM0o8YSSyTUtmWQtBOmfhTySi4b77geplbsXgtOl51RjraHBoLTh0kDfHpf7FXU2SAzLTSpH+yGDHnnUY+R3mwsD2EvHvKQZX9Yc9p5pHHlwffnRz6PGdwcf3Bp8Ad4Ye3xp+1DX86NYQevbx/aFH94Yf3xnuvnLf8R2MVkEcMKBKMAE4bVWBn7+ghggtQUHCjxIXwqE8A0s7RZA1DL39NZJDJ5Ok0mT4YYxMjHc5DnlqPgyaC4OmIvFoIHLQecwVh+2rQgM9iC7WGyKlGOKc49I5vAx86apeIh6PXPd5lAreokAOBQehiOI2e9XJoz+Jd+/i0NnnFJlkEigt8vx0C28XF8+n0Q5Fcntps7LsUsApWmBakoVBSipXdfPaOZQZiNbFAaFsscgLj/WedYJD+V4LK1oPKlTssFe5vqoeetg1/PD20KO7Q09uDT25Ofzw7vCDnuEH3VDIoSe3hx7fo+fRjZGHV8fvnenYhTVcAZaVTksZllNOS8UvOzYPPOnGqEeJwhhiqa8+hGwyTw5NAxKNXnAdqDO81WRY3GhYXC/+fq5R/+Z3ymq1U/EFtaOCqKfqSo+E4OJYONHb3Va9UlxtLAxYdCdAVbYSd/Xysce3EQdUzPN9PFJZLvZmVd/ZEY/BDoUGyGtKghz5POKlI/uoIozAaNhyJzp+8/iPHmulOP9S5qLFKv/409CmLHtx/QQiYhLDoSC+SJlZ1gIqKSG+qj8eC/U/9NUs5RpT3BwHU5R26I5V4dF+Na6IrnrmDXyFRxw+h7TcxRR4xgGzsUOcDkahfhiV5vLWJlM0NMq/jpd9yu4Wfc3uTgHjIB7hMIjFxp/ecVkqeU5KrP35lxsWfXvtiolh+WfumX0qWnMGwFErltpliCy95yKnRqvxhLlA3kLoUIw/79wYmRjjwSAeNhJMhuJQsUgyGp543HVt/+cu63L+XZ21OIiJnC+W1bmspYeqV18HQ8VCPBSRlMIixUYWnx18cBtb4RdbuBMvgvWrQaDi3HopmsJnKvAquiO1qx7fvCg0HdFkY8qEQtlZyfHk0KOOxjWSebmK54MemMsNR+yrXty7IVo7lSQvkJKqiLp5/RwqO0ccNtsCmpMcfhjcudzHk8iY2Mq8vCFBd8D2yd2rl4WyxRiHjQa/ZBWqb2oXbRrjgyqRsa79O7DM9dOKN/qwnFJ0LdVLzzYf4D35snSWLbtqVmST+XOoFBxjdHzv1uV1ukW7DYvqS7GEf6NO98ausn892461TzpyhkJkBQ44Nn7hp0afmS8iwuyKNeMJWN22inveI7yLCK0h1UpNIjep5POFWMtncihfwmTWT3KogNwicnTwoXPnavFkCGwc9F8R+BQc6thm8H1ljYcHUzXBV3a87Awm5k8Q/pob5EY44NCBR14+u8Y6C31CzcGhn6gcKqNJNwdImdwVN9XjMzHo/2wbhj0Wj5j/vUqpH8duXf70Av+NUsaZEXCo3JhreYP02W+qQZ2gAI+pOKBgxa1rh1V18HvB10J/ZSK5mQFwRL6TuwxhNcihsHPBoZ3k0GIwlMdW/qttZWK4V9zmEUIHiZf4ifVRLBIfHxh/cqvr2PcOZTktelNxB1+wXRA0lQZNBo/Z6LKXH20yh8Dy/IOD1IpPLVKI9GeHWISpcVBokleNIkMP2vZ5lHK/OHy/qfCEeGaR95/uWD/YfSsh3iqBJJIB1BPu0VDk2S130yY3H22YPKfsMeuwaG3+olbQhCwof5AiDoF7cvP6OVRmQEc2X2T86blWsXzhky+82dNc2mY2Or7EKpALLxEzlTYbeAcNPJFQsuecx8p/b4YR6ueFqRKnveLX2s1jvc+YjWxAOq/IMKvMm0PhoERw383TnhrDXxuNixt0bzTpFzWCQPWLd6woiI8NqAQik6Q9MyI21HWqbXt5B9+mgbmi9JS1JGgva2/YmJwYQGMiN+YHTzorfKVnvpgDh+IjDpDHmIwNPz/vcNqW89E6camBtpi5tMNe0WqruO76RZrF7PIpHMqM8KWIPHOC3AjnNXMojxcbYT3hMGA8IhhqGnpyy1m9nKaTxRAUzyb6rMbWXZvCw33xWJippuYzFfgKgZkZDkV7bwdrqzAYOniTqXxOrOJg9SdjQ9AWthubDZHlZgbAERlO7jIEBQHkUJ4PVV/sby7xmnUO+0fPO1t6z3qfn3b0nfP0nfW8OON6EDgS3FfrbFzrql3G/1yxYmFR2AHTfntBUCkFQ8FOcSrLm2vXhJ73cAKAYsjOSJUrq6D6syNVOUCoEx+BiE5En15v2a7z2wwuWAwK/1wWuhe0GL3WqhbbqktHfkwOv0hGRsAdPJEFT6j3WedR946VHt5aDw0Ec/GEIBdDVv0xGLC3rojGS5WVL0iZbGGB34FDJUQ+iUgMlvvlbxWniafgwaFcxJhLm2tXd3W6oKJCaacmfBlyLkLNwwO3vjcFFGgdWpIXPF0K/6TgUsAp/vpWRmcCNeFMyCa5cCiAPv5lx4ZdBt7JtJs0+qcm/Z93Gv/tVPN+WtfSPlajqgmzAg6HTWig80tL0KIPKHy5xklLadCmc9nFzdhYDApDVESVQw2+Vx3qTHglhzIWC+CG6glV7j/9bR0fn4chJjgUROY2FZLF6j6JD/axk8RHpkrVUPgXBLkRzu/BoWhS6iVHO8JwUOGR89/XYbQLDuU/3wFOa8XF4/vFXWvirsZZAfLgVl3yj57+arv6N1Z8jFLnsRid9rKu017JoYgpCp4NcDLjyC0bCui5wNstsFYQF23EU0YoosxhWdamrGi3LXXwIZZyt60cg8dFtoVJUtShwCgu9vJZfh3vxOIzYCVuS8Xx6vWPznei2WHksSA+0Jwqj0XKcl8FxsEGefCSHxUs1P/Euc9pKnUrFS5QJxb1WKUqer6lQTG4bJUt1Z+c3Gu/uH/35YOfnv6uuq32I5etPGDRiT/lLkIvePi2hOIOS6FbqTz2RW0kPIE6qpqSR0iZbGGB18uhohOFn9oIfyQUvnPCbdH7bUap9gFzkcde8UvtlomBXnWaf2WJyAutH4kkMYAutoo35um85uIOnhPDTFl59MudCSxKxCoemJI2K7LJfDiU7CA9ifGBxw2V/9FoXNSofxNo4p2hi2rK/pP//UTTDJFSS+NZ86RuIX4s/OKS12Up80JXlJIOq75ToSl6cl91MsprZ8IyFCLqID+5YHYOpch4vMJEHwd/eODuFZf9Qz8NMXlRFeYYRl2hz2zo+GFPIsz3xvMg0qmZQYY/R8iNcF4zh8IRG17UgB+2FzRv4sHVNvmyBvWqqC5oLW7bsSo53Cd6QZynzshkOmRP0S820cjAFS+fnTWJO0n5bBh4ubBljyk6MZaKBofuTIAja5reZYjMv+cCzzZwVGNFz3stxJoXRMldkqb49wifCIQZIp54KQmiJWHi8dbXUi+frea4Ola99v5JMDvnCNkg6jddNynSPwsYB2rEwcDLj8grHk6MPDzz1bbUU7N8UalbKXHy6dJCr2WJVykDQ7GeOBDwlI1/XSneBl3cyT+DMYB5MfjRjM11GyZ6n4gqYaClKpYvSEkfrty8Xg5FQ2FDQTuRQEJ9l7+30faEHSpOoMOIOaYsO+88zl/ZqNKZlk8G8EWeUg9R+dEnnXUf+uzQAXEDKXrcojtYs/rO5XOiaJFA9vcsyCbz4FAeJiY9qFYs8kuDqR4WqP5PjVjFg0PLFu80vH2o0QojFHFlM6gJZ81TvPAPnnhi5Mnx6o/F7QvFQUV/0lZ8Ekq/48Ox26fFmhpxZZeyXbCVyeeNWTkUvzMSi2DFyBGoG483dKPlB9f2Qv7LlUgbtMGYKoLhfGR7xcDtq6ghBgmQ7gNm9cr+eAXkRjiv+3wokErNwlDzSPiR41sadBadx4RlgaFtO696n/71SzaUjJdOOwvSW+QZHjj75RY+Ncv/9QNhGcALbZaKu5dEFyNTWlSi7WYAnMkcUxGlSmAtL06ZkZphjaJ9ADCUfHDDzycC9FhM8MUIwkQNmNCMBi+MwW1G/jWppdADK1upaqnfHup9mIjzBmwcIHRAFCGhFpjafRUo4rhEPmgAhsbCyee33bUraNebC3je1lzkBYei8gqsJEzP1Ezx2jCehg5YDV4+pMDXFHlMBT5Fj4ntUM3aB1fPsgjqmLyuklHuwiFlsoUFXiuHsu85y3CPFBmNDdz011b60SD8OxxY7uVopYM7N4zKM5iQl/ThJaizC7z0RENjF463Y9jaDWzY7YXQlhalqnlvUywyzlIFtwlVzMxkKrLJfDhU9cRHnvfUlP9ng2HRHt0bWMsDu/SL65a/F3rxAE2RaokUZs2TioUv0sTH7weOepVKjNuArbTDWtSp6DqqK059Y8OiUnCoiMlGoTczk3nglRzKOHRpOKglwomN9/Y47R+Jl7lyGQhDhq9040PiRuenSmKkDypADhWlyKLIMayt2MkFciOc34FDZV/AgebBN/jYv/Mjqq+wQ70YwLaq49blfXevxrCQR3ShaZnJZwIcxkXrxiM9gYMupRxDAutTN0xFE1ZVeu8Pe5LxEM9/scFmazE4lIxdhjCJ4FDalcV8jJpdUypGeLHfWiDuGOXTUwBWEhyWnAtLPEqpi3NhKXiq3WxoVpZfOfzNRP+TBAYw6iEulIs2SZWYFrn7SqhR1V01GN9YZOzehc66j05aCrCo9G7XBS1G8eJaHUifzy9ZK7yWyoDZ2EGLqQhrT48NK1Cufjw2w0FlZfflc+of3ourTyxDzT1PkDLZwgKvl0PZi1ifs8FhkERHHjm+Ammiv4LiPrN2i7HFvqztu88SkfBkileUyANAhvBSX9Fig3f9O5d7+JgyTXusA7AgOFSzfvDhHRYqS5eaPROyyXzW8nDgRkMXWn+pM/wFHNqkXwSXHGr8yw/V6/juA9Gv6fgU6Z8Boh3EJhaLTwx4d64KKsagTZw4t+lP2A3enStGH98gMSNmZs7SM1+8ci2figknw4/yQ0/PuF3WSoxPnkqTSwxxWcBhXXrbfxQ0K+/yA2QbiC4UGeUIuRHO78yhkYm77v0uiyGo8NwFC1VKXJZy/77dMNB48oinvOdaHBweCwkpEet/1GpfDv4iL2N1ZoNFUHDUvmL4wS3E41lHmWAGwMksVG7Vdu65jG4Ngm74qi10bombD0dwRc9ZWdyY5VIMTiyiyVAV4p2HfDWvC7bnjjVnDv2jr/san/TFoXGxRUtg0gjFDn3prdi8ElKkP5WSe5xvw+EXd658Z4Pl67ZWes1lUELMK+KqHdpcD9L389WrvMYlrpIVt9sqW+3LnJ9tH7h7jS3JfJgdPbKIPELKZAsLvF4OxTHxOOiPTMR6bztt5WKQoiBMcjqntfzAjvWDKIjLA5FCKMvskFuKyDs50X/nyKf8qyVOt9AQmkFtynLX95/xIhV0nyNYHcXZkU3md00J1Y8OD+z8sKie/9m5uM7wdoP+rTrDWzXGf7tzyiWuJmEMcoJkfH5nrRBAcxsTi4gWHTv7cyNWMXyardrgtxs7qo2B2qorx/cxAjKlqZhq6NwQj3a79qPjZfMB8hHGi0cm/yYeDkUoqOpn78YSkbHTXyleM8yEUodV51cM8Lv5l+6G4zvXhvthg0fljfpyXS9zWwDkRjh81vORp5bPKYF6UG23sFacvD90QERS46bS5gL2mvRFR4OfbnFby1xYcfNPQw1em95pMjy9ckmYZuisV3UrkPllYyJbrqfut32DBSn/CMBc7uGNJsVuW4Xrx6/UG/UQjZsZICW1q4Zxk0g8uCLYsxTVFtMM7NwKj7Uc9p0HjMlZEz3OuUfcsF3uqf3Y1bTJv6/2bocrwXlIrELEkaEe8MdhF7NGIv+UMoitjDdrPSVEF9KDZJKPuQ8zNCoGUjQZHu295Al8usFbU+mhyVwMo1iewEU9YUb4zQWYwFzWModteWvTpkttv6IBefcE80QFZLXEsJSZ5wtSUrmqG3LoI0f1MuoD7XrOUmjtI/bVo4/5GAJFxswBUmD9o6EiE09PHHLbYK9wiFFVLDonppB9e9B2slPU7yt7QcZQd7GeDCf7bgYwDWD4M0+jvHX/J/u63ieP5dUAanY6+cvIJvO+pjQ2MHDv0rkHl0/1XDzVfUm4F0897rqcDI1NxpT5SEkHzgSZLzzxeHSod/jmpYGu84M3Lw7dvDB868LQrYsD3beF2qXjC5H++QJk9Pxhf9e5/pvnB25dAODp7zo/8hQMmOKFzMyl0INfY+HnDwdvXUSSvpsXBpBDFzKB//yzW1eGe59NqrJ0pD9PiE+M9d2+3I86o+guYvDmpb7b1+KRqe8zzhlpIYWO9t+6OnDzIkoZYnfQM3L3ajwknhzLlMwcpiEtaohsnER8pHfwtqi/OIqBm+yLZ913IpEILx3OPiqkvLyLlodBzh45J7rm3CCzRU+J5hIHInB+EF3WdWG870Fo6FlsfCgZnZD9ruYnNmrGMigTaZkWPhOkZAvEFurMTSwcH+8ffXjj3KG9x2rWOJUV7crydmUZ0KosbbZ9dLhmTeCH3YM3z0fGBsggMgeZ1TR/fiFzlqIGJpKR8YF719CwUiX6u9DCl17cvh4eHUnFWQDSwycSmXh0r7/rEjREKMkl9GPf7UsjL1JDTIqMPDukpP1IHp0Ye3hLqArGvjyQi09v3xgeGMTxMQLiyvhZkU3mZ4eqQP+nGU2Ap45keEbgnDCtxHTO9CBPYR2lAxcONVvpz5jAM/2zI2u0dPXyVc9smGxkzNUAj2V6nBwhJb3L1pCeTGQceCr6ZMhcIPOkJ9Wt6Z8I5C8xLXwOUKs3M2Rx6RKnF/37QojqlTWPhMjm4/3hZ/eG71/rvXW+9+a5vjuXx552J8aGeB/PXAz/1w3ZaLIZJTJ/lT9NC8kBIpNJVc9aUM5IZ5iJ9E9pdxZkk3nboapnWmG00lIDb+HIzCdfeU5DOtuXPTMBEVSIDk5B7W84PNMwGZ5nyOql65D502tCuhQcYFqnZQggJb37SkzmJjOcFpKxmxumdsp0TMt/gWXlBXKLL2se56uhEnKRj6V6lMrEk0s8Q4wgnmj4YyFbLO1KpH7Nz9hP55CZlfCnh1jeSoErkRmeuTsTssk87dBU2fHoDBPjXOoxC2aRaTH/EIhjn8aV2GUfL/DA54J00VIyf8ovpons9Glx5ovMTNKS+ik/g3AWSJkW+IcjVamYuE6CpUVUXWOARjN+po7NMNx+Z4ieSldt+q/AAjtxWvKUsNB8aUha2aRM+xXAT7MUlE3mb4eiEulpIStyPlS5Rd7Zsk/9vDCIuk2hvPThzKXaqRaYEvi7QZarOhnh+QYctYfxlQVJ/0KQ0eBwsVUl2695h9yqkhH+B0AK/ZNBaG1Qp/BlIP37TEPiDwEqlvJO+mR42p8XpLJXN3lBqpKyOVVJ/zoXZJOczoe+JrwUkIlX/Pw/B5PbjMC8YlrApEz7IWdMbjMCXyfS3t+txBkhhX45lDMqJ6kzjXS4lPTuH47JbUZg3jG5zQjMFya3QtLhr0Q2+a/BoapMC/2ficltRmBe8VKAiun7OSPTm/a9TqS9U8r+Q6CK2JEEOkma2MFqXtKnGuWfEZPbjMC8Y3KbEZgvTG6FpMNfiWzyz8ShQKZMC5wWIf3r/zRkyrSf8oWpMhmWjrBAZMq0n14TMmXaT78zJmuQ4RWAw2tJGTaoKqkI/yzIlGk/5RGZMu2nvCAt08JnRzb5J+PQVyK1mQzR8FqRlmnhGnIHvpQ0V4p9OuriPh2a+gExJ0M0/IHIJv/lODQl08I1aPivhZf30jugzKm2KLdyV8Mfi2zyX41DNWjQoOGPQjbROFSDBg0a5oZsonGoBg0aNMwN2eQlDtVEE0000WTOonGoJppooknuonGoJppooknuonGoJppooknuonGoJppooknuonGoJppooknuonGoJppooknuonGoJppooknuonGoJppooknuonGoJppookmukkz+f8r+2TkuKR/jAAAAAElFTkSuQmCC';
                        var img2 = 'data:image/png;base64,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';

                        var doc = new jsPDF();
                        doc.addImage(img, 'JPEG',50,10);
                        doc.addImage(img2, 'JPEG',60,35);
                        doc.fromHTML($('#page1').get(0),82.5,45);
                        
                        doc.setFontSize(11)
                        doc.text(20,65,'Pada hari ini, ')
                        doc.setTextColor(255, 0, 0)
                        doc.setFontType('bold')
                        doc.text(44,65,'Senin');
                        doc.setTextColor(0, 0, 0)
                        doc.setFontType('normal')
                        doc.text(56,65,'tanggal');
                        doc.setTextColor(255, 0, 0)
                        doc.setFontType('bold')
                        doc.text(69,65,' empat belas bulan September tahun dua ribu enam belas');
                        doc.text(20,70,'[14 September 2016]');
                        doc.setTextColor(0, 0, 0)
                        doc.setFontType('normal')
                        doc.text(58,70,', di');
                        doc.setTextColor(255, 0, 0)
                        doc.setFontType('bold')
                        doc.text(64,70,'Lippo Karawaci Tanggerang');
                        doc.setTextColor(0, 0, 0)
                        doc.setFontType('normal')
                        doc.text(117,70,'telah dibuat dan ditandatangani');
                        doc.text(20,75,'Perjanjian Kerja Waktu Tertentu (selanjutnya disebut “');
                        doc.setFontType('bold')
                        doc.text(113,75,'Perjanjian Kerja');
                        doc.setFontType('normal')
                        doc.text(142,75,'”) oleh dan antara:');
                        doc.text(40,82,'Nama');
                        doc.text(80,82,':');
                        doc.text(85,82,'Darien Matthew');
                        doc.text(40,87,'Jabatan');
                        doc.text(80,87,':');
                        doc.text(85,87,'HR Manager');

                        doc.text(40,97,'Nama');
                        doc.text(80,97,':');
                        doc.text(85,97,'Darien Matthew');
                        doc.text(40,102,'Jabatan');
                        doc.text(80,102,':');
                        doc.text(85,102,'VP Human Resource');

                        doc.text(40,112,'dalam hal ini bertindak dalam kedudukannya secara bersama-sama sebagai');
                        doc.text(40,117,'Kuasa Direksi, dari dan oleh karena itu bertindak untuk dan atas nama');
                        doc.setTextColor(255, 0, 0)
                        doc.setFontType('bold')
                        doc.text(40,122,'PT Lippo Karawaci, Tbk');
                        doc.setTextColor(0, 0, 0)
                        doc.setFontType('normal')
                        doc.text(85,122,'("Perusahaan") yang berkedudukan di');
                        doc.setTextColor(255, 0, 0)
                        doc.setFontType('bold')
                        doc.text(152,122,'Tanggerang');
                        doc.setTextColor(0, 0, 0)
                        doc.setFontType('normal')
                        doc.text(174,122,',');
                        doc.text(40,127,'berkantor di');
                        doc.setTextColor(255, 0, 0)
                        doc.setFontType('bold')
                        doc.text(62,127,'2121 Bulevard Gajah Mada No 01-01 Lippo Cyber Park, Lippo Karawaci,');
                        doc.setTextColor(0, 0, 0)
                        doc.setFontType('normal')
                        doc.text(40,132,'selanjutnya disebut ');
                        doc.setFontType('bold')
                        doc.text(74,132,'PIHAK PERTAMA;');

                        doc.setFontType('normal')
                        doc.text(40,142,'Nama');
                        doc.text(80,142,':');
                        doc.setTextColor(255, 0, 0)
                        doc.text(85,142,'danesa');
                        doc.setTextColor(0, 0, 0)
                        doc.text(40,147,'Jenis Kelamin');
                        doc.text(80,147,':');
                        doc.setTextColor(255, 0, 0)
                        doc.text(85,147,'Perempuan');
                        doc.setTextColor(0, 0, 0)
                        doc.text(40,152,'Umur');
                        doc.text(80,152,':');
                        doc.setTextColor(255, 0, 0)
                        doc.text(85,152,'00 tahun');
                        doc.setTextColor(0, 0, 0)
                        doc.text(40,157,'Tempat/Tanggal Lahir');
                        doc.text(80,157,':');
                        doc.setTextColor(255, 0, 0)
                        doc.text(85,157,'Jakarta / 12 April 1991');
                        doc.setTextColor(0, 0, 0)
                        doc.text(40,162,'Alamat');
                        doc.text(80,162,':');
                        doc.setTextColor(255, 0, 0)
                        doc.text(85,162,'Jl........');
                        doc.setTextColor(255, 0, 0)
                        doc.text(85,167,'RT/RW: 000/000');
                        doc.setTextColor(255, 0, 0)
                        doc.text(85,172,'Kel….., Kec…….');
                        doc.setTextColor(255, 0, 0)
                        doc.text(85,177,'Propinsi / Kotamadya 123456');
                        doc.setTextColor(0, 0, 0)
                        doc.text(40,182,'Nomor KTP');
                        doc.text(80,182,':');
                        doc.setTextColor(255, 0, 0)
                        doc.text(85,182,'0000000000');
                        doc.setTextColor(0, 0, 0)
                        doc.text(40,192,'dalam hal ini bertindak untuk dirinya sendiri, selanjutnya disebut');
                        doc.setFontType('bold')
                        doc.text(151,192,'PIHAK KEDUA');
                        doc.setFontType('normal')
                        doc.text(178,192,'.');
                        doc.text(20,202,'PIHAK PERTAMA dan PIHAK KEDUA selanjutnya secara bersama-sama disebut sebagai PARA ');
                        doc.text(20,207,'PIHAK dan masing-masing disebut sebagai PIHAK, menerangkan hal-hal sebagai berikut:');
                        doc.text(20,217,'a.');
                        doc.text(30,217,'Bahwa PIHAK PERTAMA bermaksud memberikan kesempatan bagi PIHAK KEDUA untuk');
                        doc.text(30,222,'bergabung dengan Perusahaan sebagai karyawan sesuai dengan kompetensi yang dimilikinya');
                        doc.text(30,227,'pada unit kerja dalam Perusahaan yang membutuhkan.');
                        doc.text(20,232,'b.');
                        doc.text(30,232,'Bahwa PIHAK PERTAMA menyatakan bahwa PIHAK KEDUA telah memenuhi persyaratan ');
                        doc.text(30,237,'seleksi calon karyawan yang ditetapkan oleh PIHAK PERTAMA.');
                        doc.text(20,242,'c.');
                        doc.text(30,242,'Bahwa PIHAK KEDUA bersedia untuk bergabung pada Perusahaan sebagai karyawan tidak ');
                        doc.text(30,247,'tetap sebagaimana yang akan diatur lebih jauh dalam Perjanjian Kerja ini, dan PIHAK KEDUA');
                        doc.text(30,252,'telah sepakat untuk bekerja berdasarkan Perjanjian Kerja ini bagi PIHAK PERTAMA.');

                        doc.text(20,262,'Bahwa PARA PIHAK dengan ini menyatakan telah setuju dan sepakat untuk mengikatkan ');
                        doc.text(20,267,'diri dalam suatu Perjanjian Kerja ini dengan ketentuan-ketentuan dan syarat-syarat sebagaimana');
                        doc.text(20,272,'tercantum dalam pasal-pasal berikut');
                        
                        //page2
                        doc.addPage();
                        doc.addImage(img, 'JPEG',50,10);
                        doc.setFontSize(11)                       
                        doc.text(100,40,'Pasal 1');
                        doc.setFontType('bold');
                        doc.text(77,45,'Perjanjian Kerja Waktu Tertentu');
                        doc.setFontType('normal');
                        doc.text(20,60,'1.');
                        doc.text(30,60,'PIHAK PERTAMA dengan ini sepakat untuk mempekerjakan PIHAK KEDUA sebagai');
                        doc.text(30,65,'karyawan tidak tetap dan PIHAK KEDUA dengan ini sepakat untuk bekerja bagi PIHAK');
                        doc.text(30,70,'PERTAMA sebagai karyawan tidak tetap dalam suatu hubungan kerja berdasarkan');
                        doc.text(30,75,'Perjanjian Kerja.');


                        doc.text(20,85,'2.');
                        doc.text(30,85,'Perjanjian Kerja ini berlaku sejak tanggal ');
                        doc.setTextColor(255, 0, 0)
                        doc.text(101,85,'24 Agustus 2018');
                        doc.setTextColor(0, 0, 0)
                        doc.text(132,85,'sampai dengan tanggal');
                        doc.setTextColor(255, 0, 0)
                        doc.text(30,90,'24 Agustus 2018');
                        doc.setTextColor(0, 0, 0)
                        doc.text(59,90,', (“');
                        doc.setFontType('bold');
                        doc.text(61,90,', Jangka Waktu');
                        doc.setFontType('normal');
                        doc.text(87,90,', "), kecuali dalam hal diakhiri sebagaimana dimaksud');
                        doc.text(30,95,'Pasal 11 Perjanjian Kerja ini.');
                        doc.text(20,105,'3.');
                        doc.text(30,105,'Atas kesepakatan PARA PIHAK, Perjanjian Kerja ini dapat diperpanjang untuk jangka ');
                        doc.text(30,110,'waktu dan syarat-syarat yang akan ditetapkan kemudian oleh PIHAK PERTAMA dengan');
                        doc.text(30,115,'berpedoman pada peraturan ketenagakerjaan yang berlaku.');
                        doc.text(20,125,'3.');
                        doc.text(30,125,'Selain terikat pada Perjanjian Kerja ini, PIHAK KEDUA terikat pada segala peraturan');
                        doc.text(30,130,'perusahaan yang berlaku termasuk namun tidak terbatas pada Kode Etik Perusahaan.');
                        doc.text(100,145,'Pasal 2');
                        doc.setFontType('bold');
                        doc.text(82,150,'Ruang Lingkup Pekerjaan');
                        doc.setFontType('normal');
                        doc.text(20,165,'1.');
                        doc.text(30,165,'PIHAK KEDUA berkewajiban untuk melakukan pekerjaan dan tugas-tugas yang diberikan ');
                        doc.text(30,170,'oleh PIHAK PERTAMA dari waktu ke waktu.');

                        doc.text(20,180,'2.');
                        doc.text(30,180,'Ruang lingkup pekerjaan PIHAK KEDUA sebagaimana dimaksud ayat (1) Pasal ini meliputi');
                        doc.text(30,185,'pekerjaan dengan ketentuan, sebagai berikut:');
                        doc.text(30,190,'a.   Jabatan');
                        doc.text(90,190,':');
                        doc.setTextColor(255, 0, 0);
                        doc.text(100,190,'Manager');
                        doc.setTextColor(0, 0, 0);
                        doc.text(30,195,'b.   Golongan');
                        doc.text(90,195,':');
                        doc.setTextColor(255, 0, 0);
                        doc.text(100,195,'3A');
                        doc.setTextColor(0, 0, 0);
                        doc.text(30,200,'c.   Divisi / Departemen');
                        doc.text(90,200,':');
                        doc.setTextColor(255, 0, 0)
                        doc.text(100,200,'Human Resource');
                        doc.setTextColor(0, 0, 0);
                        doc.text(30,205,'d.   Tempat direkrut/');
                        doc.setFontType('italic');
                        doc.text(65,205,'Point of hire');
                        doc.setFontType('normal');
                        doc.text(90,205,':');
                        doc.setTextColor(255, 0, 0)
                        doc.text(100,205,'Human Resource');
                        doc.setTextColor(0, 0, 0);
                        doc.text(30,210,'e.   Lokasi Kerja');
                        doc.text(90,210,':');
                        doc.setTextColor(255, 0, 0)
                        doc.text(100,210,'Human Resource');
                        doc.setTextColor(0, 0, 0);
                        doc.text(20,220,'3.');
                        doc.text(30,220,'Selain melakukan pekerjaan berdasarkan ruang lingkup tersebut sebagaimana dimaksud');
                        doc.text(30,225,'ayat (1) dan ayat (2) Pasal ini, PIHAK KEDUA juga berkewajiban untuk melaksanakan ');
                        doc.text(30,230,'setiap perubahan pekerjaan dan/atau pekerjaan tambahan dari waktu ke waktu di luar ruang');
                        doc.text(30,235,'lingkup sebagaimana disebutkan di atas yang telah ditugaskan PIHAK PERTAMA sepanjang');
                        doc.text(30,240,'untuk dan demi kepentingan serta kemajuan Perusahaan.');
                        
                        //page 3
                        doc.addPage();
                        doc.addImage(img, 'JPEG',50,10);
                        doc.setFontSize(11);               
                        doc.text(100,40,'Pasal 3');
                        doc.setFontType('bold');
                        doc.text(87,45,'Hari dan Waktu Kerja');
                        doc.setFontType('normal');
                        doc.text(20,55,'1.');
                        doc.text(30,55,'Waktu kerja normal adalah hari Senin sampai dengan hari Jumat, pukul 08:30 WIB sampai');
                        doc.text(30,60,'dengan 17:30 WIB, termasuk waktu untuk istirahat pada hari Senin sampai dengan Kamis');
                        doc.text(30,65,'12:00 WIB sampai dengan 13:00 WIB dan waktu istirahat pada hari Jumat pukul 11:30 WIB');
                        doc.text(30,70,'sampai dengan 13:00 WIB, atau sesuai dengan kebijakan jam kerja yang sesuai dari unit');
                        doc.text(30,75,'bisnis terkait sepanjang tidak melanggar ketentuan perundang-undangan.');
                        doc.text(20,85,'2.');
                        doc.text(30,85,'Dalam hal diperlukan, dengan tetap mengacu pada peraturan ketenagakerjaan yang berlaku');
                        doc.text(30,90,'dari waktu ke waktu, PIHAK PERTAMA dapat menugaskan PIHAK KEDUA untuk bekerja di');
                        doc.text(30,95,'luar waktu kerja sebagaimana dimaksud ayat (1) Pasal ini sepanjang untuk kepentingan ruang');
                        doc.text(30,100,'lingkup pekerjaan serta kepentingan dan kemajuan Perusahaan. PIHAK KEDUA bersedia');
                        doc.text(30,105,'setiap waktu untuk melakukan pekerjaan di luar hari dan jam kerja normal tersebut, termasuk');
                        doc.text(30,110,'pada saat istirahat mingguan serta hari libur resmi atau hari raya yang ditetapkan oleh');
                        doc.text(30,115,'Pemerintah.');
                        doc.text(100,125,'Pasal 4');
                        doc.setFontType('bold');
                        doc.text(95,130,'Renumerasi');
                        doc.setFontType('normal');
                        doc.text(20,140,'1');
                        doc.text(30,140,'PIHAK PERTAMA sepakat untuk membayarkan PIHAK KEDUA Remunerasi sesuai lampiran A');
                        doc.text(30,145,'yang tidak terpisahkan dengan perjanjian kerja ini.')
                        doc.text(20,155,'2.')
                        doc.text(30,155,'PIHAK PERTAMA akan membayar Remunerasi sebagaimana yang dimaksud pada ayat 1 di')
                        doc.text(30,160,'atas sesuai dengan kebijakan Perusahaan yang berlaku.')
                        doc.text(100,170,'Pasal 5');
                        doc.setFontType('bold');
                        doc.text(102,175,'Cuti');
                        doc.setFontType('normal');
                        doc.text(20,185,'1.')
                        doc.text(30,185,'PIHAK KEDUA berhak atas cuti tahunan sebanyak 12 (dua belas) hari kerja dalam setahun.')
                        doc.text(20,195,'2.')
                        doc.text(30,195,'Cuti tahunan tidak dapat diuangkan, kecuali terjadi pengakhiran hubungan kerja.')
                        doc.text(20,205,'3.')
                        doc.text(30,205,'Penggunaan hak cuti tahunan sebagaimana dimaksud dalam ayat (1) Pasal ini dilakukan ')
                        doc.text(30,210,'berdasarkan tahun takwim, yaitu bulan Januari sampai dengan bulan Desember tahun berjalan,')
                        doc.text(30,215,'Hak cuti yang tidak diambil dalam tahun berjalan akan hangus, dan tidak dapat diakumulasikan')
                        doc.text(30,220,'ke tahun berikutnya.')
                        doc.text(20,230,'4.')
                        doc.text(30,230,'Hak cuti pertama kali baru dapat diambil oleh PIHAK KEDUA setelah PIHAK KEDUA menjalani')
                        doc.text(30,235,'Perjanjian Kerja ini minimal 12 (dua belas) bulan kalender atau sesuai kebijakan Perusahaan')
                        doc.text(30,240,'yang berlaku dari waktu ke waktu. ')
                        doc.text(20,250,'5.')
                        doc.text(30,250,'Khusus bagi PKWT yang masa perjanjian kerjanya 12 (dua belas) bulan atau kurang, maka hak')
                        doc.text(30,255,'cuti baru dapat diambil setelah menjalani minimal ¼  (satu per empat) periode Perjanjian Kerja ')
                        doc.text(30,260,'ini hingga berakhirnya Perjanjian Kerja. Besaran cuti akan diberikan secara prorata.')
                        
                        //page 4
                        doc.addPage()
                        doc.addImage(img, 'JPEG',50,10);
                        doc.setFontSize(11);   
                        doc.setFontSize(11)                       
                        doc.text(20,40,'6.')
                        doc.text(30,40,'Ketentuan lain mengenai cuti dan ijin diatur lebih lanjut dalam Surat Keputusan Perusahaan')
                        doc.text(30,45,'tersendiri yang merupakan bagian yang tidak terpisahkan dari Perjanjian Kerja ini.')
                        doc.text(100,55,'Pasal 6');
                        doc.setFontType('bold');
                        doc.text(75,60,'Pengembangan Karir dan Pelatihan');
                        doc.setFontType('normal');
                        doc.text(20,70,'1.')
                        doc.text(30,70,'Untuk kepentingan Perusahaan dan/atau pengembangan karir, PIHAK KEDUA setuju ')
                        doc.text(30,75,'bila ditugaskan oleh PIHAK PERTAMA pada jabatan atau unit bisnis lain dalam kelompok')
                        doc.text(30,80,'anak perusahaan atau afiliasi, atau pada lokasi kerja lain yang berbeda dari yang telah ')
                        doc.text(30,85,'ditetapkan dalam Perjanjian Kerja ini, tanpa menuntut perubahan kompensasi kecuali telah')
                        doc.text(30,90,'diatur tersendiri dalam Surat Keputusan Perusahaan.')
                        doc.text(20,100,'2.')
                        doc.text(30,100,'PIHAK PERTAMA dapat menyelenggarakan pendidikan dan pelatihan dalam rangka ')
                        doc.text(30,105,'meningkatkan kompetensi PIHAK KEDUA.')
                        doc.text(100,115,'Pasal 7');
                        doc.setFontType('bold');
                        doc.text(73,120,'Hak dan Kewajiban PIHAK PERTAMA');
                        doc.setFontType('normal');
                        doc.text(20,130,'1.')
                        doc.text(30,130,'PIHAK PERTAMA memiliki hak:')
                        doc.text(30,135,'a.')
                        doc.text(35,135,'Menetapkan deskripsi tugas, waktu, dan tempat tugas kepada PIHAK KEDUA.')
                        doc.text(30,140,'b.')
                        doc.text(35,140,'Membuat dan menetapkan kebijakan dan/ataupun surat keputusan dalam rangka')
                        doc.text(35,145,'melaksanakan dan/atau mendukung terlaksananya Perjanjian Kerja ini.')
                        doc.text(30,150,'c.')
                        doc.text(35,150,'Mendapatkan hasil pekerjaan dari PIHAK KEDUA dengan ruang lingkup pekerjaan,')
                        doc.text(35,155,'termasuk perubahannya, yang telah ditetapkan oleh PIHAK PERTAMA.')
                        doc.text(30,160,'d.')
                        doc.text(35,160,'Memberhentikan PIHAK KEDUA apabila melanggar Perjanjian Kerja atau sebab-')
                        doc.text(35,165,'sebab sebagaimana tercantum dalam Pasal 11 ayat (3) Perjanjian Kerja.')
                        doc.text(30,170,'e.')
                        doc.text(35,170,'Mempertimbangkan PIHAK KEDUA untuk diangkat menjadi karyawan tetap dengan ')
                        doc.text(35,175,'mengikuti ketentuan Perusahaan yang berlaku.')
                        doc.text(30,180,'f.')
                        doc.text(35,180,'Menempatkan atau menugaskan PIHAK KEDUA sewaktu-waktu ke seluruh Unit Bisnis ')
                        doc.text(35,185,'Perusahaan atau Anak Perusahaan (subsidiary), termasuk pada Afiliasinya, yang dimiliki')
                        doc.text(35,190,'Perusahaan di seluruh Indonesia sesuai kebutuhan dari tuntutan bisnis Perusahaan.')
                        doc.text(20,200,'2.')
                        doc.text(30,200,'PIHAK PERTAMA berkewajiban:')
                        doc.text(30,205,'a.')
                        doc.text(35,205,'Memberikan hak-hak PIHAK KEDUA sebagaimana yang diatur dalam Perjanjian Kerja ini.')
                        doc.text(30,210,'b.')
                        doc.text(35,210,'Memberikan bimbingan dan pembinaan kepada PIHAK KEDUA dari waktu ke waktu.')
                        doc.text(100,220,'Pasal 8');
                        doc.setFontType('bold');
                        doc.text(73,225,'Hak dan Kewajiban PIHAK KEDUA');
                        doc.setFontType('normal');
                        doc.text(20,235,'1.')
                        doc.text(30,235,'PIHAK KEDUA memiliki hak:')
                        doc.text(30,240,'a.')
                        doc.text(35,240,'Menerima Remunerasi sebagaimana yang diperjanjikan dalam Perjanjian Kerja ini.')
                        doc.text(30,245,'b.')
                        doc.text(35,245,'Mendapatkan cuti tahunan sebanyak 12 (dua belas) hari kerja dalam setahun ')
                        doc.text(35,250,'sebagaimana ketentuan yang berlaku di Perusahaan dari waktu ke waktu.')
                        doc.text(20,260,'2.')
                        doc.text(30,260,'PIHAK KEDUA memiliki hak:')
                        doc.text(30,265,'a.')
                        doc.text(35,265,'Hadir dan mengisi daftar hadir sesuai dengan waktu yang telah ditetapkan oleh PIHAK')
                        doc.text(35,270,'PERTAMA.')

                        //page 5
                        doc.addPage();
                        doc.addImage(img, 'JPEG',50,10);
                        doc.setFontSize(11)                       
                        
                        doc.text(30,40,'b.')
                        doc.text(35,40,'Mengikuti pelatihan dan/atau pembinaan dalam pelaksanaan tugas-tugas yang ')
                        doc.text(35,45,'diberikan oleh PIHAK PERTAMA dengan penuh kedisplinan dan tanggung jawab.')
                        doc.text(30,50,'c.')
                        doc.text(35,50,'Melaksanakan tugas yang telah dideskripsikan serta ditetapkan oleh PIHAK')
                        doc.text(35,55,'PERTAMA, dengan bekerja penuh tanggung jawab serta mencurahkan segala tenaga,')
                        doc.text(35,60,'pikiran dan keahliannya serta mencerminkan citra dan nilai-nilai (value) dari Perusahaan ')
                        doc.text(35,65,'dari waktu ke waktu.')
                        doc.text(30,70,'d.')
                        doc.text(35,70,'Melaksanakan kewajiban dan/atau tugas lainnya yang ditentukan oleh PIHAK PERTAMA.')
                        doc.text(30,75,'e.')
                        doc.text(35,75,'Membaca, memahami, dan melaksanakan segala ketentuan dan kebijakan yang diatur')
                        doc.text(35,80,'oleh Perusahaan, antara lain namun tidak terbatas pada:')
                        doc.text(40,85,'•')
                        doc.text(45,85,'Kode Etik Perusahaan,')
                        doc.text(40,90,'•')
                        doc.text(45,90,'Peraturan Perusahaan')
                        doc.text(40,95,'•')
                        doc.text(45,95,'Surat Keputusan / Surat Edaran / Memo yang dikeluarkan oleh Direksi,')
                        doc.text(40,100,'•')
                        doc.text(45,100,'Petunjuk Pelaksanaan / Pedoman /')
                        doc.setFontType('italic')
                        doc.text(107,100,'Standard Operating Prosedure')
                        doc.setFontType('normal')
                        doc.text(161,100,'/')
                        doc.setFontType('italic')
                        doc.text(163,100,'Operation line.')
                        doc.setFontType('normal')
                        doc.text(30,105,'f.')
                        doc.text(35,105,'Menciptakan suasana yang kondusif dan persaingan yang sehat serta mampu menjalankan')
                        doc.text(35,110,'kerja-sama yang baik di dalam tempat kerja maupun di dalam lingkungan kerja di Perusahaan.')
                        doc.text(30,115,'g.')
                        doc.text(35,115,'Menjaga dan melindungi sarana dan prasarana yang disediakan PIHAK PERTAMA, serta')
                        doc.text(35,120,'menjaga kerahasiaan Perusahaan dari waktu ke waktu dan aset Perusahaan serta aset')
                        doc.text(35,125,'customer termasuk segala informasi baik lisan maupun tertulis yang diperoleh oleh PIHAK ')
                        doc.text(35,130,'KEDUA selama menjalankan Perjanjian Kerja ini maupun setelah berakhirnya Perjanjian')
                        doc.text(35,135,'Kerja ini.')
                        doc.text(30,140,'h.')
                        doc.text(35,140,'Menyiapkan dan melakukan serah terima pekerjaan serta menyerahkan segala bentuk ')
                        doc.text(35,145,'dokumen, sarana, dan prasarana serta inventaris milik Perusahaan kepada pihak yang')
                        doc.text(35,150,'ditunjuk kemudian oleh PIHAK PERTAMA pada saat akan berakhirnya hubungan kerja.')
                        doc.text(100,160,'Pasal 9');
                        doc.setFontType('bold');
                        doc.text(91,165,'Evaluasi Kinerja');
                        doc.setFontType('normal');
                        doc.text(20,175,'1.')
                        doc.text(30,175,'PARA PIHAK dalam melaksanakan Perjanjian Kerja ini akan menetapkan target dan kompetensi')
                        doc.text(30,180,'yang harus dicapai dalam Pekerjaan serta dituangkan dalam bentuk')
                        doc.setFontType('italic');
                        doc.text(148,180,'Key Performance Indicator')
                        doc.setFontType('normal');
                        doc.text(30,185,'(KPI) tahunan.')
                        doc.text(20,195,'2.')
                        doc.text(30,195,'PIHAK PERTAMA melakukan evaluasi kinerja PIHAK KEDUA pada waktu yang ditentukan oleh')
                        doc.text(30,200,'PIHAK PERTAMA sekurang-kurangnya pada akhir Perjanjian Kerja ini.')
                        doc.text(20,210,'3.')
                        doc.text(30,210,'Dalam melaksanakan Perjanjian Kerja ini ternyata PIHAK KEDUA menolak melaksanakan tugas')
                        doc.text(30,215,'dan/atau telah melalaikan tugas ataupun kurang / tidak menunjukkan kinerja yang telah disepakati ')
                        doc.text(30,220,'PARA PIHAK, dan PIHAK PERTAMA telah melakukan pembinaan yang dituangkan secara tertulis')
                        doc.text(30,225,'namun PIHAK KEDUA tidak menunjukkan perbaikan kinerja yang tercermin dari pemberian Surat')
                        doc.text(30,230,'Peringatan 1, 2, dan 3 yang dikeluarkan PIHAK PERTAMA, maka PIHAK KEDUA bersedia untuk')
                        doc.text(30,235,'mengundurkan diri sesuai dengan ketentuan yang berlaku.')
                        doc.text(100,245,'Pasal 10');
                        doc.setFontType('bold');
                        doc.text(86,250,'Peringatan dan Sanksi');
                        doc.setFontType('normal');
                        doc.text(20,260,'1.');
                        doc.text(30,260,'PIHAK PERTAMA bersama PIHAK KEDUA berusaha untuk mempertahankan dan meningkatkan ');
                        doc.text(30,265,'disiplin kerja sehingga kegiatan usaha dapat berjalan dengan baik. ');
                        
                        //page 6
                        doc.addPage();
                        doc.addImage(img, 'JPEG',50,10);
                        doc.setFontSize(11);                
                        doc.setFontSize(11);                
                        doc.text(20,40,'2.')
                        doc.text(30,40,'Pada dasarnya, pengenaan sanksi merupakan suatu upaya pembinaan dalam menghormati')
                        doc.text(30,45,'etika dan moral. PIHAK PERTAMA berhak memberikan Surat Peringatan dan Sanksi, termasuk')
                        doc.text(30,50,'Skorsing, kepada PIHAK KEDUA yang secara nyata terbukti melakukan pelanggaran terhadap')
                        doc.text(30,55,'Kewajiban dan Larangan yang telah ditentukan berdasarkan Surat Keputusan Perusahaan, ')
                        doc.text(30,60,'dan Peraturan Perundang-Undangan yang berlaku dari waktu waktu ke waktu.')
                        doc.text(20,70,'3.')
                        doc.text(30,70,'Pemberian sanksi oleh PIHAK PERTAMA kepada PIHAK KEDUA disesuaikan dengan bobot ')
                        doc.text(30,75,'kesalahannya, yang terdiri dari Teguran, Surat Peringatan (SP), dan Bebas Tugas (Skorsing),')
                        doc.text(30,80,'dengan ketentuan sebagai berikut :')
                        doc.text(30,85,'a.')
                        doc.text(35,85,'Teguran')
                        doc.text(35,90,'Pemberian Teguran kepada PIHAK KEDUA dapat dikenakan terhadap tindak pelanggaran')
                        doc.text(35,95,'yang dianggap tidak dilakukan secara sengaja dan/atau bersifat pelanggaran ringan dan/atau ')
                        doc.text(35,100,'baru untuk pertama kalinya dilakukan.')
                        doc.text(30,105,'b.')
                        doc.text(35,105,'Surat Peringatan (SP)')
                        doc.text(35,110,'Pemberian SP secara tertulis kepada PIHAK KEDUA dapat dikenakan terhadap tindak')
                        doc.text(35,115,'pelanggaran yang dianggap cukup berat, dengan ketentuan sebagai berikut:')
                        doc.text(35,120,'1)')
                        doc.text(40,120,'SP terdiri atas 3 tingkat, yaitu:')
                        doc.text(40,125,'a)')
                        doc.text(45,125,'Surat Peringatan 1 (SP1).')
                        doc.text(40,130,'b)')
                        doc.text(45,130,'Surat Peringatan 2 (SP2).')
                        doc.text(40,135,'c)')
                        doc.text(45,135,'Surat Peringatan 3 (SP3) (terakhir). ')
                        doc.text(35,140,'2)')
                        doc.text(40,140,'Masa berlaku SP masing-masing adalah maksimum 6 (enam) bulan terhitung sejak')
                        doc.text(40,145,'dikeluarkannya SP tersebut.')
                        doc.text(35,150,'3)')
                        doc.text(40,150,'Apabila dalam masa berlaku Surat Peringatan PIHAK KEDUA melakukan pelanggaran,')
                        doc.text(40,155,'baik pelanggaran yang sama maupun pelanggaran lainnya, Pekerja dapat dikenakan')
                        doc.text(40,160,'sanksi yang lebih berat.')
                        doc.text(35,165,'4)')
                        doc.text(40,165,'Pengeluaran SP tidak harus selalu melalui ketiga tahapan di atas. Terhadap tindak ')
                        doc.text(40,170,'pelanggaran tertentu yang dinilai berat, PIHAK PERTAMA berwenang mengenakan')
                        doc.text(40,175,'langsung SP3, walaupun sebelumnya tidak pernah dikeluarkan SP1 dan/atau SP2.')
                        doc.text(35,180,'5)')
                        doc.text(40,180,'Apabila PIHAK KEDUA masih melakukan pelanggaran setelah dikeluarkan SP3')
                        doc.text(40,185,'maka PIHAK PERTAMA berhak melakukan Pemutusan Hubungan Kerja (PHK) sesuai')
                        doc.text(40,190,'dengan ketentuan berlaku.')
                        doc.text(100,200,'Pasal 11');
                        doc.setFontType('bold');
                        doc.text(80,205,'Berakhirnya Perjanjian Kerja');
                        doc.setFontType('normal');
                        doc.text(20,215,'1.')
                        doc.text(30,215,'Perjanjian Kerja ini akan berakhir demi hukum sesuai jangka waktu yang telah diperjanjikan')
                        doc.text(30,220,'sebagaimana tertulis dalam Pasal 1 ayat (2) Perjanjian Kerja.')
                        doc.text(20,230,'2.')
                        doc.text(30,230,'Selain dari yang ditentukan dalam ayat (1) Pasal ini, Perjanjian Kerja ini dapat berakhir')
                        doc.text(30,235,'sewaktu-waktu dikarenakan oleh hal-hal sebagai berikut dibawah ini:')
                        doc.text(30,240,'a.')
                        doc.text(35,240,'PIHAK KEDUA mengundurkan diri dengan permohonan yang harus diajukan selambat')
                        doc.text(35,245,'-lambatnya 30 (tiga puluh) hari kalender sebelum pengunduran dirinya berlaku efektif')
                        doc.text(35,250,'dan disetujui oleh PIHAK PERTAMA.')
                        doc.text(30,255,'b.')
                        doc.text(35,255,'PIHAK KEDUA tidak hadir di tempat kerja sebanyak 5 (lima) hari kerja berturut-turut')
                        doc.text(35,260,'ataupun 8 (delapan) hari kerja tidak terturut-turut dalam 1 (satu) bulan kalender tanpa  ')
                        doc.text(35,265,'pemberitahuan dan alasan yang dapat diterima oleh PIHAK PERTAMA dan telah dipanggil')
                        doc.text(35,270,'secara tertulis 2 (dua) kali oleh PIHAK PERTAMA.')
                        
                        //page 7
                        doc.addPage();
                        doc.addImage(img, 'JPEG',50,10);
                        doc.setFontSize(11);
                        doc.text(30,40,'c.')
                        doc.text(35,40,'PIHAK KEDUA menolak melaksanakan tugas dan/atau telah melalaikan tugas yang diberikan')
                        doc.text(35,45,'oleh PIHAK PERTAMA dengan alasan apapun juga, ataupun PIHAK KEDUA dinilai tidak cakap')
                        doc.text(35,50,'dan/atau tidak mampu dalam menjalankan tugas-tugasnya sebagaimana yang tertuang dalam ')
                        doc.text(35,55,'Perjanjian Kerja ini, serta sebelumnya telah melalui proses pembinaan yang berlaku di ')
                        doc.text(35,60,'Perusahaan.')
                        doc.text(20,70,'3.')
                        doc.text(30,70,'Berakhirnya Perjanjian Kerja sebagaimana yang tertuang dalam ayat (1) dan ayat (2) di atas akan')
                        doc.text(30,75,'mengacu kepada ketentuan yang berlaku.')
                        doc.text(20,85,'4.')
                        doc.text(30,85,'PIHAK KEDUA berkewajiban menyelesaikan segala tanggung jawab yang harus diselesaikan')
                        doc.text(30,90,'termasuk mengembalikan inventaris atau milik Perusahaan serta mengisi dan menyelesaikan ')
                        doc.text(30,95,'formulir')
                        doc.setFontType('italic')
                        doc.text(44,95,'exit interview')
                        doc.setFontType('normal')
                        doc.text(67,95,'/')
                        doc.setFontType('italic')
                        doc.text(69,95,'walkout.')
                        doc.setFontType('normal')
                        doc.text(84,95,'Apabila PIHAK KEDUA tidak menyelesaikan hal ini, maka PIHAK ')
                        doc.text(30,100,'KEDUA setuju untuk dilakukan penahanan salary beserta kompensasi lainya oleh PIHAK')
                        doc.text(30,105,'PERTAMA hingga PIHAK KEDUA menyelesaikan segala kewajibannya.')
                        doc.text(20,115,'5.')
                        doc.text(30,115,'Setelah berakhirnya Perjanjian Kerja ini, apabila PIHAK KEDUA hadir di tempat PIHAK PERTAMA ')
                        doc.text(30,120,'maka tidak dapat dianggap sebagai pelaksanan kerja dalan suatu hubungan kerja.')
                        doc.text(100,130,'Pasal 12');
                        doc.setFontType('bold');
                        doc.text(100,135,'Penutup');
                        doc.setFontType('normal');
                        doc.text(20,145,'1.')
                        doc.text(30,145,'Perjanjian Kerja ini tunduk kepada Peraturan Ketenagakerjaan dan Perundang-Undangan yang')
                        doc.text(30,150,'berlaku di Republik Indonesia dari waktu ke waktu.')
                        doc.text(20,160,'2.')
                        doc.text(30,160,'Apabila terjadi perselisihan antara PARA PIHAK dalam menafsirkan dan/atau terkait dengan')
                        doc.text(30,165,'pelaksanaan Perjanjian Kerja ini berikut dengan segala akibatnya, maka PARA PIHAK sepakat')
                        doc.text(30,170,'untuk menyelesaikannya secara musyawarah untuk mufakat.')
                        doc.text(20,180,'3.')
                        doc.text(30,180,'Dalam hal penyelesaian secara musyawarah untuk mufakat sebagaimana dimaksud ayat (2)')
                        doc.text(30,185,'Pasal ini tidak tercapai, maka PARA PIHAK dapat menyelesaikan perselisihan tersebut sesuai')
                        doc.text(30,190,'dengan ketentuan yang berlaku.')
                        doc.text(20,200,'4.')
                        doc.text(30,200,'Hal-hal yang belum atau tidak cukup diatur dalam Perjanjian Kerja ini akan diatur lebih lanjut oleh')
                        doc.text(30,205,'PIHAK PERTAMA sesuai ketentuan yang berlaku di Perusahaan dan Ketentuan Perundang-')
                        doc.text(30,210,'Undangan yang berlaku.')
                        doc.text(20,220,'5.')
                        doc.text(30,220,'Perjanjian Kerja ini dibuat dengan itikad baik dari PARA PIHAK, dan oleh karenanya PARA PIHAK')
                        doc.text(30,225,'mengikatkan diri untuk melaksanakan segala ketentuan dengan sebaik-baiknya sebagaimana')
                        doc.text(30,230,'tercantum dalam Perjanjian Kerja ini.')
                        doc.text(20,240,'6.')
                        doc.text(30,240,'Dalam hal dikemudian hari terdapat salah satu/beberapa ketentuan dalam Perjanjian Kerja ini yang')
                        doc.text(30,245,'tidak sesuai dengan peraturan perundang-undangan dan dinyatakan tidak berlaku oleh instansi')
                        doc.text(30,250,'yang berwenang, maka ketentuan lainnya dalam Perjanjian Kerja ini yang tidak dibatalkan')
                        doc.text(30,255,'akan tetap berlaku dan mengikat PARA PIHAK.')
                        
                        //page 8
                        doc.addPage();
                        doc.addImage(img, 'JPEG',50,10);
                        doc.setFontSize(11);   
                        doc.text(20,40,'Perjanjian Kerja ini dibuat dan ditandatangani dalam rangkap 2 (dua) yang  masing-masing  mempunyai')
                        doc.text(20,45,'kekuatan hukum yang sama, serta berlaku sah sejak penandatanganan oleh PARA PIHAK pada tanggal')
                        doc.text(20,50,'sebagaimana tercantum dalam Perjanjian Kerja.')
                        doc.text(45,70,'PIHAK PERTAMA')
                        doc.text(135,70,'PIHAK KEDUA')
                        doc.text(20,110,'xxxxx')
                        doc.text(70,110,'xxxxx')
                        doc.text(135,110,'xxxxx')
                        doc.text(20,115,'General Manager')
                        doc.text(70,115,'HR Manager')
                        doc.text(135,115,'Karyawan')
                        doc.text(20,140,'Lampiran:')
                        doc.text(20,145,'-  Renumerasi')
                        
                        
                        //page 9
                        doc.addPage();
                        doc.addImage(img, 'JPEG',50,10);
                        doc.setFontSize(11);
                        doc.setFontType('bold');
                        doc.text(85,40,'Lampiran A - Renumerasi');
                        doc.setFontType('normal');
                        doc.text(55,45,'Perjanjian Kerja Waktu Tertentu No. : 000/PKWT/LK/IX/2015');
                        doc.text(20,55,'PIHAK KEDUA:');
                        doc.text(20,60,'Nama                    :');
                        doc.text(60,60,'xxxx');
                        doc.text(20,65,'Jabatan                 :');
                        doc.text(60,65,'xxxx');
                        doc.text(20,75,'menyatakan sepakat menerima pembayaran Remunerasi dari PIHAK PERTAMA, yang diatur sebagai ');
                        doc.text(20,80,'berikut:');
                        doc.text(20,85,'1.');
                        doc.text(30,85,'PIHAK PERTAMA akan membayar Remunerasi di bawah ini setiap tanggal 25 (dua puluh lima)');
                        doc.text(30,90,'dalam bulan berjalan. Jika hari tersebut jatuh hari libur, maka pembayaran dilakukan pada hari');
                        doc.text(30,95,'kerja terakhir sebelumnya:');
                        doc.text(30,100,'•');
                        doc.text(35,100,'Upah:');
                        doc.text(35,105,'a.');
                        doc.text(40,105,'Gaji Pokok     :');
                        doc.text(70,105,'Rp. xxxxxxxxxxxxxxxxxxx bruto per bulan');
                        doc.text(70,110,'(terbilang: tujuh juta sembilan ratus sembilan puluh ribu rupiah)');



                                            doc.save('test.pdf');
                    }
                });
            }*/
            function genPDF(){
                html2canvas(document.getElementById("testDiv"),{
                    onrendered: function(canvas){
                        var doc = new jsPDF();
                        
                        
                        doc.setFontSize(11)
                        doc.text(20,40,'To              :');
                        doc.setFontType('bold')
                        doc.text(45,40,'<%=name%>');
                        doc.setFontType('normal')
                        doc.text(150,40,'<%=city%>, 21 Oktober 2017');
                        doc.setFontType('normal')
                        doc.text(20,45,'Subject     :');
                        doc.setFontType('bold')
                        doc.text(45,45,'Offering Letter for <%=jobpos%> - <%=loc%>');
                        doc.setFontType('normal')
                        doc.text(20,55,'Dear Mr/Ms.  <%=name%>,');
                        doc.text(20,65,'We are pleased to confirm your engagement with us as follows:');
                        doc.text(30,75,'1.');
                        doc.text(35,75,'Position');
                        doc.text(75,75,':');
                        doc.setFontType('bold')
                        doc.text(85,75,'<%=jobpos%>');
                        doc.setFontType('normal')
                        doc.text(30,80,'2.');
                        doc.text(35,80,'Reporting to');
                        doc.text(75,80,':');
                        doc.setFontType('bold')
                        doc.text(85,80,'<%=report%>');
                        doc.setFontType('normal')
                        doc.text(30,85,'3.');
                        doc.text(35,85,'Employment Type');
                        doc.text(75,85,':');
                        doc.setFontType('bold')
                        doc.text(85,85,'<%=etype%>');
                        doc.setFontType('normal')
                        doc.text(30,90,'4.');
                        doc.text(35,90,'Cash Remuneration:');
                        doc.text(75,90,':');
                        doc.text(35,95,'•');
                        doc.text(40,95,'Basic salary');
                        doc.setFontType('bold')
                        doc.text(62,95,'Rp <%=bsalary%> (<%=bsalary_text%>) gross per month. ');
                        doc.setFontType('normal')
                        doc.text(35,100,'•');
                        doc.text(40,100,'Allowances');
                        doc.setFontType('bold')
                        doc.text(62,100,'Rp <%=allowances%> (<%=allowances_text%>) gross per month. ');
                        doc.setFontType('normal')
                        doc.text(30,105,'5.');
                        doc.text(35,105,'Benefits:');
                        doc.text(35,110,'•');
                        doc.text(40,110,'You will be entitled to 12 (twelve) working days for annual leave after 3 (three) month');
                        doc.text(40,115,' of service.');
                        doc.text(30,120,'6.');
                        doc.text(35,120,'At the discretion of the management, you agree to be transferred to another affiliated');
                        doc.text(35,125,'company of the group as and when business needs require.');
                        doc.text(30,130,'7.');
                        doc.text(35,130,'You will abide by the company’s standard policies and regulations.  You are not allowed ');
                        doc.text(35,135,'to engage in a full or part-time outside employment without prior written approval of the ');
                        doc.text(35,140,'HR Director and the Board.  Outside affiliations require consultation and approval of the ');
                        doc.text(35,145,'HR Director and the Board.');
                        doc.text(30,150,'8.');
                        doc.text(35,150,'Commencement date');
                        doc.text(75,150,':');
                        doc.setFontType('bold')
                        doc.text(85,150,'<%=cdate%>');
                        doc.setFontType('normal')
                        doc.text(30,155,'9.');
                        doc.text(35,155,'Termination:');
                        doc.text(35,160,'a.');
                        doc.text(40,160,'1 (one) months before your contract ends, we will notify you whether your contract will');
                        doc.text(40,165,'be extended or terminated.');
                        doc.text(35,170,'b.');
                        doc.text(40,170,'If you are resigning, you must give a one months’ notice prior to your resignation date.');
                        doc.text(20,180,'We look forward to your confirmation and agreement by');
                        doc.setFontType('bold')
                        doc.text(117,180,'<%=adate%>');
                        doc.setFontType('normal')
                        doc.text(20,200,'Your sincerely,');
                        doc.text(130,200,'Agreed and accepted');
                        doc.text(20,240,'xxxxxxxxxxxx');
                        doc.text(130,240,'<%=name%>');
                        doc.text(130,245,'Date: xxxxxxxxxx');

                                                doc.save('<%=transactionid%>.pdf');
                    }
                });
            }
                   
        </script>
         
    </head>
    <body onload="genPDF()">
       
        
      
       
        <div id="testDiv" class="col-lg-12">

        </div>
        <div id="page1" style="display: none;">
           <h4>No. : 000/PKWT/LK/IX/2016</h4>
           
       </div>
        
        
        <%
            String query = "update transactions set ol_status = 'sent' where transactionid = '"+transactionid+"'";
            st.executeUpdate(query);
            //response.sendRedirect("hiring.jsp?unit="+location+"&process=Offering Contract&page=1");
        %>
        
    </body>
</html>
