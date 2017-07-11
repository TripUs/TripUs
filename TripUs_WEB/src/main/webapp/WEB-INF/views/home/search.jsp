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
        <script src="http://code.jquery.com/jquery-1.12.4.min.js"
                  integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="
                  crossorigin="anonymous"></script>
        <script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="resources/js/pagination.js"></script>
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
        
        #search {
            padding: 0px;
        }
        
        .search_back>img {
            margin: 0px auto;
        }
        
        .search_back {
            overflow: hidden;
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
        
         
        /* 이미지 한 칸씩 슬라이드*/
        .rounded{
            width: 300px;
            height: 200px;
        }
        
        .img-sliders{
            width: 960px;
            height: 300px;
            margin: 0px auto;
            padding: 0px;
            overflow: hidden;
        }
        .img-slider-ul{
            width: 3200px;
            height: 500px;
            padding: 0px;
        }
        .img-slider-ul>li{
            width: 320px;
            float: left;
            list-style: none;
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
        
        #search_div{
            position: absolute;
            top: -60px;
        }
        
        #content_img{
            width: 100%;
            min-width: 120px;
            
        }
        
    </style>
    
    


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
    
    <!-- 컨텐츠1 -->
    <div class="row" id="content1">
        <img src="resources/imgs/back.jpg"  style="height:100px; width:100%;">
            <div class="col-xs-2"></div>
            <div class="col-xs-8">
                <div class="input-group" id="search_div">
                <form action="search" method="post" id="search_form"></form>
                    <input type="text" name="keyword" class="form-control" placeholder="Search for..." value="${keyword }" form="search_form"/>
                      <span class="input-group-btn">
                        <button class="btn btn-default" form="search_form">Go!</button>
                      </span>
                </div><!-- /input-group -->
            </div>
            <div class="col-xs-2"></div>
    </div>
    
    <!-- 컨텐츠2 -->
    <div class="row" id="content1">
        <div class="col-xs-1"></div>
        <div class="col-xs-10">
                
                <h3 style="color:#F05562;"><img src="resources/imgs/icon/search-img.png"/> 검색결과</h3>
	                <table class="table">
	                <tbody id="myTable">
						<c:forEach items="${keywordList }" var="bean">
							<tr> 
								<td style="width:20%;">
									<img src="${bean.firstimage }" id="content_img">
								</td> 
								<td style="padding:0px;">
		                            <a href="detail/${bean.contentid }" style="color:black;"><p class="h2"><strong>${bean.title }</strong></p></a>
		                            <small class="text-muted">${bean.addr1 }</small>
		                        </td>        
								<td style="text-align: center;">
									<img src="resources/imgs/icon/like2.png"/ style="width:20px;"> 10</td>   
	                		</tr>
	                		
	                	</c:forEach>
	                	</tbody>
	                </table>
        </div>
        
        <div class="col-md-12 center text-center">
                      <span class="left" id="total_reg"></span>
                           <ul class="pagination pager" id="myPager"></ul>
                         </div>
        <div class="col-xs-1"></div>
    </div>
    
    <script type="text/javascript">
                        $(document).ready(function(){
                          $('#myTable').pageMe({
                            pagerSelector:'#myPager',
                            activeColor: 'green',
                            prevText:'Prev',
                            nextText:'Next',
                            showPrevNext:true,
                            hidePageNumbers:false,
                            perPage:5
                          });
         
                        });
               </script>

        <div class="row" id="footer">
            <div class="col-xs-1"></div>
            <div class="col-xs-10">

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