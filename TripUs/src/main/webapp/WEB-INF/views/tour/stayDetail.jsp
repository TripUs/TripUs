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
                            ${detailInfo.infocenterlodging }
                            </td>
                        </tr>
                        <tr>
                            <td>홈페이지</td>
                            <td>${basicInfo.homepage }</td>
                        </tr>
                        <tr>
                            <td>My Trip Code</td>
                            <td>${sessionScope.mytripCode }</td>
                        </tr>
                        <tr>
                            <td>수용 가능 인원</td>
                            <td>${detailInfo.accomcountlodging }</td>
                        </tr>
						<tr>
                            <td>객실 유형</td>
                            <td>${detailInfo.roomtype }</td>
                        </tr>
                        <tr>
                            <td>객실 수</td>
                            <td>${detailInfo.roomcount }</td>
                        </tr>
                        <tr>
                            <td>입실 시간</td>
                            <td>${detailInfo.checkintime }</td>
                        </tr>
                        <tr>
                            <td>퇴실 시간</td>
                            <td>${detailInfo.checkouttime }</td>
                        </tr>
                        <tr>
                            <td>굿스테이</td>
                            <td>${detailInfo.goodstay }</td>
                        </tr>
                        <tr>
                            <td>예약 안내</td>
                            <td>${detailInfo.reservationlodging }</td>
                        </tr>
                        <tr>
                            <td>예약 안내 홈페이지</td>
                            <td>${detailInfo.reservationurl }</td>
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
                        <td>규모</td>
                        <td>${detailInfo.scalelodging }</td>
                    </tr>
                    <tr>
                        <td>객실 내 취사</td>
                        <td>${detailInfo.goodstay }</td>
                    </tr>
                     <tr>
                        <td>주차 시설</td>
                        <td>${detailInfo.parkinglodging }</td>
                    </tr>
                    <tr>
                        <td>픽업 서비스</td>
                        <td>${detailInfo.pickup }</td>
                    </tr>
                    <tr>
                        <td>바비큐장</td>
                        <td>${detailInfo.barbecue }</td>
                    </tr>
                    <tr>
                        <td>자전거 대여</td>
                        <td>${detailInfo.bicycle }</td>
                    </tr>
                    <tr>
                        <td>캠프파이어</td>
                        <td>${detailInfo.campfire }</td>
                    </tr>
                    <tr>
                        <td>공용 PC룸</td>
                        <td>${detailInfo.publicpc }</td>
                    </tr>
                    <tr>
                        <td>노래방</td>
                        <td>${detailInfo.karaoke }</td>
                    </tr>
                    <tr>
                        <td>스포츠 시설</td>
                        <td>${detailInfo.sports }</td>
                    </tr>
                    <tr>
                        <td>휘트니스</td>
                        <td>${detailInfo.fitness }</td>
                    </tr>
                    <tr>
                        <td>사우나 실</td>
                        <td>${detailInfo.sauna }</td>
                    </tr>
                </table>
                
                <p><strong>객실 정보</strong></p>
				<c:forEach items="${subList }" var="bean">
					<p><strong>${bean.roomtitle }</strong></p>
					<table class="table">
						<tr>
							<td>
								<img src="${bean.roomimg1 }"/>
							</td>
							<td>
								<img src="${bean.roomimg2 }"/>
							</td>	
						</tr>
						<tr>
							<td>
								객실 크기 : ${bean.roomsize1 }<br/>
								객실 수 : ${bean.roomcount }<br/>
								기준 인원 : ${bean.roombasecount }<br/>
								기준 소개 : ${bean.roomintro }<br/>
							</td>
							<td>
								욕조 : ${bean.roombath } &nbsp; &nbsp; 에어컨 : ${bean.roomaircondition }<br/>
								TV : ${bean.roomtv } &nbsp; &nbsp; 냉장고 : ${bean.roomrefrigerator }<br/>
								PC : ${bean.roompc } &nbsp; &nbsp; 인터넷 : ${bean.roominternet }<br/>
								취사용품 : ${bean.roomcook } &nbsp; &nbsp; 테이블 : ${bean.roomTable }<br/>
							</td>	
						</tr>
					</table>
				</c:forEach>
                
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
