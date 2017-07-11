<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="resources/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <script src="http://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>
    <script type="text/javascript" src="resources/js/bootstrap.min.js"></script>

    <title>TripUs</title>
</head>
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
    
    .input-group-lg {
        position: absolute;
        top: 200px;
        left: 8%
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
    
    #overlay {
	    position: fixed; 
	    width: 100%;
	    height: 100%;
	    top: 0;
	    left: 0;
	    right: 0;
	    bottom: 0;
	    background-color: rgba(0,0,0,0.5);
	    z-index: 2;
	    cursor: pointer;
	}
	#text,
	#text2 {
	    position: absolute;
	    top: 50%;
	    left: 50%;
	    font-size: 16px;
	    color: white;
	    transform: translate(-50%,-50%);
	    -ms-transform: translate(-50%,-50%);
	}
	#text2 {
		
			top: 55%;
	}
	#text2 >a{
		color: blue;
	}
	.scheduler {
        height: 80px;
    }
    
    .blank {
        height: 500px;
    }
    .graybar {
        position: absolute;
        top:50%;
        left: 35%;
        background-color: rgba(234,234,234,0.6);
        width : 300px;
        height: 20px;
        border-radius: 10px;
        transform: translate(-50%,-50%)
    }
    .graybar:first-child{
        transform: rotate(45deg);
    }
    .graybar:last-child{
        transform: rotate(-45deg);
    }

    
    #top_back {
	  	width:100%;
	  	height:80px;
	  	background-color: rgb(240, 85, 98);
	  	margin-bottom: 30px;
	  	text-align: center;
	  	padding-top: 30px;
    }
    #top_back > div{
    	margin:0px auto;
    	width:180px;
    	height:30px;
    	background-color: rgb(248,122, 76);
    	padding:3px;
    	box-shadow: 1px 3px 1px rgba(0,0,0,0.3);
    	cursor: pointer;
    }
     #top_back > div>a {
     	text-decoration: none;
     	font-size:15px;     	
     	color:white;
     }
    .list_img {
        width: 100px;
    }
    .listview {
        position:relative; 
        background-color: rgba(234, 234, 234,0.8);
        box-shadow: 1px 3px 1px rgba(0,0,0,0.3);
        padding:3px;
    }
    .listview > a {
        position: absolute;
        text-decoration: none;        
    }
    .list_title {
        left: 120px;
        font-size: 25px;
    }
    .list_thema {
        top :50px;
        left: 120px;
    }
    .list_start{
        top :50px;
        left: 200px;
    }
    .list_end{
        top :50px;
        left: 290px;
    }
    .list_people{
        top :50px;
        left: 400px;
    }

</style>



<script type="text/javascript">
    $(document).ready(function() {
        $('#my-icon').mouseover(function() {
            $(this).attr("src", "resources/imgs/user2.png");
        });
        $('#my-icon').mouseout(function() {
            $(this).attr("src", "resources/imgs/user1.png");
        });
    });

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
                    <img src="resources/imgs/logo/Wep Logo.png" id="logo">
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
	                           <a href="/tripus/myPage"><img id="my-icon" src="resources/imgs/user1.png"></a>
	                           <button id = "login" class="btn btn-default navbar-btn sign-in-btn" data-toggle="modal" data-target="#sign-in" style = " background-color: #F05562; color: white; border-radius: 10px;">Login</button>
	                           <button id ="join" class="btn btn-default navbar-btn sign-up-btn" data-toggle="modal" data-target="#sign-up" style = "background-color: #F05562; color: white; border-radius: 10px; margin-left:5px">Join</button>
	                           <input type="text" id="user_login" style="width:145px; border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px;" value="${sessionScope.userInfo.name }님! 반갑습니다!" readonly/>
	                           <a href="logout" id ="logout" class="btn btn-default navbar-btn log-out-btn" style = "margin-right:5px; background-color: #F05562; color: white; border-radius: 10px; ">log-out</a>         
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
    <div class="container-fluid continer-fluid-2">
        <div class="row">
           
            <div class="col-xs-12 imyourplanner">
                <div>
                  </div>   <c:choose>
		                <c:when test="${not empty sessionScope.userInfo}">
		                	<!-- 로그인이 되어 있는 경우 -->
		                	<c:choose>
				                <c:when test="${not empty tripList}">
				                	<!-- 여행 목록이 있는 경우 -->
				                	    <div id="top_back"><div><a href="addmytrip">여행일정 추가하기 </a></div></div> 
				                	   
						                   
						            	<c:forEach items="${tripList }" var="bean">
						            	<div class="row">
						                    <div class="col-xs-1"></div>
						                    <div class="col-xs-10">                      
						                            <div class="listview">                 
						                                    <img src="${bean.coverimg }" class="list_img">
						                                    <a href="mytripdetail/${bean.code }" class="list_title">${bean.title }</a>    
						                                    <a class="list_thema">${bean.thema}</a>
						                                    <a class="list_start">${bean.startdate } ~ ${bean.enddate }</a>						                                   
						                                    <a class="list_people">참여 ${bean.num }명</a>
						                            </div>						                     
						                    </div>
						                    <div class="col-xs-1"></div>
						                    </div>
										</c:forEach>
				                </c:when>				                
				                <c:otherwise>
				                	<!-- 여행 목록이 없는 경우 -->
				                	<div id="top_back"><div><a href="addmytrip">여행일정 만들기 </a></div></div> 
				                	
									<h4>${sessionScope.userInfo.nicname }님의 여행목록이 없습니다</h4>
				
				                    <div class="col-xs-1"></div>
				                    <div class="col-xs-10 blank">
				                        <div class="graybar"></div>
				                        <div class="graybar"></div>
				                    </div>
				                    <div class="col-xs-1"></div>
				                </c:otherwise>
			                </c:choose>
		                </c:when>		                
		                <c:otherwise>
		                	<!-- 로그인이 되어 있지 않은 경우 -->
		                	<div id="overlay" >
		                		<p id="text">내 여행 탭을 사용하기 위해선 로그인이 필요합니다</p>
		                		<div id="text2"><a data-toggle="modal" data-target="#sign-in">로그인하기</a> <a data-toggle="modal" data-target="#sign-up">회원가입</a></div>
		                		
							</div>
	              		</c:otherwise>
	              </c:choose>
                </div>
            </div>
        </div>
        <!-- footer -->
    <div class="row" id="footer" style="margin-top:350px;">
        <div class="col-xs-1"></div>
        <div class="col-xs-10">
            <img id="footer-logo" src="resources/imgs/logo/Web%20Main%20Logo1.png"/>
            <br/>
            <p style="margin-top:10px;">Copyright ⓒ 2017 TripUs, All Rights Reserved.</p>
        </div>
        <div class="col-xs-1"></div>
    </div>

 
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
                    <div class="login_topimg"><img src="resources/imgs/logo/Web%20Main%20Logo1.png" alt=""></div>
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
                                <a href="${kakao_url }"><img src="resources/imgs/icon/kakao_login_en.png" alt=""></a>
                                <a href="${google_url}"><img src="resources/imgs/icon/google_login.jpg" alt=""></a>
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
                    <div class="login_topimg"><img src="resources/imgs/logo/Web%20Main%20Logo1.png" alt=""></div>
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
