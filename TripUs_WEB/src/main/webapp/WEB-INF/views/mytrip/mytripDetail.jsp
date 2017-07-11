<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
	    <link rel="stylesheet" href="../resources/css/bootstrap-theme.min.css">
	    <link rel="stylesheet" href="../resources/css/bootstrap.min.css">
	    <script src="http://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>
	   
	    
	    <script type="text/javascript" src="../resources/js/bootstrap.min.js"></script>
	    <style>
	    	 body {
		        padding-top: 50px;
		    }
    
		    .continer-fluid-2 {
		        padding: 0px;
		    }
    
		    .row {
		        width: 100%;
		        margin: auto;
		    }
    
		    .col-xs-12,
		    .col-xs-11,
		    .col-xs-10,
		    .col-xs-9,
		    .col-xs-8,
		    .col-xs-7,
		    .col-xs-6,
		    .col-xs-5,
		    .col-xs-4,
		    .col-xs-3,
		    .col-xs-2,
		    .col-xs-1 {
		        padding: 0px;
		        margin: auto;
		    }
    
		    #logo {
		        width: 100px;
		    }
		    
		    .mini-logo {
		        width: 50px;
		    }
		    
		    .label-danger {
		        font-size: 11px;
		    }
		    
		    #footer {
        	 background-color: #BEBEBE;
		         height: 200px;
		    }
		     
		     #footer-logo {
		         margin-top: 10px;
		         border-bottom: 2px solid #5d5d5d;
		         padding-bottom: 10px;
		         width: 200px;
		         min-width: 120px;
		    }
		    
		    .sign-in-btn,
		    .sign-up-btn {
		        margin-right: 15px;
		    }
		    
		    #my-icon {
		        width: 25px;
		        margin-right: 10px;
		    }
    
		    .sign-in-btn {
		        margin-right: 5px;
		    }
		    
		    .sign-up-btn {
		        margin-right: 12px;
		    }
		    
		    .login_topimg {}
		    
		    .login_topimg>img {
		        width: 200px;
		        margin-left: 180px;
		    }
		    
		    .login_buttons {
		        margin-top: 30px;
		    }
		    
		    .login_buttons>* {
		        margin-left: 120px;
		    }
		    
		    .login_buttons>button {
		        width: 52.6%;
		        background-color: rgb(240, 85, 98);
		        height: 45px;
		        text-shadow: 0px;
		        font-size: 20px;
		        color: white;
		    }
		    
		    .login_buttons>button:hover {
		        background-color: rgb(230, 75, 88);
		    }
		    
		    .login_label {
		        text-align: center;
		    }
		
		   
		    #map{
		        position: fixed;
		        left:950px;
		        top:230px;
		        width:500px;
		        height:420px;
		        background-color:black;
		    }

		    .color_label{
		    	height:10px;
		    }
		    #mystorytable>img {
	            position: relative;
	            width: 100%;
	            height: 100%;
	        }
	        
	        #mystorytable {
	            position: relative;
	            width: 100%;
	            height: 180px;
	            overflow: hidden;
	        }
	        
	        .days {
	            background-color: rgb(234, 234, 234);
	            width: 700px;
	            box-shadow: 6px 3px 6px rgba(0, 0, 0, 0.3);
	            margin-bottom: 50px;
	            margin-left: 135px;
	            border: 1px solid rgb(234, 234, 234);
	        }
	        
	        #friend_icon,
	        #cover_icon,
	        #share_icon {
	            position: absolute;
	            z-index: 1;
	            top: 75%;
	            left: 76%;
	            font-size: 18px;
	        }
	        
	        #cover_icon {
	            left: 85%;
	            white-space: nowrap;
	        }
	        #share_icon{
	        	left: 63%;
	        }
	        
	        .days_title>h2 {
	            padding-left: 6px;
	        }
	        
	        .days_title>div {
	            width: 100%;
	            background: rgb(90, 90, 90);
	        }
	        
	        .days_title>div>a {
	            text-decoration: none;
	            color: rgb(200, 200, 200);
	        }
	        
	        .days_days {
	            position: relative;
	            background-color: rgb(253, 253, 253);
	            border-bottom: 1px solid rgb(233, 233, 233)
	        }
	        
	        .days_days>img {
	            width: 80px;
	        }
	        
	        .days_days {
	            font-size: 20px;
	        }
	        
	        #memo {
	            width: 100%;
	            margin-top: 3px;
	            margin-bottom: 0px;
	        }
	        
	        .commentplus>button {
	            margin: 0px;
	            width: 100%;
	        }
	        
	        #reply_button {
	            cursor: pointer;
	        }
	        
	        .days_reply {
	         
	        }
	        
	        .comments>div{
	            background-color: rgb(234, 234, 234);
	            border: 1px solid rgb(204, 204, 204);
	        }
	        
	        .comments>div>p>img {
	            width: 40px;
	        }
	        .comments{
	            position: relative;
	        }
	        .Rereply{
	            position: absolute;
	            top:22px;
	            left: 630px;
	            font-size: 12px;
	        }
	        #reply_memo{
	            width:80%;
	            margin-left: 130px;
	        }
	
	        .hidden_reply>button{
	            width:80%;
	            margin-left: 130px;
	        }
	        
	        #mystorytable > div > a{
	        	color:white;
	        	font-size: 18px;
	        }
		</style>
		 <script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=e78eb12d0671fa570a740efa444e9b88"></script>   
		    <script type="text/javascript">
		    var pathlines = new Array();	     
	        var strokeColors = new Array();
	        var mymaxnumber = 16777215;
	        var contents = new Array();
	        var bounds = new Array();
	        var map;
	        var eqidx=0;
	        var offsets = new Array();
			    $(document).ready(function() {

		            $("#reply_button").click(function() {
		            	var idx=$("#reply_button").index(this);
		            	$(".days_reply_input").eq(idx).slideToggle();
		            });
		            $(".Rereply").click(function(){
		            	var idx=$(".Rereply").index(this);
		            	$(this).find(".hidden_reply").eq(idx).slideToggle();
		            });
			        $('#my-icon').mouseover(function() {
			            $(this).attr("src", "../resources/imgs/user2.png");
			        });
			        $('#my-icon').mouseout(function() {
			            $(this).attr("src", "../resources/imgs/user1.png");
			        });
			        
			        $(".hidden_reply").hide();
					$(".Rereply").click(function (e) {
						e.preventDefault
						var idx = $(".Rereply").index(this);
						$(".hidden_reply").eq(idx).fadeToggle();
					})
					
					pathlines = new Array();	     
			        strokeColors = new Array();
			        mymaxnumber = 16777215;
			        contents = new Array();
			        for(var i = 0 ; i< $(".placecard").length; i++){	
			        	var mynum = 6000215+(28000*i)
			        	strokeColors[i] ="#"+mynum.toString(16);
			        	// style="margin-bottom:15px;"
			        	contents[i] =  '<div class ="label"><span class="tooltip" style="background-color:"'+strokeColors[i]+';">'+(i+1)+'일차</span></div>';
			        	$(".tooltip").css("background-color",strokeColors[i]);
			        
			        	console.log(contents[i]);
			        	var pathline  = new Array();
			        	var cnt = 0;	        	
			        	for(var j=0; j< $(".placecard").eq(i).find(".mapxy").length; j+=2){
			        		pathline[cnt++]= new daum.maps.LatLng(
			        				$(".placecard").eq(i).find(".mapxy").eq(j).val(),
			        				$(".placecard").eq(i).find(".mapxy").eq(j+1).val()
			        		);
			        	}
			        	pathlines[i] = pathline;
			        }
			        for(var i = 0 ;i< $(".days").length;i++){
			        	offsets[i] = $(".days").eq(i).offset();
			        }		
			      
			        
			       
			        $(window).scroll( function() {
			        	 $("#map").css("top","230px");
			        	if($(document).scrollTop()<offsets[0].top){
			        		var maptop=230-$(document).scrollTop()+"px";
			        		$("#map").css("top",maptop);
			        		console.log(maptop);
			        		
			        	}else{			        
			        		$("#map").css("top","50px");
				        	for(var i = 0 ; i<$(".days").length; i++){
				        		
				        		if(offsets[i].top == $(document).scrollTop() || offsets[i].top < $(document).scrollTop()){
				        			if($(".days").eq(i).height() > 185){
				        			eqidx = i;
				        			}
				        		}	
				        		console.log(eqidx);
				        		setBound(eqidx);
				        	}			        	
			        	}
			        	
			        
					});	
			        setmap();
			    });
			    function setmap() {
					
		           	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		                mapOption = {
		                    center: pathlines[0][0], // 지도의 중심좌표
		                    level: 3 // 지도의 확대 레벨
		                };	     	
		     
		           	
		           	
		           	
		           	var imageSrc = 'http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/red_b.png', // 마커이미지의 주소입니다    
		            imageSize = new daum.maps.Size(50,45), // 마커이미지의 크기입니다
		            imageOption = {offset: new daum.maps.Point(15,43)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
			              
			        // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
			        var markerImage_start = new daum.maps.MarkerImage(imageSrc, imageSize, imageOption)// 마커가 표시될 위치입니다
		            
			        var imageSrc = 'http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/blue_b.png';
			        var markerImage_end = new daum.maps.MarkerImage(imageSrc, imageSize, imageOption)// 마커가 표시될 위치입니다
			        
			        
			        var imageSrc_b = 'http://203.236.209.213:8080/tripus/resources/imgs/ourmaker.png', // 마커이미지의 주소입니다    
		            imageSize_b = new daum.maps.Size(50,50), // 마커이미지의 크기입니다
		            imageOption_b = {offset: new daum.maps.Point(25,25)}; 
			        
			        var markerImage_b= new daum.maps.MarkerImage(imageSrc_b, imageSize_b, imageOption_b);
			        
			        
			        
			        
		            map = new daum.maps.Map(mapContainer, mapOption);
			        
			        
		            var marker;
		         	for (var i = 0; i < pathlines.length; i++) {
		         	    // 배열의 좌표들이 잘 보이게 마커를 지도에 추가합니다
		         	    bounds[i] = new daum.maps.LatLngBounds();
		         	    
			         	    for (var j = 0; j < pathlines[i].length; j++) {
			         	    	
			         	    	if(j==0){
			         	    		marker = new daum.maps.Marker({ 
					         	    	position : pathlines[i][j],
					         	    	image: markerImage_start
					         	    });
			         	    	}else if(j==(pathlines[i].length-1)){
			         	    		marker = new daum.maps.Marker({ 
					         	    	position : pathlines[i][j] ,
					         	    	image: markerImage_end
					         	    });
			         	    	}else{
			         	    		//marker = new daum.maps.Marker({ 
					         	    	//position : pathlines[i][j] ,
				         	    		//image: markerImage_b
					         	    //});
			         	    	}
			         	  	
			         	    
			         	   	marker.setMap(map);
			         	    //marker.setMap(map);
			         		// LatLngBounds 객체에 좌표를 추가합니다
			     		   	bounds[i].extend(pathlines[i][j]);
			         		
			     			var circle = new daum.maps.Circle({
				         	    center : pathlines[i][j],  // 원의 중심좌표 입니다 
				         	    radius: 60, // 미터 단위의 원의 반지름입니다 
				         	    strokeColor:  strokeColors[i], // 선의 색깔입니다
				         	    fillColor:  strokeColors[i], // 채우기 색깔입니다
				         	    fillOpacity: 0.7  // 채우기 불투명도 입니다   
				         	}); 

				         	// 지도에 원을 표시합니다 
				         	circle.setMap(map); 
				         		
			         		if(j==0){
				     			var customOverlay = new daum.maps.CustomOverlay({
				     			    position: pathlines[i][j],
				     			    content: contents[i]
				     		  
				     			});	
				     			customOverlay.setMap(map);
				     		  }
			     			
		         	    }
		         	   
		         	}
		         	
		           	for(var i = 0 ; i < pathlines.length; i++){
		           		if(pathlines[i].length > 0 ){
		           			
		           			$(".color_label").eq(i).css("background-color",strokeColors[i]);
		           			
				           	var polyline = new daum.maps.Polyline({
				                path: pathlines[i], // 선을 구성하는 좌표배열 입니
				                strokeWeight: 5, // 선의 두께 입니다
				                strokeColor: strokeColors[i], // 선의 색깔입니다
				                strokeOpacity: 0.7, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
				                strokeStyle: 'solid' // 선의 스타일입니다
				                
				            });
				          		polyline.setMap(map);
				          		
				          	
		           		}
		           	}
		           	map.relayout();
		         	polyline.setMap(map);
	
		         	// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
		         	var zoomControl = new daum.maps.ZoomControl();
		         	map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);		         	
		         	
		         	
		    	}
	   
		       	
		      	function setBound(i) {
		     	    // LatLngBounds 객체에 추가된 좌표들을 기준으로 지도의 범위를 재설정합니다
		     	    // 이때 지도의 중심좌표와 레벨이 변경될 수 있습니다
		     	    map.setBounds(bounds[i]);
		         }
					
		      	$(".placecard").each(function(idx){
		      		var num = idx;
		      		
					$(".placecard").eq(num).click(function() {
					
						setBound(num);
					})					
				})
			</script>
    </head>
    <body>
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false"><!--모바일에서보이는 토글 버튼-->
                    <span class="sr-only">Toggle </span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!--모바일에서보이는 토글 버튼-->
                <a class="navbar-brand" href="/tripus/" id="tohome">
                    <img src="../resources/imgs/logo/Wep Logo.png" id="logo">
                </a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li><a href="/tripus/tripnote">여행노트</a></li>
                            <li><a href="/tripus/mytrip">내 여행</a></li>
                           
                        </ul>
            			<div class="nav navbar-nav navbar-right">
                           <input type="hidden" id="user_name" value="${sessionScope.userInfo.name }"/>
                           <div class="nav navbar-nav navbar-right"  style = "margin-right:10px;">
	                           <a href="/tripus/myPage"><img id="my-icon" src="../resources/imgs/user1.png"></a>
	                           <button id = "login" class="btn btn-default navbar-btn sign-in-btn" data-toggle="modal" data-target="#sign-in" style = " background-color: #F05562; color: white; border-radius: 10px;">Login</button>
	                           <button id ="join" class="btn btn-default navbar-btn sign-up-btn" data-toggle="modal" data-target="#sign-up" style = "background-color: #F05562; color: white; border-radius: 10px; margin-left:5px">Join</button>
	                           <input type="text" id="user_login" style="width:145px; border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px;" value="${sessionScope.userInfo.name }님! 반갑습니다!" readonly/>
	                           <a href="../logout" id ="logout" class="btn btn-default navbar-btn log-out-btn" style = "margin-right:5px; background-color: #F05562; color: white; border-radius: 10px; ">log-out</a>         
                           </div>
                           
                          
                           <script>
                              var value = $('#user_name').val();
                              
                              if(value == "" || value == null || value == undefined || ( value != null && typeof value == "object" && !Object.keys(value).length )){
                                 $('#user_login').hide();
                                 $('#logout').hide();
                                 $('#my-icon').hide();
                              }else{
                                 
                                 $('#user_login').show();
                                 $('#login').hide();
                                 $('#join').hide();
                                 $('#logout').show();
                                 
                              }
                            </script>

                           
                      </div>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
           
   	<div class="row">
   		<div class="col-xs-1"></div>
   		<div class="col-xs-10">
   			<div id="mystorytable">
   				<div id="share_icon"><a href="../shareTripnote/${sessionScope.mytripCode }">여행노트 일정공유</a></div>
		        <div id="friend_icon"><a href="../friendlist">친구초대</span></a></div>
		        <div id="cover_icon"><a href="#">커버이미지변경</a></div>
		        <img src="${mytrip.coverimg }" alt="">
		    </div>
   		</div>
   		<div class="col-xs-1"></div>
               
        <div class="col-xs-1"></div> 
		<div class="col-xs-10">
		 <c:forEach items="${tripList }" var="bean">
			<div class="days">
		        <div class="days_title">
		            <h2> ${bean.daynum }일차<small> ${bean.tripdate }</small></h2>
		            <div><a href="../search_mytrip?tripdate=${bean.tripdate}">일정 추가하기+</a>
		            </div>
		            
		        </div>
		        <c:forEach items="${tripDetail }" var="detail">
		            <c:if test="${bean.tripdate eq detail.tripdate }">
		                <a href="../detail/${detail.contentid }">
		                    <div class="days_days">
		                        <img src="${detail.content_img }" alt="">${detail.content_title }
		
		                    </div>
		
		                </a>
		              </c:if> 
		            <a href="../delTrip/${detail.contentid }" style="color: darkgray; text-decoration: none;">삭제</a>
		            </c:forEach>
		        
		        <div id="reply_button">댓글보기</div>      
		        <div class="days_reply_input">
		                <form action="../addstory/${bean.daynum }/${bean.tripdate}" method="post">
		                    <div class="commentplus">
		                        <textarea id="memo" name="memo"></textarea>
		                        <button class="btn btn-default">작성</button>
		                    </div>
		                </form>
		            <c:forEach items="${tripStory }" var="story">
		         <c:if test="${bean.tripdate eq story.tripdate }">
		           
		                    <div class="days_reply">
		                        <div class="comments">
		                            <div>
		                                <p>
		                                    <img src="${story.userprofile }"> ${story.userid }:
		                                    <c:if test="${story.lvl eq 0 }">
		                                    ${story.memo }
		                                    </c:if>
		                                    <c:if test="${story.lvl ne 0 }">
		                                    ${story.usernicname }
		                                    </c:if>
		                                </p>
		                                <a class="Rereply">답글달기</a>
		                            </div>
		                            <form action="../replestory/${story.idx }" method="post">
		                                <div class="hidden_reply">
		                                    <textarea id="reply_memo"name="memo"></textarea>
		                                    <button class="btn btn-default">작성</button>
		                                </div>
		                            </form>
		                        </div>
		                    </div>
		                    </c:if>
		                    </c:forEach>
		                       </div>
		            
		            
		   		</div>
		   	</c:forEach>
		</div> 
		
		<div class="col-xs-1"></div> 		               
   	</div>
    
    
    
     <div>
        <div>
            <div class="col-xs-1"></div>
            <div class="col-xs-10">
               
            </div>
            <div class="col-xs-1">
            	
            	 <div id="map"> </div>
            </div>
            <c:forEach items="${tripList }" var="bean">
	               	 	<div class="placecard">
	               	 	
			               	<c:forEach items="${tripDetail}" var="TD">		
			               	             
			               		<c:if test="${bean.tripdate eq TD.tripdate }">
			           
			               		              	
				               	
				               		<input type="hidden" value="${TD.mapy }" class="mapxy"/>
				               		<input type="hidden" value="${TD.mapx }" class="mapxy"/>
			               		
			               		</c:if>			               		
			               	</c:forEach>
		               	</div>
		        	</c:forEach>
		        	
		        	
        </div>

    </div>
    <div class="row" id="footer" style="margin-top:350px;">
        <div class="col-xs-1"></div>
        <div class="col-xs-10">
            <img id="footer-logo" src="../resources/imgs/logo/Web%20Main%20Logo1.png"/>
            <br/>
            <p style="margin-top:10px;">Copyright ⓒ 2017 TripUs, All Rights Reserved.</p>
        </div>
        <div class="col-xs-1"></div>
    </div>
    
    <!-- /.container-fluid -->
    <!-- /.container-fluid -->
<!-- Modal #sign-in -->
    <div class="modal fade" id="sign-in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">로그인</h4>
                </div>
                <div class="modal-body">
                    <div class="login_topimg"><img src="../resources/imgs/logo/Web%20Main%20Logo1.png" alt=""></div>
                    <div>
                        <form action="login" method="post"><!--form은 여기--><!--form은 여기--><!--form은 여기--><!--form은 여기-->
                            <div class="form-group" class="login_label">
                                <label for="id">id</label>
                                <input type="text" class="form-control" name="id" id="id" placeholder="id">
                            </div>
                            <div class="form-group" class="login_label">
                                <label for="exampleInputPassword1">Password</label>
                                <input type="password" class="form-control" name="pw" id="pw" placeholder="Password">
                            </div>

                            <div class="login_buttons">
                                <button type="submit" class="btn btn-default">TripUs Login</button>
                                <button type="submit" class="btn btn-default">PW/ID 찾기</button>
                                <a href="${kakao_url }"><img src="../resources/imgs/icon/kakao_login_en.png" alt=""></a>
                                <a href="${google_url}"><img src="../resources/imgs/icon/google_login.jpg" alt=""></a>
                            </div>
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- Modal #sign-up -->
    <div class="modal fade" id="sign-up" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">회원가입</h4>
                </div>
                <div class="modal-body">
                    <div class="login_topimg"><img src="../resources/imgs/logo/Web%20Main%20Logo1.png" alt=""></div>
                    <div>
                   
                    </div>
                     <form action="signin" method="post"><!--form은 여기--><!--form은 여기--><!--form은 여기--><!--form은 여기-->
                    <div class="form-group" class="login_label">
                        <label for="exampleInputPassword1">ID</label>
                        <input type="text" class="form-control" id="exampleInputPassword1" placeholder="ID" name="id">
                    </div>
                    <div class="form-group" class="login_label">
                        <label for="exampleInputPassword1">Password</label>
                        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" name="pw">
                    </div>
                    <div class="form-group" class="login_label">
                        <label for="exampleInputPassword1">name</label>
                        <input type="text" class="form-control" id="exampleInputPassword1" placeholder="name" name="name">
                    </div>
					<div class="form-group" class="login_label">
                        <label for="exampleInputPassword1">nicname</label>
                        <input type="text" class="form-control" id="exampleInputPassword1" placeholder="nicname" name="nicname">
                    </div>
                    <div class="form-group" class="login_label">
                        <label for="exampleInputPassword1">E-mail</label>
                        <input type="email" class="form-control" id="exampleInputPassword1" placeholder="email" name="email">
                    </div>

                    <div class="login_buttons">
                        <button type="submit" class="btn btn-default" style="">Sign-up!</button>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
            		 
    </body>
</html>