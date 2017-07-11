<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
        <!--my page 이미지 -->
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
	         <div style="background-color: #F05562; color: white;border-radius:8px;padding:1px">
			        <h1>${noteInfo.usernicname }님의 여행기</h1>
			    </div>
			
			    <div style="padding: 0px 10px;border:1px solid #e9e9e9;">
			        <div style="background-color: #e9e9e9; padding: 5px 20px; margin-top: 10px; margin-bottom: 5px; border-radius: 10px;">
			            <h3>${noteInfo.title }</h3>
			            <table>
			                <tr>
			                    <td width="35px"><img src="${noteInfo.userprofile }" style="width: 35px; height: 35px;" /></td>
			                    <td width="30%" style="padding-left: 10px;">
			                        <strong>${noteInfo.usernicname }</strong><br/>
			
			                        <jsp:useBean id="now" class="java.util.Date" />
			                        <fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="today" />
			
			                        <c:if test="${today eq noteInfo.reporting_date }">
			                            <small>${noteInfo.reporting_time }</small>
			                            <img src="../resources/imgs/icon/newicon.png" style="width: 20px; height: 20px; position: relative; top: 5px;" />
			                        </c:if>
			                        <c:if test="${today ne noteInfo.reporting_date }">
			                            <small>${noteInfo.reporting_date }</small>
			                        </c:if>
			                    </td>
			                    <td>
			                        <div data-role="controlgroup" data-type="horizontal" style="position:relative; top:-15px; left: 20px; height: 10px;">
			                            <c:if test="${noteLike eq 1 }">
			                                <a style="width: 45px; height: 10px; line-height: 10px;" id="notelikebtn" data-role="button" href="#"><span style="color: red;font-size:25px;">♥</span> ${noteInfo.likeflag }</a>
			                            </c:if>
			                            <c:if test="${noteLike ne 1 }">
			                                <a style="width: 45px; height: 10px; line-height: 10px;font-size:25px;" id="notelikebtn" data-role="button" href="#">♥ ${noteInfo.likeflag }</a>
			                            </c:if>
			                            <button class="btn " style="width:105px; height: 30px; line-height: 5px;">팔로우</button>
			                        </div>
			                    </td>
			                </tr>
			            </table>
			        </div>
			
			        <input type="hidden" id="likeCnt" value="${noteInfo.likeflag }" />
			        <input type="hidden" id="noteidx" value="${noteInfo.idx }" />
			        <input type="hidden" id="noteLike" value="${noteLike }" />
			        <input type="hidden" id="userInfo" value="${sessionScope.userInfo.id }">
			
			        <script type="text/javascript">
			            var idx = $('#noteidx').val();
			            var notelike = $('#noteLike').val();
			            var likeCnt = $('#likeCnt').val();
			            var userInfo = $('#userInfo').val();
			
			            $('#notelikebtn').click(function() {
			                if (userInfo != '') {
			                    $.ajax({
			                        url: "../noteLike",
			                        type: 'POST',
			                        data: {
			                            idx: idx,
			                            likeflag: notelike,
			                            likeCnt: likeCnt
			                        },
			                        success: function(data) {
			                            notelike = data;
			                            if (notelike == 1) {
			                                likeCnt++;
			                                $('#notelikebtn').html('<span style="color: red;">♥</span> ' + likeCnt);
			                            } else {
			                                likeCnt--;
			                                $('#notelikebtn').html('♥ ' + likeCnt);
			                            }
			                        },
			                        error: function() {
			                            alert('AJAX 통신 실패');
			                        }
			                    });
			                } else {
			                    alert('로그인 후 사용하실 수 있습니다.');
			                }
			            });
			        </script>
			
			        <!-- Day Content -->
			        <c:forEach items="${contentInfo }" var="bean" varStatus="n">
			            <div class="ui-corner-all custom-corners">
			                <div class="ui-bar ui-bar-a" style="background: white; border: none;">
			                    <div style="box-sizing: border-box; padding-bottom: 5px; padding-left: 2px; border-bottom: 3px solid #e9e9e9;">
			                        <img src="../resources/imgs/icon/tripcon2.png" style="width: 30px; height: 23px; position: relative; top: 5px;" />
			                        <h3><span style="color: #F05562;">Day${bean.daynum }</span> - ${bean.title }</h3>
			                    </div>
			                </div>
			                <div class="ui-body ui-body-a" style="border: none;">
			                    <img src="${imgInfo[n.index].imgname }" width="40%" />
			                    <p>${bean.content }</p>
			                </div>
			            </div>
			        </c:forEach>
			
			        
			        <form action="../notecomment/${noteInfo.idx }" method="post">
			            <textarea name="comment" class="form-control" id="tripnote_reply"></textarea>
			            <button class="btn btn-default" style="width:100%">전송</button>
			        </form>
	        
	        
	        </div>
	        <div class="col-xs-1"></div>
         	         
         </div>
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