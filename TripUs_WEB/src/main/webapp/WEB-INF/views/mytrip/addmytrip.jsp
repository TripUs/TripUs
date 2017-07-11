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
	    
	    #addtrip > div{
	    	width:60%;
	    	margin:0px auto;
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
			        $("#send").click(function() {
			        	
						if($("#title").val()==''){
							alert("title을 채워주세요");
							return false;
						}
						if($("#startdate").val()==''){
							alert("startdate을 채워주세요");
							return false;
						}
						if($("#enddate").val()==''){
							alert("enddate을 채워주세요");
							return false;
						}
						if($(":radio[name='thema']:checked").val()==null){
							alert("체크박스를 채워주세요");
							return false;
						}
					})
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
           
    <div style="text-align:center;"><h2>새로운 일정추가</h2></div>
    
    <div>
        <div class="row">
           	<div class="col-xs-1"></div>
            <div class="col-xs-10">
                <div id="addtrip">
                    <div>
				    	<form action="addmytrip" method="post">
				                <div class="form-group">
				                    <label for="title">여행제목</label>
				                    <input type="text" class="form-control" id="title" name="title" placeholder="title">
				
				                </div>
				                <div class="form-group">
				                    <label for="startdate">여행시작일</label>
				                    <input type="date" class="form-control" id="startdate"  name="startdate" placeholder="여행시작일">
				                </div>
				                <div class="form-group">
				                    <label for="enddate">여행종료일</label>
				                    <input type="date" class="form-control" id="enddate" name="enddate" placeholder="여행종료일">
				                </div>
				            
				                <label class="radio-inline">
				                    <input type="radio" name="thema" id="thema1" value="나홀로"> 나홀로
				                </label>
				                <label class="radio-inline">
				                    <input type="radio" name="thema" id="thema2" value="친구와 함께"> 친구와 함께
				                </label>
				                <label class="radio-inline">
				                    <input type="radio" name="thema" id="thema3" value="가족과 함께"> 가족과 함께
				                </label>
				                <label class="radio-inline">
				                    <input type="radio" name="thema" id="thema4" value="커플"> 커플
				                </label>
				                <div class="form-group" >
				                    <button id="send" type="submit" class="btn btn-default" style="margin:auto;margin-top:15px;width:100%;">전송</button>
				
				                </div>
				            </form>
				    </div>
                </div>
            </div>
            <div class="col-xs-1"></div>
        </div>
     </div>
    <div class="row" id="footer">
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
                        <form action="../login" method="post"><!--form은 여기--><!--form은 여기--><!--form은 여기--><!--form은 여기-->
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
                     <form action="../signin" method="post"><!--form은 여기--><!--form은 여기--><!--form은 여기--><!--form은 여기-->
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