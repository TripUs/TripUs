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
        
	    <title>TripUs</title>
    <style>
        body {
            padding-top: 50px;
        }
        
        .continer-fluid-2{
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
        
    </style>
    
    
    
     <script type="text/javascript">
     
     <!--이미지 슬라이드--> 
       var mleft;
       var obj;
         $(document).ready(function(){
        	 mleft=new Array();
             obj = new Array();
             for(var i =0;i<$('.img-sliders').length;i++){
                 obj[i]=$('.img-sliders>ul').eq(i).html();
                 mleft[i] = 0;
             }

                $('.previous>a').click(function(event){
                    event.preventDefault();
                    var index = $(".previous>a").index(this);
                     console.log(index);
                    if(mleft[index]==0){
                        mleft[index]=(-320*9);
                        $('.img-slider-ul').eq(index).css('width','6400px').append(obj[index]);
                    }else if(mleft[index]==-320*8){
                        $('.img-slider-ul').eq(index).css('width','3200px').children('li:lt(10)').remove();
                        mleft[index]=-(320*6)-320;
                    }else{
                        mleft[index]+=320;
                    }
                    console.log(mleft[index])
                    $('.img-slider-ul').eq(index).css('margin-left',mleft[index]);
                });

                $('.next>a').click(function(event){
                    event.preventDefault();
                    var index = $(".next>a").index(this);
                    console.log(index);
                    mleft[index]-=320;
                    if(mleft[index]==-320*8){
                         $('.img-slider-ul').eq(index).css('width','6400px').append(obj[index]);
                    }else if(mleft[index]==-320*10){
                        $('.img-slider-ul').eq(index).css('width','3200px').children('li:lt(10)').remove();
                        mleft[index]=0;
                    }
                    console.log(mleft[index])
                    $('.img-slider-ul').eq(index).css('margin-left',mleft[index]);
                });
                
                <!--이미지 슬라이드 end--> 
                
                <!--my page 이미지 -->
                $('#my-icon').mouseover(function(){
                    $(this).attr("src", "resources/imgs/user2.png");
                });
                $('#my-icon').mouseout(function(){
                    $(this).attr("src", "resources/imgs/user1.png");
                });
                
                <!--my page 이미지 end -->
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
                <a class="navbar-brand" href="#" id="tohome">
                    <img src="resources/imgs/logo/Wep Logo.png" id="logo">
                </a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="#">Top 10</a></li>
                            <li><a href="#">여행노트</a></li>
                            <li><a href="#">내 여행</a></li>
                           
                        </ul>
            			 <div class="nav navbar-nav navbar-right">
                           <a><img id="my-icon" src="resources/imgs/user1.png"></a>
                           <button class="btn btn-default navbar-btn sign-in-btn" data-toggle="modal" data-target="#sign-in">sign-in</button>
             			   <button class="btn btn-default navbar-btn sign-up-btn" data-toggle="modal" data-target="#sign-up">sign-up</button>
                        </div>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->

    </nav>

    <div class="container-fluid continer-fluid-2">
        <div class="row" id="search">
            <div class="col-xs-12 search_back">
                <img src="resources/imgs/back.jpg" alt="">
                <div class="input-group input-group-lg col-xs-10">
                    <input type="text" class="form-control" placeholder="Search for...">
                    <span class="input-group-btn">
                        <button class="btn btn-default" type="button">Go!</button>
                    </span>
                </div>
            </div>
        </div>
        
        <!-- top10 여행지 -->
        <div class="row" id="content1">
            <div class="col-xs-1"></div>
            <div class="col-xs-10">
                <h3><img class="mini-logo" src="resources/imgs/logo/Awards Logo.png"> Top10 여행지 <span class="label label-danger">HOT</span> </h3>
                <nav aria-label="...">
                    <ul class="pager">
                        <li class="previous"><a href="#"><span aria-hidden="true">&larr;</span> PREV</a>
                        </li>
                        <li class="next" ><a href="#">NEXT <span aria-hidden="true">&rarr;</span></a></li>
                    </ul>
                </nav>
                
                <div class="img-sliders">
                    <ul class="img-slider-ul">
                    <c:forEach items="${list }" var="bean">
                        <li><a href="detail/${bean.contentid }"><img src="${bean.firstimage }" class="rounded" alt=""><br/>
                        <p><strong>${bean.title }</strong></p>
                        </a>
                        </li>
                    </c:forEach>
                    </ul>
                </div> 

            </div>
            <div class="col-xs-1"></div>
        </div>
        <!-- top 10 여행지 end -->
        
 
        <!-- top10 여행노트 -->
        <div class="row" id="content2">
            <div class="col-xs-1"></div>
            <div class="col-xs-10">
                <h3><img class="mini-logo" src="resources/imgs/logo/Awards Logo.png"> Top10 여행노트 <span class="label label-danger">HOT</span> </h3>
                <nav aria-label="...">
                    <ul class="pager">
                        <li class="previous"><a href="#"><span aria-hidden="true">&larr;</span> PREV</a>
                        </li>
                        <li class="next"><a href="#">NEXT <span aria-hidden="true">&rarr;</span></a></li>
                    </ul>
                </nav>
                
               <div class="img-sliders">
                    <ul class="img-slider-ul">
                    <c:forEach items="${list }" var="bean">
                        <li><a href="detail/${bean.contentid }"><img src="${bean.firstimage }" class="rounded" alt=""><br/>
                        <p><strong>${bean.title }</strong></p>
                        </a>
                        </li>
                    </c:forEach>
                    </ul>
                </div> 


            </div>
            <div class="col-xs-1"></div>
        </div>
        <!-- top 10 여행노트 end -->
        
        
        
        <!-- 추천 여행 코스 -->
        <div class="row" id="content3">
            <div class="col-xs-1"></div>
            <div class="col-xs-10">
                <h3><img class="mini-logo" src="resources/imgs/logo/Awards Logo.png"> 추천여행 코스 <span class="label label-danger">HOT</span> </h3>
                <nav aria-label="...">
                    <ul class="pager">
                        <li class="previous"><a href="#"><span aria-hidden="true">&larr;</span> PREV</a>
                        </li>
                        <li class="next"><a href="#">NEXT <span aria-hidden="true">&rarr;</span></a></li>
                    </ul>
                </nav>
                
                <div class="img-sliders">
                    <ul class="img-slider-ul">
                    <c:forEach items="${list }" var="bean">
                        <li><a href="detail/${bean.contentid }"><img src="${bean.firstimage }" class="rounded" alt=""><br/>
                        <p><strong>${bean.title }</strong></p>
                        </a>
                        </li>
                    </c:forEach>
                    </ul>
                </div> 


            </div>
            <div class="col-xs-1"></div>
        </div>
        <!-- 추천여행코스 end --> 

        
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
                        <form><!--form은 여기--><!--form은 여기--><!--form은 여기--><!--form은 여기-->
                            <div class="form-group" class="login_label">
                                <label for="exampleInputEmail1">Email address</label>
                                <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email">
                            </div>
                            <div class="form-group" class="login_label">
                                <label for="exampleInputPassword1">Password</label>
                                <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                            </div>

                            <div class="login_buttons">
                                <button type="submit" class="btn btn-default">TripUs Login</button>
                                <button type="submit" class="btn btn-default">PW/ID 찾기</button>
                                <a href="#"><img src="resources/imgs/icon/kakao_login_en.png" alt=""></a>
                                <a href="#"><img src="resources/imgs/icon/google_login.jpg" alt=""></a>
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
                        <form><!--form은 여기--><!--form은 여기--><!--form은 여기--><!--form은 여기-->
                    </div>
                    <div class="form-group" class="login_label">
                        <label for="exampleInputPassword1">ID</label>
                        <input type="text" class="form-control" id="exampleInputPassword1" placeholder="ID" name="id">
                    </div>
                    <div class="form-group" class="login_label">
                        <label for="exampleInputPassword1">Password</label>
                        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" name="password">
                    </div>
                    <div class="form-group" class="login_label">
                        <label for="exampleInputPassword1">name</label>
                        <input type="text" class="form-control" id="exampleInputPassword1" placeholder="name" name="name">
                    </div>

                    <div class="form-group" class="login_label">
                        <label for="exampleInputPassword1">E-mail</label>
                        <input type="email" class="form-control" id="exampleInputPassword1" placeholder="email" name="email">
                    </div>
                    <div class="form-group" class="login_label">
                        <label for="exampleInputPassword1">생년월일</label>
                        <input type="date" class="form-control" id="exampleInputPassword1" placeholder="YYYY/MM/DD" name="birthday">
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