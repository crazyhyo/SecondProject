<%@page import="kr.or.ddit.jobOpening.vo.JOCardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	JOCardVO vo = (JOCardVO)request.getAttribute("joCardDetail");
	String comNm = vo.getComNm();
	String comHpg = vo.getComHpg();
	Integer comFav = vo.getComFav();
	String comIntro = vo.getComIntro();
	String joTitle = vo.getJoTitle();
	Integer joClip = vo.getJoClip();
	String joMthd = vo.getJoMthd();
	String jgCodeNm = vo.getJgCodeNm();
	String jtCodeNm = vo.getJtCodeNm();
	String plCodeNm = vo.getPlCodeNm();
	String joRank = vo.getJoRank();
	String joSdate = vo.getJoSdate();
	String joEdate = vo.getJoEdate();
	String cityCodeNm = vo.getCityCodeNm();
	String provCodeNm = vo.getProvCodeNm();
	Integer joNo = vo.getJoNo();
	Integer joSal = vo.getJoSal();
%>

<!DOCTYPE html>
<html lang="en">

<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://kit.fontawesome.com/d3ee6ce800.js" crossorigin="anonymous"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">



  <!-- 유료서비스관련 태그 -->
  <script src="${pageContext.request.contextPath}/js/prod.js"></script>

  <script>

    $(function () {
    	
    	console.log('test');
    	
      $(".list-group .memInfo").click(function (e) {
        let submenu = $(this).next("ul");

        if (submenu.is(":visible")) {
          submenu.slideUp();
        } else {
          submenu.slideDown();
        }

		    

      });
      
		$('#deleteClip').on('click', function(){
	    	
	    	let joNo = $('#deleteClip').attr('idx');
	    	console.log(joNo);
	    	
	    	
	    	$.ajax({
				url : '/CodePeople/DeleteClip.do',
				type : 'get',
				dataType : 'json',
				data : { "joNo" : joNo },
				success : function(res){
					
					if(res.flag === "success"){
	    				alert("스크랩이 취소되었습니다.");
	    				
	    				$('#currentClip').text(parseInt($('#currentClip').text()) - 1);
	    				
					}else{
						alert("스크랩 취소에 실패했습니다.");
					}
					
				},
				error : function(xhr){
					alert(`status : ${xhr.status}\ntext : ${xhr.statusText}`);
				}
			}) 
	    });
      
	    $('#insertClip').on('click', function(){
	    	
	    	let joNo = $('#insertClip').attr('idx');
	    	console.log(joNo);
	    	
	    	
	    	$.ajax({
				url : '/CodePeople/InsertClip.do',
				type : 'get',
				dataType : 'json',
				data : { "joNo" : joNo },
				success : function(res){
					
					if(res.flag === "success"){
	    				alert("스크랩이 완료되었습니다.");
	    				
	    				$('#currentClip').text(parseInt($('#currentClip').text()) + 1);
	    				
					}else{
						alert("스크랩에 실패했습니다.");
					}
					
				},
				error : function(xhr){
					alert(`status : ${xhr.status}\ntext : ${xhr.statusText}`);
				}
			}) 
	    });

	    $('#remove').on('click', function(){
	    	
	    	let joNo = $('#insertClip').attr('idx');
	    	console.log(joNo);
	    	
	    	
	    	$.ajax({
				url : '/CodePeople/DeleteJobOpening.do',
				type : 'get',
				dataType : 'json',
				data : { "joNo" : joNo },
				success : function(res){
					
					if(res.flag === "success"){
	    				alert("삭제가 완료되었습니다.");
					}else{
						alert("삭제에 실패했습니다.");
					}
					
				},
				error : function(xhr){
					alert(`status : ${xhr.status}\ntext : ${xhr.statusText}`);
				}
			}) 
	    });
    });
    
    
    
    $(document).on('click', '#apply', function(){
    	
    	let isApply = confirm("정말 지원하시겠습니까?");
    	
    	let joNo = $('#joNo').val();
    	console.log(joNo);
    	
    	if(isApply){
    		
    		 $.ajax({
    			url : '/CodePeople/Apply.do',
    			type : 'get',
    			dataType : 'json',
    			data : { "joNo" : joNo },
    			success : function(res){
    				
    				if(res.flag === "success"){
	    				alert("지원이 완료되었습니다.");
	    				
	    				$('#apply').attr('disabled', true);
	    				
    				}else{
    					alert("지원에 실패했습니다.");
    				}
    				
    			},
    			error : function(xhr){
    				alert(`status : ${xhr.status}\ntext : ${xhr.statusText}`);
    			}
    		}) 
    	}
    });
    
  </script>

  <style>
    .list-group .memInfo {
      cursor: pointer;
    }

    .list-group .infoList {
      display: none;
      padding: 0px;
    }

    .list-group .infoList li:hover {
      filter: brightness(95%);
    }
    .sal-graph{
      width: 500px;
    }
    .progress_wrap {
    position: relative;
    background: #9a80db;
    background: linear-gradient(
90deg,#9a80db,#56a2d8 54%,#ec647e);
    width: 50%;
    height: 6px;
    border-radius: 100px;
    display: block;
}
.comparison .show_chart .comparison_chart {
    position: relative;
    min-height: 90px;
}
.progress_wrap [class^=dot_] {
    display: block;
    position: absolute;
    top: -3px;
    width: 12px;
    height: 12px;
    border-radius: 12px;
    margin-left: -6px;
}
.progress_wrap span.dot_min {
    left: 0;
    background-color: #9681da;
}
.progress_wrap span.dot_med {
    left: 50%;
    background-color: #57a1d8;
}
.progress_wrap span.dot_max {
    left: 100%;
    background-color: #e56782;
}
.comparison .show_chart .min_max li {
    display: inline-block;
    width: 33.33%;
    font-size: 12px;
    font-weight: 400;
    text-align: center;
    line-height: 1.25em;
}
  </style>
</head>

<body>
  <!-- 헤더 -->
  <div id="header">
    <!-- 헤더 메인 메뉴 바 -->
    <div id="header-container">
      <!-- 좌측 메뉴 -->
      <div id="header-left-menu">
        <!-- 로고 -->
        <a href="" id="logo"><i class="fas fa-copyright" style="font-size: 32px;"></i></a>
        <div class="divider"></div>
        <!-- 통합 검색창 -->
        <div id="search-box">
          <div id="search-item">
            <i class="fas fa-search item" style="width: 15.3px; height: 19px;">
            </i> <input class="" type="text"
              style="height: 19px; border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px;"
              placeholder="통합검색">
          </div>
        </div>
      </div>
      <!-- 우측 메뉴 -->
      <div id="header-right-menu">
        <!-- 메인 메뉴 링크 -->
        <div id="header-link-box">
          <a class="header-link" href="/CodePeople/rehearsal/mainHr.html">인재</a>
          <a class="header-link" href="/CodePeople/rehearsal/company.html">기업</a>
          <a class="header-link" href="/CodePeople/rehearsal/mainJo.html">채용</a>
          <a class="header-link" href="/CodePeople/rehearsal/mainBoard.html">커뮤니티</a>
          <a class="header-link" href="/CodePeople/rehearsal/mainMypage.html">마이페이지</a>
        </div>
        <div class="divider"></div>
        <!-- 로그인버튼 -->
        <a href="/CodePeople/rehearsal/home.html"><button id="header-login-btn"
            class="btn btn-primary btn-sm">로그인</button></a>
      </div>
    </div>
  </div>
  <!-- 바디 -->
  <div id="body">
    <div id="body-container">
      <!-- 마이페이지 좌측 메뉴바 -->
      <div class="nav-left-bar nav-my">
        <div class="nav-sticky">
          <ul class="list-group">
            <li class="list-group-item "><a class="nav-link" href="">모든 기업보기</a></li>
            <li class="list-group-item"><a class="nav-link" href="#main">상세</a></li>
            <li class="list-group-item"><a class="nav-link" href="#introduce">소개</a></li>
            <li class="list-group-item"><a class="nav-link" href="#review">리뷰</a></li>
            <li class="list-group-item"><a class="nav-link" href="#board">게시글</a></li>
            <li class="list-group-item"><a class="nav-link" href="#salary">연봉</a></li>
            <li class="list-group-item"><a class="nav-link" href="#hr">채용정보</a></li>
            <li class="list-group-item"><a class="nav-link" href="#news">뉴스</a></li>
          </ul>
        </div>
      </div>
      <!-- 바디 콘텐츠 -->
      <div id="content">
        <!-- 마이페이지 -->

        <!-- 메인 -->
        <div id="main" class="content-box search-result jo my-main-cv">
          <div class="my-box-item">
            <div class="my-box-header">
              <h1 class="h1">채용공고 상세</h1>
            </div>
          </div>
          <!-- 검색결과 카드 -->
          <div class="card card-cv">
            <!-- 카드의 이미지태그는 복사해서 사용할것 src alt값 변경 필-->
            <div class="card-left">
              <img src="logo.jpeg" alt="Card image" style="width: 64px; height: 64px;">
            </div>
            <!-- 카드의 정보 -->
            <div class="card-body card-right">
              <div class="card-top-box">
                <h4 class="card-title cv-title"><%=joTitle %></h4>
                <!-- 관심/알람 버튼 -->
                <div class="dropdown">
                  <button type="button" class="btn btn-outline-secondary dropdown-toggle btn-menu"
                    data-bs-toggle="dropdown"></button>
                  <!-- 버튼 메뉴정보 -->
                  <ul class="dropdown-menu">
                    <li>
                      <h5 class="dropdown-header">관심</h5>
                    </li>
                    <li><a class="dropdown-item" href="#" idx="<%=joNo %>" id="insertClip">관심등록</a></li>
                    <li><a class="dropdown-item" href="#" idx="<%=joNo %>" id="deleteClip">관심해제</a></li>
                    <li>
                      <h5 class="dropdown-header">알람</h5>
                    </li>
                    <li><a class="dropdown-item" href="#">알람설정</a></li>
                    <li><a class="dropdown-item" href="#">알람해제</a></li>
                  </ul>
                </div>
              </div>
              <!-- 기업 홈페이지 내용 -->
              <div class="card-text">
                기업 &nbsp;&nbsp;
                <span class="cv-jobgroup"><%=comNm %></span>
              </div>
              <div class="card-text">
                소개 &nbsp;&nbsp;
                <span class="cv-jobgroup"><%=comIntro %></span>
              </div>
              <div class="card-text">
                홈페이지 &nbsp;&nbsp;
                <span class="cv-jobgroup"><%=comHpg %></span>
              </div>
              <div class="card-text">
                관심등록 수&nbsp;&nbsp;
                <span class="cv-jobgroup"><%=comFav %></span>
              </div>
              <div class="card-text">
                스크랩 수&nbsp;&nbsp;
                <span class="cv-jobgroup" id="currentClip"><%=joClip %></span>
              </div>
            </div>
          </div>
        </div>

        <!-- 채용공고 소개 -->
        <div id="review" class="content-box  search-result payment-desc my-main-cv">
          <div class="my-box-item">
            <div class="my-box-header">
              <h1 class="h1">개요</h1>
            </div>
          </div>
          <!-- 검색결과 카드 -->
          <div class="card">
            <!-- 카드의 정보 -->
            <div class="card-body card-right">
              <div class="card-top-box">
                <h4 class="card-title"><%=joTitle %></h4>
              </div>
              <div class="card-rating-text"><%=joMthd %></div>
            </div>
          </div>
        </div>
        <!-- 채용정보 -->
        <div class="container mt-3">
          <div class="card">
            <div class="card-body">
              <h4 class="card-title">채용정보</h4>
                <dl>
                  <dt>직군</dt>
                  <dd>- <%=jgCodeNm %></dd>
                  <dt>직무</dt>
                  <dd>- <%=jtCodeNm %></dd>
                  <dt>직급</dt>
                  <dd>- <%=joRank %></dd>
                  <dt>활동분야</dt>
                  <dd>- <%=plCodeNm %></dd>
                  <dt>주소</dt>
                  <dd>- <%=cityCodeNm + " " + provCodeNm %></dd>
                  <dt>연봉</dt>
                  <dd>- <%=joSal %></dd>
                </dl>
                
                
                <button type="button" id="apply" class="btn btn-success">지원하기</button>
                
                <input type="hidden" id="joNo" value="<%=joNo %>">
                
                <button type="button" id="remove" idx="<%=joNo %>" class="btn btn-success">삭제테스트</button>
                <span class="jo-start jo-sm-font"><i class="far fa-calendar-alt">&nbsp;</i><%=joSdate %> </span> &nbsp;<span
                	class="jo-start jo-sm-font">~</span>&nbsp; <span class="jo-end jo-sm-font"><i
                		class="far fa-calendar-alt">&nbsp;</i><%=joEdate %>
                </span>      
            </div>
          </div>
        </div>

  </div>

  <!--  풋터-->
  <div id="footer">
    <div id="footer-container"></div>
  </div>


</body>

</html>