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
        <script src="http://code.jquery.com/jquery-1.12.4.min.js"
                  integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="
                  crossorigin="anonymous"></script>
        <script type="text/javascript" src="../resources/js/bootstrap.min.js"></script>
        
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
	            background-color: rgb(234, 234, 234);
	            height: 250px;
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
    
    <script type="text/javascript">
        $(document).ready(function(){
           $('#like-img').click(function(){
                    $(this).attr("src", "../resources/imgs/like2.png");
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
                <a class="navbar-brand" href="../main" id="tohome">
                    <img src="../resources/imgs/logo/Wep Logo.png" id="logo">
                </a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li><a href="../main">Top 10</a></li>
                            <li><a href="#">여행노트</a></li>
                            <li><a href="#">내 여행</a></li>
                           
                        </ul>
            			 <div class="nav navbar-nav navbar-right">
                           <a><img id="my-icon" src="../resources/imgs/user1.png"></a>
                           <button class="btn btn-default navbar-btn sign-in-btn" data-toggle="modal" data-target="#sign-in">sign-in</button>
             			   <button class="btn btn-default navbar-btn sign-up-btn" data-toggle="modal" data-target="#sign-up">sign-up</button>
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
                        <td>
                        	<a class="text-muted" href="../addmytrip_list/${basicInfo.contentid }">
	                            <img id="calendar-img" src="../resources/imgs/calendar.png" class="img-responsive"/>
	                            <p id="calendar-add">내 여행지 추가</p>
                        	</a>
                        </td>
                        <td> 
                        	<a class="text-danger">
	                            <img id="like-img" src="../resources/imgs/like1.png" class="img-responsive"/>
	                            <p id="like-add">1000</p>
                        	</a>
                        </td>
                    </tr>
                </table>

            </div>
            <div class="col-xs-1"></div>
        </div>

    
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
                            ${detailInfo.infocenter }</td>
                        </tr>
                        <tr>
                            <td>홈페이지</td>
                            <td>${basicInfo.homepage }</td>
                        </tr>
                        <tr>
                            <td>세계 문화 유산</td>
                            <td>${detailInfo.heritage1 }</td>
                        </tr>
                        <tr>
                            <td>자연 유산</td>
                            <td>${detailInfo.heritage2 }</td>
                        </tr>
						<tr>
                            <td>기록 유산 유무</td>
                            <td>${detailInfo.heritage3 }</td>
                        </tr>
                        <tr>
                            <td>체험 가능 연령</td>
                            <td>${detailInfo.expagerange }</td>
                        </tr>
                        <tr>
                            <td>이용 시간</td>
                            <td>${detailInfo.usetime }</td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="col-xs-1"></div>
        </div>
    
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
                        <td>수용 인원</td>
                        <td>${detailInfo.accomcount }</td>
                    </tr>
                    <tr>
                        <td>쉬는 날</td>
                        <td>${detailInfo.restdate }</td>
                    </tr>
                    <tr>
                        <td>유모차 대여 여부</td>
                        <td>${detailInfo.chkbabycarriage }</td>
                    </tr>
                    <tr>
                        <td>애완 동물 가능 여부</td>
                        <td>${detailInfo.chkpet }</td>
                    </tr>
                    <tr>
                        <td>이용 시기</td>
                        <td>${detailInfo.useseason }</td>
                    </tr>
                    <tr>
                        <td>주차 시설</td>
                        <td>${detailInfo.parking }</td>
                    </tr>
                    
                </table>
                
                <!--지금은 이미지지만 여기에 맵을 넣고싶습니당...-->
                <img id="map" src="imgs/10.jpg" style="width:100%">
                
              
            </div>
            <div class="col-xs-1"></div>
        </div>
    
    <!-- 푸터 -->
     <div class="row" id="footer">
            <div class="col-xs-1"></div>
            <div class="col-xs-10">
                <br/>
                푸터내용입니당<br/>
                푸터내용입니당<br/>
                푸터내용입니당<br/>
                푸터내용입니당<br/>
                푸터내용입니당<br/>
            </div>
            <div class="col-xs-1"></div>
        </div>
    
    
    
</body>
</html>
