<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
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
        <title>Document</title>
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
        background-color: rgb(234, 234, 234);
        height: 250px;
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
    #my_tripnote{
            padding:6px;
            border: 3px solid rgb(234,78,96);
            border-radius: 9px;
        }
        label[for=title] {
            text-align: center;
        }
        #my_trip_ta {
            width:80%;
            height: 100px;
        }
        #day_title{
            width:80%;
        }
	</style>
	<script type="text/javascript">
    $(document).ready(function() {
        $('#my-icon').mouseover(function() {
            $(this).attr("src", "../resources/imgs/user2.png");
        });
        $('#my-icon').mouseout(function() {
            $(this).attr("src", "../resources/imgs/user1.png");
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
      <div class="container-fluid continer-fluid-2">
         <div class="row">
         	<div class="col-xs-1"></div>
         	<div class="col-xs-10">
           <div id="my_tripnote">

        <form method="post" enctype="multipart/form-data" data-ajax="false">
            <div class="form-group">
                <label for="title"><h3>여행 제목</h3></label>
                <input id="title" name="title" type="text" value="${mytrip.title }" placeholder="여행 제목을 입력하세요"  class="form-control" /><br/>
                <input type="hidden" name="daynum" value="${fn:length(tripList)} " />
                <c:forEach items="${tripList }" var="tripday">

                    <div style="border: #e9e9e9 2px solid; border-radius: 5px; margin-bottom: 10px; padding: 0px 10px;">
                        <div style="">
                            <h4>Day ${tripday.daynum }<small>&nbsp; (${tripday.tripdate })</small></h4>
                        </div>
                        <label>소제목</label>
                        <input type="text" id="day_title" name="daytitle_${tripday.daynum }" placeholder="여행 소제목을 입력해보세요." class="form-control"  />
                        <c:forEach items="${tripDetail }" var="detail" varStatus="n">
                            <c:if test="${tripday.tripdate eq detail.tripdate }">

                                <p>${detail.content_title }</p>

                            </c:if>
                        </c:forEach>
                        <textarea name="content_${tripday.daynum }" id="my_trip_ta"></textarea>
                        <div style="">
                            <input type="file" name="file_${tripday.daynum }">
                            <p><a href="#" class="addimg(${tripday.daynum })">이미지 추가</a></p>
                        </div>
                    </div>

                </c:forEach>

            </div>
            <button class="btn btn-default" style="background-color: #F05562; color: white; border-radius: 5px;">여행노트 등록</button>
        </form>

    </div>
</div>
         	<div class="col-xs-1"></div>
         
         </div>
         <div class="row" id="footer">
            <div class="col-xs-1"></div>
            <div class="col-xs-10">
               
            </div>
            <div class="col-xs-1"></div>
        </div>
         
         </div>
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