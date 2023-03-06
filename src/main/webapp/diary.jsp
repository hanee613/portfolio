<%@page import="com.test.diary.DBUtil"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	Connection conn = null;
	PreparedStatement stat = null;
	PreparedStatement pstat = null;
	ResultSet rs = null;
	ResultSet rs2 = null;

	
	conn = DBUtil.open();
	
	String sql = "select m.id, s.state, s.id, s.sregdate, s.schedule, s.snum   from TBLSCHEDULE s "
			+ "inner join TBLSMEMBER m on s.id = m.id where m.id='hanee'";
	
	stat = conn.prepareStatement(sql);
	
	rs = stat.executeQuery();
	
	
	String sql2 = "select * from tblDiary where id = ?";
	
	pstat = conn.prepareStatement(sql2);
	
	pstat.setString(1, "hanee");
	
	rs2 = pstat.executeQuery();
	
	
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
    <script src="https://kit.fontawesome.com/e31c434757.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.1.js"></script>
    <script src="./js/slideIn.js"></script>
    <link href="./css/slidein.css" rel="stylesheet">
    <link href="./css/slide.css" rel="stylesheet">
    <title>Diary</title>
    <script nonce="89be8c70-abe6-48ac-9707-da094b0b7bbb">
        (function(w, d) {
            !function(cM, cN, cO, cP) {
                cM.zarazData = cM.zarazData || {};
                cM.zarazData.executed = [];
                cM.zaraz = {
                    deferred: [],
                    listeners: []
                };
                cM.zaraz.q = [];
                cM.zaraz._f = function(cQ) {
                    return function() {
                        var cR = Array.prototype.slice.call(arguments);
                        cM.zaraz.q.push({
                            m: cQ,
                            a: cR
                        })
                    }
                };
                for (const cS of ["track", "set", "debug"])
                    cM.zaraz[cS] = cM.zaraz._f(cS);
                cM.zaraz.init = () => {
                    var cT = cN.getElementsByTagName(cP)[0],
                        cU = cN.createElement(cP),
                        cV = cN.getElementsByTagName("title")[0];
                    cV && (cM.zarazData.t = cN.getElementsByTagName("title")[0].text);
                    cM.zarazData.x = Math.random();
                    cM.zarazData.w = cM.screen.width;
                    cM.zarazData.h = cM.screen.height;
                    cM.zarazData.j = cM.innerHeight;
                    cM.zarazData.e = cM.innerWidth;
                    cM.zarazData.l = cM.location.href;
                    cM.zarazData.r = cN.referrer;
                    cM.zarazData.k = cM.screen.colorDepth;
                    cM.zarazData.n = cN.characterSet;
                    cM.zarazData.o = (new Date).getTimezoneOffset();
                    if (cM.dataLayer)
                        for (const cZ of Object.entries(Object.entries(dataLayer).reduce(((c_, da) => ({
                            ...c_[1],
                            ...da[1]
                        })))))
                            zaraz.set(cZ[0], cZ[1], {
                                scope: "page"
                            });
                    cM.zarazData.q = [];
                    for (; cM.zaraz.q.length;) {
                        const db = cM.zaraz.q.shift();
                        cM.zarazData.q.push(db)
                    }
                    cU.defer = !0;
                    for (const dc of [localStorage, sessionStorage])
                        Object.keys(dc || {}).filter((de => de.startsWith("_zaraz_"))).forEach((dd => {
                            try {
                                cM.zarazData["z_" + dd.slice(7)] = JSON.parse(dc.getItem(dd))
                            } catch {
                                cM.zarazData["z_" + dd.slice(7)] = dc.getItem(dd)
                            }
                        }));
                    cU.referrerPolicy = "origin";
                    cU.src = "/cdn-cgi/zaraz/s.js?z=" + btoa(encodeURIComponent(JSON.stringify(cM.zarazData)));
                    cT.parentNode.insertBefore(cU, cT)
                };
                ["complete", "interactive"].includes(cN.readyState) ? zaraz.init() : cM.addEventListener("DOMContentLoaded", zaraz.init)
            }(w, d, 0, "script");
        })(window, document);
        </script>
</head>
<body>
    <div id="main">
        <nav class="sidebar clear">
            <header>
                <div class="image-text">
                   
                    <div class="text logo-text">
                        <div class="user-img">
                        	            
                            
                            <label for="profileimg" style="width:120px; height:128px; position:absolute; z-index:4;">   
                            <div class="user-plus" style="left:-128px;">    
                            <i class="fas fa-plus"></i>
                            </div>
                            </label>
                            
                            
                             <form>
                            	<input type="file" name="profileimg" style="display:none;" id="profileimg">
                            </form>
                            
                            <div class="clear"></div>
                            
                            <img src="img/member.jpg" alt="img" class="user_img_img" style="z-index:1;">
                            
                        </div>
                        <span class="name">hanee</span>
                    </div>
                </div>
    
                
            </header>
    
            <div class="menu-bar">
                <div class="menu">
    
                    <ul class="menu-links">
                        <li class="nav-link">
                                <i class='fas fa-cake-candles icon' ></i>
                                <span class="text nav-text">1999-06-13</span>
                        </li>
    
                        <li class="nav-link">
                            <div class="email-icon">
                                <i class='fas fa-paper-plane icon' ></i>
                                </div>
                                <div class="email">hanee@naver.com</div>
                        </li>
    
                        <li class="nav-link">
                                <i class='fas fa-phone-flip icon'></i>
                                <span class="text nav-text">010-1111-1111</span>
                        </li>
    
                        <li class="nav-link">
                                <i class='fas fa-tag icon' ></i>
                                <span class="text nav-text">Introduce</span> 
                            
                        </li>
                        <div class="introduce">나의 하루 일기</div>
                        <li class='nav-link'>
                            <a href href="#">
                                <i class='bx bx-log-out icon' ></i>
                            <span class="text nav-text">Logout</span>
                            </a>
                        </li>
    
                    </ul>
                </div>
    
                
            </div>
    
        </nav>
    
        <section class="home">
            <section class="ftco-section">
                <div class="container">
                 
                    <div class="row">
                        <div class="col-md-12">
                            <div class="content w-100">
                                <div class="calendar-container">
                                    <div class="calendar">
                                        <div class="year-header">
                                            <span class="left-button fa fa-chevron-left" id="prev"></span>
                                            <span class="year" id="label"></span>
                                            <span class="right-button fa fa-chevron-right" id="next"></span>
                                        </div>
                                        <table class="months-table w-100">
                                            <tbody>
                                                <tr class="months-row">
                                                    <td class="month">Jan</td>
                                                    <td class="month">Feb</td>
                                                    <td class="month">Mar</td>
                                                    <td class="month">Apr</td>
                                                    <td class="month">May</td>
                                                    <td class="month">Jun</td>
                                                    <td class="month">Jul</td>
                                                    <td class="month">Aug</td>
                                                    <td class="month">Sep</td>
                                                    <td class="month">Oct</td>
                                                    <td class="month">Nov</td>
                                                    <td class="month">Dec</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <table class="days-table w-100">
                                            <td class="day">Sun</td>
                                            <td class="day">Mon</td>
                                            <td class="day">Tue</td>
                                            <td class="day">Wed</td>
                                            <td class="day">Thu</td>
                                            <td class="day">Fri</td>
                                            <td class="day">Sat</td>
                                        </table>
                                        <div class="frame">
                                            <table class="dates-table w-100">
                                                <tbody class="tbody"></tbody>
                                            </table>
                                        </div>
                                        <button class="button" id="add-button">Add Event</button>
                                    </div>
                                </div>
                                <div class="events-container"></div>
                                <div class="dialog" id="dialog">
                                    <h2 class="dialog-header"> Add New Event </h2>
                                    <form class="form" id="form" action="scheduleok.jsp" method="GET">
                                        <div class="form-container" style="align:center;">
                                            <label class="form-label" id="valueFromMyButton" for="name">Event name</label>
                                            <input class="input cal_txt" type="text" id="name" maxlength="36" name="schedule">
                                            
                                            <!-- <input class="input cal_txt" type="text" maxlength="200" style="height: 150px;" id="note" title="이벤트에 대한 설명을 써주세요."> -->
                                            
                                            <div class="cal_btn">
                                            <input type="button" value="Cancel" class="button" id="cancel-button">
                                            <input type="submit" value="OK" class="button button-white" id="ok-button">
                                            </div>
                                           
                                        </div>
                                        <input type="hidden" id="hidden" name="getdate">
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            
            <div id="new_diary">
            <a href="diary_new.jsp">
                <i class="fas fa-plus"></i> 
                    <span class="new_text">
                       새로 만들기
                    </span>
                    </a>
            </div>

            <div id="slide">
            <%while(rs2.next()){ 
            %>
            
                <a href="#">
                    <div class="js-slidein block">
                            <div class="diary_img">
                                <div class="diary_img_wrap">
                                <%if(rs2.getString("img") != null){ %>
                                    <img src="pic/<%=rs2.getString("img")%>"  title="img">
                                    
                                   <%} %>
                                </div>
                            </div>
                            <div class="diary_text">
                                <div class="diary_title"><%=rs2.getString("subject") %></div>
                                <div class="diary_content"><%=rs2.getString("content") %></div>
                            </div>
                    </div>
                </a>
               <%} %>

            </div>

        </section>
        
        <div class="clear"></div>

        
    
       
    </div>

    <div id="modal">
        <div class="md_del">
            <i class="fas fa-xmark"></i></div>
        <div class="main_md">
            <div class="md_img">
                <img src = "pic/member.jpg">
                
            </div>
            <div class="md_text">
                <div class="md_title">
                    귀여운게 짱이야
                </div>
                <div class="md_content">
                    역시 귀여운게 다 이겨 보고만 있어도 힐링되는 느낌
                </div>
            </div>
        </div>
    </div>

    <script src="js/jquery.min.js"></script>
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
    <script defer src="https://static.cloudflareinsights.com/beacon.min.js/vaafb692b2aea4879b33c060e79fe94621666317369993" integrity="sha512-0ahDYl866UMhKuYcW078ScMalXqtFJggm7TmlUtp0UlD4eQk0Ixfnm5ykXKvGJNFjLMoortdseTfsRT8oCfgGA==" data-cf-beacon='{"rayId":"7732c8c0988c830b","token":"cd0b4b3a733644fc843ef0b185f98241","version":"2022.11.3","si":100}' crossorigin="anonymous"></script>
    <script>
    
/*     var date = new Date();
    var today = date.getDate();
    
    var calendar_days = $(".tbody");
    var month = date.getMonth();
    var year = date.getFullYear();
    var today = date.getDate();
    
    var todaydate = year + '-' + month + '-' + today; */

    
    //function getDate(){
    	$("#add-button").click(()=>{
    	var day = parseInt($(".active-date").html());
    	var year = parseInt($(".year").html());
    	var month = $(".active-month").html();
    	
    	if(month == "Jan"){
    		month = 1;
    	}else if(month === "Feb"){
    		month = 2;
    	}else if(month === "Mar"){
    		month = 3;
    	}else if(month === "Apr"){
    		month = 4;
    	}else if(month === "May"){
    		month = 5;
    	}else if(month === "Jun"){
    		month = 6;
    	}else if(month === "Jul"){
    		month = 7;
    	}else if(month === "Aug"){
    		month = 8;
    	}else if(month === "Sep"){
    		month = 9;
    	}else if(month === "Oct"){
    		month = 10;
    	}else if(month === "Nov"){
    		month = 11;
    	}else if(month === "Dec"){
    		month = 12;
    	} 
    	
    	
    	
	    var d = year + "-" + month + "-" + day;
	    
	    // document.getElementById("hidden").innerHTML = "<div class=\"hidden\" name=\"getdate\" value=\""+d+"\"></div>";
	    document.getElementById("hidden").value = d;

    });
    
    
        $("#new_diary i, #new_diary span").mouseover(()=>{
            $("#new_diary .fa-plus").css({
                color: 'white',
                backgroundColor : 'gray',
                transform: 'rotate(360deg)',
                transition: 'all 0.5s'
            });
        });
        $("#new_diary, #new_diary span").mouseleave(()=>{
            $("#new_diary .fa-plus").css({
                color: 'gray',
                backgroundColor : 'white',
                transform: 'rotate(0deg)',
                transition: 'all 0.5s'
            });
        });

       
        $('.js-slidein').click(()=>{
            $('#modal').css({display : 'block'})
        });

        $('.md_del').click(()=>{
            $('#modal').css({display:'none'})
        });
        
        
        var event_data = {
        		
        	    "events": [
        	    <%
        			while(rs.next()){
        			
        			String date = rs.getString("sregdate");
        			String[] day = date.split(" ");
        			day = day[0].split("-");
        			
        			String year = day[0];
        			String month = day[1];
        			String d = day[2];
        			
        			
        		%>
        	    {
        	        "occasion": "<%=rs.getString("schedule")%>",
        	        "year": <%=year%>,
        	        "month": <%=month%>,
        	        "day": <%=d%>,
        	        "state": "<%=rs.getString("State")%>",
        	        "seq": "<%=rs.getString("Snum")%>"
        	       
        	    },
        	    <%}%>
        	    
        	    ]
        	};
        
        
        
        function user_img(){
        	$('#profileimg').click();
        }
        
       
        
      </script>

 
</body>
</html>