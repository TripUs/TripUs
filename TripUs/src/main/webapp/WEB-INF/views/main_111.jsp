<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="resources/css/swiper.min.css">
        <link rel="stylesheet" href="resources/css/slick.css"/>
		<link rel="stylesheet" href="resources/css/slick-theme.css"/>
        <link rel="stylesheet" href="resources/css/tripus.css">
        <link rel="stylesheet" href="resources/css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="resources/css/bootstrap.min.css">
        <script src="http://code.jquery.com/jquery-1.12.4.min.js"
                  integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="
                  crossorigin="anonymous"></script>
        <script type="text/javascript" src="resources/js/slick.min.js"></script>
        <script type="text/javascript" src="resources/js/tripus.js"></script>
        <script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
        
	    <title>TripUs</title>
	    
	     <style>
 
 
    </style>

</head>

<body>


    <div class="row" id="header">
        <div class="col-md-12">

            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
                        <a class="navbar-brand" href="#">
                            <img id="logo" src="imgs/Wep%20Logo.png">
                        </a>
                    </div>

                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="#">Top 10</a></li>
                            <li><a href="#">관광지</a></li>
                            <li><a href="#">숙소</a></li>
                            <li><a href="#">식당</a></li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <button type="button" class="btn btn-default navbar-btn">Log in</button>
                            <button type="button" class="btn btn-default navbar-btn">Sign in</button>
                        </ul>
                    </div>
                </div>
            </nav>


            <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner" role="listbox">
                    <div class="carousel-item active">
                        <img class="d-block img-fluid" src="imgs/back.jpg" alt="First slide">
                        <div class="input-group input-group-lg col-xs-10">

                            <input type="text" class="form-control" placeholder="Search for...">
                            <span class="input-group-btn">
                                <button class="btn btn-default" type="button">Go!</button>
                            </span>
                        </div>
                    </div>
                </div>
            </div>
	
			<img src="..." class="rounded float-left" alt="...">







        </div>
    </div>
 	 
 	 
 	 
  <%--       <div id="main">
            <div>
                <h1>TripUs</h1>
                <input type="text" id="search-area" name="search" placeholder="어디를 가고 싶으신가요?"/>
            </div>
        	
            <div data-role='content'>
            	<c:if test="${not empty sessionScope.userInfo}">
		           	<div class="ui-corner-all custom-corners">
		           		<div class="ui-bar ui-bar-a">
		           			<h3>${sessionScope.userInfo.nicname }님의 최근 검색지</h3>
		           		</div>
		           		<div class="ui-body ui-body-a img-slider">
							<c:forEach items="${recentSearch }" var="bean">
				               	<div class="swiper-slide">
							    	<a href="detail/${bean.contentid }">
						            	<img class="slide-img" src="${bean.firstimage }"/>
						                <p class="slider-text"><strong>${bean.title }</strong></p>
					           		</a>
					           	</div>    
				            </c:forEach>
				       	</div>
					</div><br/>
		        </c:if>
	            
			    <div class="ui-corner-all custom-corners">
            		<div class="ui-bar ui-bar-a">
            			<img src="resources/imgs/icon/awards-logo.png" style="width: 23px; position: relative; top: 3px">
            			<h3>&nbsp;TripUs Top10 여행지</h3>
            		</div>
            		<div class="ui-body ui-body-a img-slider">
		            	<c:forEach items="${list }" var="bean">
		                	<div class="swiper-slide">
						    	<a href="detail/${bean.contentid }">
					            	<img class="slide-img" src="${bean.firstimage }"/>
					                <p class="slider-text"><strong>${bean.title }</strong></p>
			               		</a>
			               	</div>    
		                </c:forEach>
		        	</div>
			    </div><br/>
				
			    <div class="ui-corner-all custom-corners">
            		<div class="ui-bar ui-bar-a">
            			<img src="resources/imgs/icon/awards-logo.png" style="width: 23px; position: relative; top: 3px">
            			<h3>&nbsp;TripUs Top10 여행노트</h3>
            		</div>
            		<div class="ui-body ui-body-a img-slider">
		            	<c:forEach items="${list }" var="bean">
		                	<div class="swiper-slide">
						    	<a href="detail/${bean.contentid }">
					            	<img class="slide-img" src="${bean.firstimage }"/>
					                <p class="slider-text"><strong>${bean.title }</strong></p>
			               		</a>
			               	</div>    
		                </c:forEach>
		        	</div>
			    </div><br/>
			    
			    <div class="ui-corner-all custom-corners">
            		<div class="ui-bar ui-bar-a">
            			<h3>TripUs 추천 여행코스</h3>
            		</div>
            		<div class="ui-body ui-body-a img-slider">
		            	<c:forEach items="${list }" var="bean">
		                	<div class="swiper-slide">
						    	<a href="detail/${bean.contentid }">
					            	<img class="slide-img" src="${bean.firstimage }"/>
					                <p class="slider-text"><strong>${bean.title }</strong></p>
			               		</a>
			               	</div>    
		                </c:forEach>
		        	</div>
			    </div><br/>
            </div>
            
            <script type="text/javascript">
	            $('.img-slider').slick({
	        		dots : false,
	        		infinite : true,
	        		speed : 300,
	        		slidesToShow : 1,
	        		centerMode : true,
	        		variableWidth : false
	        	});
            </script>
            
            <div data-role='footer' data-position='fixed'>
                <div data-role='navbar'>
                    <ul>
                        <li>
                            <a data-icon='home' class="ui-btn-active ui-state-persist" href="main">Home</a>
                        </li>
                        <li>
                            <a data-icon='calendar' href="mytrip">내 여행</a>
                        </li>
                        <li>
                            <a data-icon='edit' href="tripnote">여행노트</a>
                        </li>
                        <li>
                            <a data-icon='gear' href="setting">설정</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div> --%>
    </body>
</html>