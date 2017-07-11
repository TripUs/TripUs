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
    .mytrip-friend{
    	padding:30px;
    }
	.card {
		display:inline-block;
		background-color: rgb(79,93,115);
		margin:6px;
		width:130px;
		box-shadow: 3px 2px 5px rgba(0,0,0,0.4);		
		border-radius:3px;
		position:relative;
	}
	.card_img {
		width:100%;
	} 
	.card_name {
		text-align: center;
	}
	.card_img > img{
		margin:0px auto;
	}
	.card_ask {
		position:absolute;
		background-color:rgba(0,0,0,0.3);
		top:0px;
		width:100%;
		text-align: center;
		color:white;
		height:100%;
		padding-top:20px;
		display: none;
	}
	.guide_label1 {
		background-color: rgb(221,221,221);
		width:100%;
		border-bottom: 3px solid rgba(100,100,100,0.6);
	}
	.guide_label2 {
		background-color: rgb(221,221,221);
		width:100%;
		border-bottom: 3px solid rgba(100,100,100,0.6);
	}
	.input-group {
		margin-top:10px;
		margin-bottom:10px;
		height: 30px;
		
	}
	.guide_label3 {
		background-color: rgb(221,221,221);
		width:100%;
		height: 30px;
		border-bottom: 3px solid rgba(100,100,100,0.6);
	}
	.guide_words {
		color:rgb(250,250,250);
		font-size: 18px;
		font-family: sans-serif;
	}
	.waiting_list,
	.search_list,
	.friend_list {
	}
	.call {
		color:color:rgb(250,250,250);
	}
	
</style>

<script type="text/javascript">
    $(document).ready(function() {
        <!--my page 이미지 -->
        $('#my-icon').mouseover(function() {
            $(this).attr("src", "resources/imgs/user2.png");
        });
        $('#my-icon').mouseout(function() {
            $(this).attr("src", "resources/imgs/user1.png");
        });

        <!--my page 이미지 end -->
        $(".card").click(function() {
			$(this).find(".card_ask").fadeToggle();
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

    <div class="container-fluid continer-fluid-2">
        <div class="row">  
        	<div class="col-xs-12 guide_label1">
        		<p class="guide_words">친구요청 <a href="friendlist" class="call"> 불러오기</a></p>
        	</div>
        	<div class="col-xs-1"></div>  
        	<div class="col-xs-10 waiting_list">
        		<c:forEach items="${waitList }" var="bean">
        			<div class="card">
        				<div class="card_img"><img src="${bean.friendprofile }"/></div>
        				<div class="card_name"><p>${bean.friendnicname }</p>
	        				<c:if test="${bean.flag eq 1 }"><p> -친구 요청</p></c:if>
					        <c:if test="${bean.flag eq 0 }"><p> - 수락 대기중..</p></c:if>
				        </div>
        				<div class="card_ask">
        					<p>어떻게 하시겠습니까?</p>
        					<p><c:if test="${bean.flag eq 1 }">
				                		<a href="updatefriend/${bean.friendid }">친구 추가</a>
			                		</c:if>
			                		<c:if test="${bean.flag eq 0 }">
				                		<a href="deletefriend/${bean.friendid }" >친구 삭제</a>
			                		</c:if>
        					 <a>취소</a></p>
        				</div>	
       				</div>
        		</c:forEach>
        	</div>  
        	<div class="col-xs-1"></div>  
        	<div class="col-xs-12 guide_label2">
        		<p class="guide_words">친구검색 <a style="text-align:right" data-toggle="modal" data-target="#mytrip-invite"> 친구 초대하기</a></p>
        		
	        	<form action="searchfriend" method="post">	
	        		<div class="input-group">	        			
				      <input type="text" class="form-control" name="friendname" placeholder="친구이름을 입력해주세요">
				      <span class="input-group-btn">
				        <button class="btn btn-default">Go!</button>
				      </span>
				    </div><!-- /input-group -->
			    </form>
        	</div>  
        	<div class="col-xs-1"></div>  
        	<div class="col-xs-10 search_list">
        	
        		<div class="mytrip-friend">
            		<c:forEach items="${f_list }" var="bean">
            			<div class="card">
            				<div class="card_img"><img src="${bean.profile }"/></div>
            				<div class="card_name"><p>${bean.nicname }</p></div>
            				<div class="card_ask">
            					<p>추가하시겠습니까</p>
            					<p><a href="addfriend/${bean.id }">확인</a> <a>취소</a></p>
            				</div>	
           				</div>
            		</c:forEach>	            				            		
	            </div>
	            
        	</div>  
        	<div class="col-xs-1"></div> 
        	
        	<div class="col-xs-12 guide_label3"><p class="guide_words">친구목록&nbsp;<a href="friendlist" class="call">불러오기</a></p></div>   
        	<div class="col-xs-1"></div>  
  	        <div class="col-xs-10 friend_list">              
                  	     		
            	<div class="mytrip-friend">
            		<c:forEach items="${friendList }" var="bean">
            			<div class="card">
            				<div class="card_img"><img src="${bean.friendprofile }"/></div>
            				<div class="card_name"><p>${bean.friendnicname }</p></div>
            				<div class="card_ask">
            					<p>일정을 공유하시겠습니까</p>
            					
            							<p><a href="invitefriend/${bean.friendid }">확인</a> <a>취소</a></p>
            						
            						<p><a href="mytrip">일정만들기</a></p>
            						
            					
            				</div>	
           				</div>
            		</c:forEach>	            				            		
	            </div>
	            	
	            
	            <div class="modal fade" id="mytrip-invite" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				  <div class="modal-dialog" role="document">
				    <div class="modal-content">
				      <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				        <h4 class="modal-title" id="myModalLabel">친구초대</h4>
				      </div>
				      <div class="modal-body">
				        <form action="sendmail"  class="input-group">
	            		
	            	<input  type="email" id="email" name="address"  class="form-control" placeholder="example@example.com"/>
	            			<span class="input-group-btn">
	            		<button class="btn btn-default">발송</button>	
	            			</span>   		
	            	</form>
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				      </div>
				    </div>
				  </div>
				</div>
	            <!-- --
	            <div id="mytrip-invite" style="padding: 30px 10px;">
	            	<form action="sendmail"  class="input-group">
	            		
	            	<input  type="email" id="email" name="address"  class="form-control" placeholder="example@example.com"/>
	            			<span class="input-group-btn">
	            		<button class="btn btn-default">발송</button>	
	            			</span>   		
	            	</form>
	            </div>
           -->
            </div><!-- col-xs-10 -->
            <div class="col-xs-1"></div>  
        </div>
        <div class="row" id="footer" style="margin-top:350px;">
        <div class="col-xs-1"></div>
        <div class="col-xs-10">
            <img id="footer-logo" src="resources/imgs/logo/Web%20Main%20Logo1.png"/>
            <br/>
            <p style="margin-top:10px;">Copyright ⓒ 2017 TripUs, All Rights Reserved.</p>
        </div>
        <div class="col-xs-1"></div>
    </div>

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
