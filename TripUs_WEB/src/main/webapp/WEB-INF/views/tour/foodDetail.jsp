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
        
        <link rel="stylesheet" type="text/css" media="screen" href="../resources/css/CSSreset.min.css" />
		<link rel="stylesheet" type="text/css" media="screen" href="../resources/css/als_demo.css" />
        
        <script src="http://code.jquery.com/jquery-1.12.4.min.js"
                  integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="
                  crossorigin="anonymous"></script>
        <script type="text/javascript" src="../resources/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="../resources/js/pagination.js"></script>
      
		
	    <title>TripUs</title>

	<style>
	    body {
	            padding-top: 50px;
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
	        
	         #footer {
	            background-color: #BEBEBE;
	            height: 200px;
	            margin-top: 50px;
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
	
	        #my-icon{
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
	            color:white;
	        }
	        
	        .login_buttons>button:hover {
	            background-color: rgb(230, 75, 88);
	        }
	        
	        .login_label {
	            text-align: center;
	        }
	        
	        
	        /*컨텐츠 css*/
	        
	        #title-table{
	            width: 100%;
	            margin: auto;
	        }
	        
	        #adress-a{
	            text-decoration: none;
	            color: black;
	        }
	        
	        #calendar-img {
	            width: 70px;
	            min-width: 50px;
	            margin: auto;
	            margin-top: 18px;
	        }
	         #like-img{
	            width: 70px;
	            min-width: 70px;
	            margin: auto;
	            margin-top: 18px;
	        }
	        
	        #like-add,
	        #calendar-add{
	            text-align: center;
	            white-space: nowrap;
	            margin-top: 5px;
	        }
	        
	        #content-img{
	            width: 90%;
	        }
	        
	        #content2{
	            margin-top: 50px;
	            background-color: #F5F5F5;
	        }
	        
	        #content3{
	            margin-top: 50px;
	        }
	        
	        #table1{
	            border-top: 3px solid #F05562;
	        }
	        
	         .table>tbody>tr>td:nth-child(1){
	            width: 100px;
	        }
	        
    </style>
    <script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=e78eb12d0671fa570a740efa444e9b88"></script>   
    	<script>
    		
    		var map;
    		$(document).ready(function(){
    			$('#my-icon').mouseover(function() {
    	            $(this).attr("src", "../resources/imgs/user2.png");
    	        });
    	        $('#my-icon').mouseout(function() {
    	            $(this).attr("src", "../resources/imgs/user1.png");
    	        });
    			var mapy = $("#mapx").val();
        		var mapx = $("#mapy").val();
        		setmap();
			    $('#like-img').click(function(){
	                $(this).attr("src", "../resources/imgs/like2.png");
	            }); 
                function setmap(){
    			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		        mapOption = { 
		            center: new daum.maps.LatLng(mapx,mapy), // 지도의 중심좌표
		            level: 3 // 지도의 확대 레벨
		        };
			
			    map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
			
			    // 마커가 표시될 위치입니다 
			    var markerPosition  = new daum.maps.LatLng(mapx,mapy); 
			
			    // 마커를 생성합니다
			    var marker = new daum.maps.Marker({
			        position: markerPosition
			    });
			
			    // 마커가 지도 위에 표시되도록 설정합니다
			    marker.setMap(map);
    		}
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
    
    <!-- 컨텐츠1 -->
    <div class="row" id="content1">
            <div class="col-xs-1"></div>
            <div class="col-xs-7">
                
                <h1><strong>${basicInfo.title }</strong></h1>
                <img src="../resources/imgs/place.png" style="width:25px;"/> <a id="address-a" href="#map">${basicInfo.addr1 } </a> <br/>
            </div>
            <div class="col-xs-2">
               <table id="title-table">
                    <tr>
                       
                        <!-- 내 여행 추가 -->
                        <td style="text-align:center;">
						<c:if test="${sessionScope.mytripCode ne null}">
						<a class="mytrip-detail-btn" id="addmytrip-food" data-role="button" style="font-weight: bold; background-color: white; color: black;" href="../addmytrip_list/${basicInfo.contentid }" ><img id="calendar-img" src="../resources/imgs/calendar.png" class="img-responsive" />나의 여행지 추가</a>
						</c:if>
						<c:if test="${sessionScope.mytripCode eq null}">
						<a  data-toggle="modal" data-target="#mytrip_list" class="mytrip-detail-btn" id="addmytrip-food" onclick="addmytripfood()" data-role="button" style="font-weight: bold; background-color: white; color: black;" href="#" ><img id="calendar-img" src="../resources/imgs/calendar.png" class="img-responsive" />나의 여행지 추가</a>
						</c:if>
						</td>
                        <!-- 내 여행 추가 끝 -->
                        

						<!-- 추천 버튼~~ -->
                        <td align="center">
	                        <c:if test="${likeflag eq 1 }">
							<a id="likebutton" class="mytrip-detail-btn" style="background-color: white; color: black; " href="#" onclick="likeupdate()" > <img id="like-img" src="../resources/imgs/like2.png" class="img-responsive"/> ${likeCnt }</a>
							</c:if>
							<c:if test="${likeflag ne 1 }">
							<a id="likebutton" class="mytrip-detail-btn" style="background-color: white; color: black; " href="#" onclick="likeupdate()"><img id="like-img" src="../resources/imgs/like1.png" class="img-responsive"/>${likeCnt }</a>
							</c:if>
                        </td>
                    </tr>
                </table>

            </div>
            <div class="col-xs-1"></div>
        </div>
        <!-- 내여행 추가 모달페이지 -->
    	<div class="modal fade" id="mytrip_list" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
					
					<div id="mytrip-food" align="center" style="height:600px; overflow:scroll;display:none; position: fixed; top: 10%; width: 50%; left: 25%; z-index: 100; background-color: white; border: 10px solid #F05562; border-radius: 12px; padding: 15px; ">
					<img style ="width:200px;" src="../resources/imgs/logo/Web Main Logo1.png" id="logo">
					<h4></h4>
					<ul id="mytripfood" data-role="listview" data-inset="true"></ul>
					<div></div>
				</div>
            </div>
        
			<script type="text/javascript">
					    var likeflag = ${likeflag };
						var likeCnt = ${likeCnt };
						var contentid = ${basicInfo.contentid };
						var userInfo = $('#userInfoid').val();
						var usertripcode = $('#usertripcode').val();
						var list=1;
						
						
						function likeupdate() {
							if(userInfo != '') {
								$.ajax({ 
						        	url: "../likeupdate",
						            type:'POST', 					 
						            data:{ 
						            	contentid : contentid,
						            	likeflag : likeflag
						            }, 
						            success : function(data){
						            	likeflag = data;
						            	if(likeflag == 1) { 
						            		likeCnt = likeCnt + 1;
						            		$('#likebutton').html('<img id="like-img" src="../resources/imgs/like2.png" class="img-responsive"/>' + likeCnt);
						            	}
						            	else {
						            		likeCnt = likeCnt - 1;
						            		$('#likebutton').html('<img id="like-img" src="../resources/imgs/like1.png" class="img-responsive"/> ' + likeCnt);
						            	}
						            }, 
						            error : function(){ 
						            	alert('AJAX 통신 실패'); 
						            } 
						        });		
							} else {
								alert('로그인 후 사용하실 수 있습니다.');
							}
						};
						
			
					function removeTripPop() {
						$('#mytrip-food').hide();
					};
					
					function tripDetail(data) {
						
					};
					
					function addmytripfood() {
						if(userInfo == '') {
							alert('로그인 후 사용하실 수 있습니다.');
						} else {
							$.ajax({ 
					        	url: "../getMyTrip",
					            type:'POST', 					 
					            success : function(data){
					            	var usernicname = $('#usernicname').val();
					            	$('#mytrip-food div').html('');
					            	if(data.length != 0) {
					            		$('#mytrip-food h4').html('<p style="font-weight: bold;">'+usernicname + '님의 여행 계획 목록</p> ');
					            		$('#mytripfood').html('<li class="ui-li-has-thumb ui-first-child ui-last-child" style="list-style:none;" >'
													+ "<a onclick='tripDetail(" + data[0]['code'] + ")' href='#'>"
					            					+ "<img src='" + data[0]['coverimg'] + "' style='width: 50%; height: 50%;'/><br>"
					            					+ "[" + data[0]['thema'] + "] " + data[0]['title'] 
					            					+ "<p>" + data[0]['startdate'] + " ~ " + data[0]['enddate'] + '</p></a></li>');
					            		for(var i=1; i<data.length; i++) {
						            		$('#mytripfood').append('<li class="ui-li-has-thumb ui-first-child ui-last-child" style="list-style:none;">'
													+ "<a onclick='tripDetail("+data[i]['code']+")' href='#'><img src='" + data[i]['coverimg'] + "' style='width: 50%; height: 50%;'/><br>"
													+ "[" + data[i]['thema'] + "] " + data[i]['title'] 
											        + "<p>" + data[i]['startdate'] + " ~ " + data[i]['enddate'] + '</p></a></li>');
							            }
					            		$('#mytripfood').append('<button onclick="removeTripPop()" class="ui-btn ui-shadow ui-corner-all ui-last-child" style="background-color: #F05562; color: white; border-radius: 10px;" data-dismiss="modal">취소</button>');
								       // $('#mytripfood').listview('refresh');
					            	} else {
					            		$('#mytrip-food').html('<h2 style="font-weight: bold;">' + usernicname + '님의 여행목록이 없습니다.</h2>'
						            				+ '<p style="font-weight: bold;">새로운 여행을 추가하시겠습니까?</p>'
						            				+ ' <a class="ui-btn" href="../addmytrip" data-dismiss="modal"><button style="background-color: #F05562; color: white; border-radius: 10px;">여행 추가</button></a>'
						            				+ '<button onclick="removeTripPop()" class="ui-btn ui-shadow ui-corner-all ui-last-child" style="background-color: #F05562; color: white; border-radius: 10px;" data-dismiss="modal">취소</button>');
					            	} 
					            	$('#mytrip-food').show();
					            }, 
					            error : function(){ 
					            	alert('AJAX 통신 실패'); 
					            } 
					        });
						}
					};
					
					function tripDetail(paramdata) {
						$.ajax({ 
				        	url: "../getMyTripDetail",
				            type:'POST',
				            data: {
				            	mytripcode: paramdata
				            },
				            success : function(data){
				            	$('#mytrip-food div').html('');
				            	$('#mytrip-food h4').html('<p style="font-weight: bold;">몇일차에 추가하시겠습니까?</p>');
				            	$('#mytripfood').html('<li class="ui-first-child ui-last-child" style="list-style:none;" >'
										+ '<a onclick="addTrip(' + data[0]['code'] + ', \'' + data[0]['tripdate'] + '\')" href="#">'
								        + '여행 ' + data[0]['daynum'] + '일차 - ' + data[0]['tripdate'] + '</a></li>');
								for(var i=1; i<data.length; i++) {
									$('#mytripfood').append('<li class="ui-first-child ui-last-child" style="list-style:none;" >'
										+ '<a onclick="addTrip(' + data[i]['code'] + ', \'' + data[i]['tripdate'] + '\')" href="#">'
									    + '여행 ' + data[i]['daynum'] + '일차 - ' + data[i]['tripdate'] + '</a></li>');
								}
			            		$('#mytripfood').append('<br><button onclick="removeTripPop()" class="ui-btn ui-shadow ui-corner-all ui-last-child" style="background-color: #F05562; color: white; border-radius: 10px;" data-dismiss="modal">취소</button>');
				          
				            	$('#mytrip-food').show();
				            }, 
				            error : function(){ 
				            	alert('AJAX 통신 실패'); 
				            } 
				        });
					};
					
					//여행지에 추가
					function addTrip(code, tripdate) {
						$('#mytrip-food h4').html('<p style="font-weight: bold;">정말로 추가하시겠습니까?</p>');
						$('#mytripfood').html('');
						//$('#mytripfood').listview('refresh');
						$('#mytrip-food div').html('<button onclick="addTrip2(' + code + ', \'' + tripdate + '\')" data-dismiss="modal" style="background-color: #F05562; color: white; border-radius: 10px;">추가</button><button onclick="removeTripPop()" data-dismiss="modal" style="background-color: #F05562; color: white; border-radius: 10px;">취소</button>');
					};
					
					
					//
					function addTrip2(code, tripdate) {
						alert(tripdate);
						$.ajax({ 
				        	url: "../addTrip",
				            type:'POST',
				            data: {
				            	contentid: contentid,
				            	code: code,
				            	title: $('#title').val(),
				            	tripdate: tripdate,
				            	firstimage: $('#firstimage').val(),
				            	mapx: $('#mapx').val(),
				            	mapy: $('#mapy').val()
				            },
				            success : function(data){
				            	list=data;
				            	if(list==0){
				            		
				            		$('#mytrip-food').hide();
				            		
				            	}
				            	
				           	}, 
				            error : function(){ 
				            	alert('AJAX 통신 실패'); 
				            } 
				        });
					};

    </script>

    <!-- 여기까지 복붙 -->
    
    
    <!-- 컨텐츠2 -->
        <div class="row" id="content2">
            <div class="col-xs-1"></div>
            <div class="col-xs-10">
                <div class="col-md-6 col-xs-12">
                    <img id="content-img" src="${basicInfo.firstimage }">
                </div>
                <div class="col-md-6 col-xs-12">
                    <table class="table" id="table1">
                        <tr>
                            <td>문의 및 안내</td>
                            <td>${basicInfo.tel }<br/>
                            	${detailInfo.infocenterfood }
                            </td>
                        </tr>
                        <tr>
                            <td>홈페이지</td>
                            <td>${basicInfo.homepage }</td>
                        </tr>
                        <tr>
                            <td>대표 메뉴</td>
                            <td>${detailInfo.firstmenu }</td>
                        </tr>
                        <tr>
                            <td>영업 시간</td>
                            <td>${detailInfo.opentimefood }</td>
                        </tr>
						<tr>
                            <td>예약 안내</td>
                            <td>${detailInfo.reservationfood }</td>
                        </tr>
                        <tr>
                            <td>할인 정보</td>
                            <td>${detailInfo.discountinfofood }</td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="col-xs-1"></div>
        </div>
    
    	<!-- 정보 -->
 	<input type="hidden" id="usertripcode" value="${sessionScope.mytripCode }">
				<input type="hidden" id="userInfoid" value="${sessionScope.userInfo.id }">
				<input id="userprofile" type="hidden" name="userprofile" value="${sessionScope.userInfo.profile }" />
				<input id="usernicname" type="hidden" name="usernicname" value="${sessionScope.userInfo.nicname }" />
				<input id="mytripcode" type="hidden" name="mytripcode" value="${sessionScope.mytripCode }" />
				<input id="firstimage" type="hidden" name="firstimage" value="${basicInfo.firstimage }" />
				<input id="title" type="hidden" name="title" value="${basicInfo.title }" />
				
    <!-- 리뷰 -->
     <div class="row" id="content5">
            <div class="col-xs-1"></div>
            <div class="col-xs-10">
    <div class="ui-corner-all custom-corners">
			        	<div class="ui-bar ui-bar-a" style="background-color: #F05562; border:solid #F05562;">
			           		<h3 style="color: white; margin-left: 10px; ">Review</h3>
			           	</div><br/>
			           	<div class="ui-body ui-body-a" style="border: none;">
						
							<table>
							
							<tbody id="myTable">
								
							<c:forEach items="${review }" var="bean">
							<tr>
					           	 <td>
					           	 	<img style="width:100px; height:130px;" src="${bean.profile }" class="ui-corner-all"/> <strong style="vertical-align: bottom;"> ${bean.nicname } : </strong> <span style="vertical-align: bottom;">${bean.review }</span>
					           	 </td>   
					         </tr>
					        </c:forEach>
					        
					        </tbody>
							</table>
							<div class="col-md-12 center text-center">
						    <span class="left" id="total_reg"></span>
					            <ul class="pagination pager" id="myPager"></ul>
					          </div>
					    </div>
					    <form action="../detail/${basicInfo.contentid}" method="post">
								<input id="review" name="review" type="text" placeholder="리뷰를 등록하세요" style="width:80%; margin-left:20px;'" />
								<button id="review_add" style="border: 2px solid #F05562; border-radius: 5px; background-color: white; color: #F05562;">입력</button>
						</form>
			        </div>
			        </div>
					 <div class="col-xs-1"></div>
					 </div><br/><br/>

					<script type="text/javascript">
						      $(document).ready(function(){
						        $('#myTable').pageMe({
						          pagerSelector:'#myPager',
						          activeColor: 'red',
						          prevText:'◀',
						          nextText:'▶',
						          showPrevNext:true,
						          hidePageNumbers:false,
						          perPage:5
						        });
			
						      });
					</script>
					
	<!-- 복붙끄으읏 -->				
    
    

    
   <!-- 절취선 -->
   
   				<!-- User Image -->
					<div class="row" id="content5">
            		<div class="col-xs-1"></div>
            		<div class="col-xs-10">
   					<div class="ui-corner-all custom-corners">
			        	<div class="ui-bar ui-bar-a" style="background-color: #F05562; border:solid #F05562;">
			           		<h3 style="color: white; margin-left: 10px; ">Photo</h3>
			        </div>
			        <!-- 제목끝 -->



				<div id="lista1" class="als-container"">
				
				<div class="als-viewport" >
					<ul class="als-wrapper">
						<c:forEach items="${areaImg }" var="imgName">
					       	<li class="als-item"><img height="200px" width = "200px" class="slide-img" src="${imgName }" style="border-radius: 10px;"/></li>    
					    </c:forEach>
					</ul>
				</div>
				<span class="als-prev" style="right:"><img src="../resources/imgs/scroller/thin_left_arrow_333.png" alt="prev" title="previous" /></span>
				<span class="als-next"><img src="../resources/imgs/scroller/thin_right_arrow_333.png" alt="next" title="next" /></span>
				</div>
				
				
				
					<!-- 사진 추가버튼 -->
					<table style="width: 100%;">
			        		<tr>
			        			<td align="right" style="padding-right: 5px;"><a data-toggle="modal" data-target="#photo_add" href="#" onclick="showfoodImg()" style="text-decoration: none; color: gray; font-size: 14px;">사진추가</a></td>
			        		</tr>
			        </table>
			        
				    <div class="modal fade" id="photo_add" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" align = "center" style = "top:350px;">
			        <div  id="foodpop" style="border: 10px solid #F05562; border-radius: 12px; display: none; width: 20%;" align="center">
				        <form id="fileFormFood" action="uploadImg" method="post" enctype="multipart/form-data" data-ajax="false" style="background-color: white;">
							<div style="padding: 10px;">
								<input type="hidden" name="contentid" value="${basicInfo.contentid }"/>
								<input style="z-index: 100" type="file" id="uploadFood" name="file"/><br/>
								<a href="#" class="ui-btn ui-btn-inline" style="color: white; background-color: #F05562; box-sizing: border-box; display: inline-block; width: 45%; z-index: 100" onclick="uploadimage()" data-dismiss="modal">업로드</a>
								<a href="#" class="ui-btn ui-btn-inline" style="color: white; background-color: #F05562; box-sizing: border-box; display: inline-block; width: 45%; z-index: 100" onclick="hidefoodImg()" data-dismiss="modal">취소</a>
							</div>
						</form>
				    </div>
				    </div>
				      
				       </div>
			        </div>
					 <div class="col-xs-1"></div>
					 </div>
					   <script type="text/javascript" src="../resources/js/jquery-2.1.1.min.js"></script>
					<script type="text/javascript" src="../resources/js/jquery.als-1.7.min.js"></script>
					<script type="text/javascript">
						$(document).ready(function() 
						{
							$("#lista1").als({
								visible_items: 4,
								scrolling_items: 2,
								orientation: "horizontal",
								circular: "yes",
								autoscroll: "no",
								interval: 5000,
								speed: 500,
								easing: "linear",
								direction: "right",
								start_from: 0
							});
							
							
							//logo hover
							$("#logo_img").hover(function()
							{
								$(this).attr("src","../resources/imgs/scroller/als_logo_hover212x110.png");
							},function()
							{
								$(this).attr("src","../resources/imgs/scroller/als_logo212x110.png");
							});
							
							//logo click
							$("#logo_img").click(function()
							{
								location.href = "http://als.musings.it/index.php";
							});
							
							$("a[href^='http://']").attr("target","_blank");
							$("a[href^='http://als']").attr("target","_self");
						});
					</script>
					<!-- 사진 추가 -->
					<script type="text/javascript">
				        function showfoodImg() {
				        	if(userInfo == '') {
								alert('로그인 후 사용하실 수 있습니다.');
							} else {
				        		$('#foodpop').show();
							}
				        };
				        
				        function hidefoodImg() {
				        	$('#foodpop').hide();
				        };
				    
				        function createSlick() {
		            		$(".img-slider").not('.slick-initialized').slick({
		            			dots : false,
		    	        		infinite : true,
		    	        		speed : 300,
		    	        		slidesToShow : 1,
		    	        		centerMode : true,
		    	        		variableWidth : false
		        		    });		
		            	}
		            	createSlick();
		            	//Now it will not throw error, even if called multiple times.
		            	$(window).on('resize', createSlick);
				        
				        function uploadimage(){
	                 		var form = $('#fileFormFood')[0];
	                        var formData = new FormData(form);
	                        $.ajax({
	                        	url: '../uploadImg',
	                            processData: false,
	                            contentType: false,
	                            data: formData,
	                            type: 'POST',
	                            success: function(data){
	                            	$('#foodpop').hide();
	                            	$('#als-viewport').append('<div>'
	    					    			+ '	<li class="als-item">'
	    				            		+ '<img height="200px" width = "200px" class="slide-img" src="' + data + '" style="border-radius: 10px;"/></li></div>');
	                            	createSlick();
	                            	$(window).on('resize', createSlick);
	                            }
	                    	});
	                    };
			        </script>
    
    
    
    
    <!-- 컨텐츠3 -->
    <div class="row" id="content3">
            <div class="col-xs-1"></div>
            <div class="col-xs-10">
                <table class="table  table-bordered">
                    <tr>
                        <td>개요</td>
                        <td>${basicInfo.overview }</td>
                    </tr>
                    <tr>
                        <td>메뉴</td>
                        <td>${detailInfo.treatmenu }</td>
                    </tr>
                    <tr>
                        <td>쉬는 날</td>
                        <td>${detailInfo.restdatefood }</td>
                    </tr>
                    <tr>
                        <td>좌석 수</td>
                        <td>${detailInfo.seat }</td>
                    </tr>
                    <tr>
                        <td>어린이 놀이방</td>
                        <td>${detailInfo.kidsfacility }</td>
                    </tr>
                    <tr>
                        <td>포장 가능 여부</td>
                        <td>${detailInfo.packing }</td>
                    </tr>
                    <tr>
                        <td>주차 시설</td>
                        <td>${detailInfo.parkingfood }</td>
                    </tr>
                </table>
                
            </div>
            <div class="col-xs-1"></div>
        </div>
           <!-- 지도 -->
		    <input id="mapx" type="hidden" name="mapx" value="${basicInfo.mapx }" />
			<input id="mapy" type="hidden" name="mapy" value="${basicInfo.mapy }" />
		    <!-- 지도 끝 -->
		    
		 <div class="row">
			 <div class="col-xs-1"></div>
			 <div class="col-xs-10">
	    		<div id="map" style="width:80%;height:450px;"></div>
	    	 </div>
			 <div class="col-xs-1"></div>
	    	</div>
    	
    <!-- footer -->
    <div class="row" id="footer">
        <div class="col-xs-1"></div>
        <div class="col-xs-10">
            <img id="footer-logo" src="../resources/imgs/logo/Web%20Main%20Logo1.png" />
            <br/>
            <p style="margin-top:10px;">Copyright ⓒ 2017 TripUs, All Rights Reserved.</p>
        </div>
        <div class="col-xs-1"></div>
    </div>
    
    
      
      <!-- Modal #sign-in -->
    <div class="modal fade" id="sign-in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Login TripUs</h4>
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
                                <button type="submit" class="btn btn-default">Login in with TripUs</button>
                                <button type="submit" class="btn btn-default">PW / ID 찾기</button>
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
                    <h4 class="modal-title" id="myModalLabel">Join TripUs</h4>
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
                        <button type="submit" class="btn btn-default" style="">Join Us!</button>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    
    
</body>
</html>
