<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=width, initial-scale=1">
        <title>Document</title>
    </head>
    <body>
        <div data-role='page'>
            <div data-role='header'>
                <a href="#" data-rel="back" class="ui-btn ui-shadow ui-icon-arrow-l ui-btn-icon-left ui-btn-icon-notext">Back</a>
                <h1>${basicInfo.title }</h1>
            </div>
            <div data-role='content'>
                <div>
					<img class="detail-area-img" src="${basicInfo.firstimage }"/>			
				</div>
				<div>
					<a data-role="button" href="../addmytrip_list/${basicInfo.contentid }">내 여행지 추가하기</a>
				</div><br/>
				<div>
					${basicInfo.overview }
				</div>
				<div>
					${basicInfo.homepage }
				</div><br/>
				<div>
					전화 : ${basicInfo.tel }
				</div><br/>
				<div>
					주소 : ${basicInfo.addr1 } ${basicInfo.addr2 }
				</div><br/>
				<div><p><strong>행사 · 축제 상세정보</strong></p>
					<div>
						관람 가능연령 : ${detailInfo.agelimit }
					</div><br/>
					<div>
						이용요금 : ${detailInfo.usetimefestival }
					</div><br/>
					<div>
						예매처 : ${detailInfo.bookingplace }
					</div><br/>
					<div>
						할인정보 : ${detailInfo.discountinfofestival }
					</div><br/>
					<div>
						행사 프로그램 : ${detailInfo.program }
					</div><br/>
					<div>
						행사 기간 : ${detailInfo.eventstartdate } ~ ${detailInfo.eventstartdate }
					</div><br/>
					<div>
						축제등급 : ${detailInfo.festivalgrade }
					</div><br/>
					<div>
						공연시간 : ${detailInfo.playtime }
					</div><br/>
					<div>
						관람 소요시간 : ${detailInfo.spendtimefestival }
					</div><br/>
					<div>
						부대행사 : ${detailInfo.subevent }
					</div><br/>
				</div>
			</div>
            <div data-role='footer' data-position='fixed'>
                <!-- data-role='navbar'는 앱스럽게 탭메뉴를 구성할 수 있도록 해준다. 가로 최대:5개 -->
                <div data-role='navbar'>
                    <ul>
                        <li>
                            <a data-icon='home' class="ui-btn-active ui-state-persist" href="../main">Home</a>
                        </li>
                        <li>
                            <a data-icon='calendar' href="../mytrip">내 여행</a>
                        </li>
                        <li>
                            <a data-icon='edit' href="../tripnote">여행노트</a>
                        </li>
                        <li>
                            <a data-icon='gear' href="../setting">설정</a>
                        </li>
                    </ul>
                </div>
            </div><!-- end footer -->
        </div><!-- end page -->
    </body>
</html>