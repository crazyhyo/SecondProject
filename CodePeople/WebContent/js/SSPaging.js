function boardPaging(currentPageNo){
	
	$.ajax({
		url : '/CodePeople/BoardPagingList.do',
		type : 'get',
		data : { "currentPageNo" : currentPageNo},
		dataType : 'json',
		success : function(res){
			
		},
		error : function(err){
			alert(`status : ${err.status}\ntext : ${err.statusText}`);
		}
		
	})
	
}

function companyPaging(currentPageNo){
	
	$.ajax({
		url : '/CodePeople/CompanyPagingList.do',
		type : 'get',
		data : { "currentPageNo" : currentPageNo},
		dataType : 'json',
		success : function(res){
			
		},
		error : function(err){
			alert(`status : ${err.status}\ntext : ${err.statusText}`);
		}
		
	})
	
}

function jobOpeningPaging(currentPageNo){
	
	$.ajax({
		url : '/CodePeople/JobOpeningPagingList.do',
		type : 'get',
		data : { "currentPageNo" : currentPageNo},
		dataType : 'json',
		success : function(res){
			
		},
		error : function(err){
			alert(`status : ${err.status}\ntext : ${err.statusText}`);
		}
		
	})
	
}

function HRPaging(currentPageNo){
	
	$.ajax({
		url : '/CodePeople/HRPagingList.do',
		type : 'get',
		data : { "currentPageNo" : currentPageNo},
		dataType : 'json',
		success : function(res){
			
		},
		error : function(err){
			alert(`status : ${err.status}\ntext : ${err.statusText}`);
		}
		
	})
	
}
function CVPaging(currentPageNo){
	
	$.ajax({
		url : '/CodePeople/CVPagingList.do',
		type : 'get',
		data : { "currentPageNo" : currentPageNo},
		dataType : 'json',
		success : function(res){
			
		},
		error : function(err){
			alert(`status : ${err.status}\ntext : ${err.statusText}`);
		}
		
	})
	
}

const HRCardPaging  = (currentPageNo) => {
	
	$.ajax({
		url : 'CodePeople/HRCardPagingList.do',
		type : 'get',
		data : {"currentPageNo" : currentPageNo},
		dataType : 'json',
		success : function(res){
			console.log(res);
		},
		error : function(xhr){
			alert(`status : ${xhr.status}\n text: &$xhr.statusText}`);
		}
	})
	
} 


function JOCardPaging(currentPageNo){
	
	$.ajax({
		url : '/CodePeople/JobOpeningCardPagingList.do',
		type : 'get',
		data : { "currentPageNo" : currentPageNo},
		dataType : 'json',
		success : function(res){
			
			let cardCode = "";
			
			res.forEach(function(data){
				cardCode +=                     
				`
				<div class="card card-jo">
                <!-- 카드의 이미지태그는 복사해서 사용할것 src alt값 변경 필-->
                <div class="card-left">
                    <img src="../logo.jpeg" alt="Card image" style="width:64px; height: 64px;">
                </div>
                <!-- 카드의 정보 -->
                <div class="card-body card-right">
                    <div class="card-top-box">
                        <h4 class="card-title">${data.comNm}</h4>
                    </div>
                    <!-- 카드의 회사 소개, 직군 -->
                    <div class="card-text card-jobs-detail-company-intro"><span class="company-intor">${data.comIntro}</span></div>
                    <div class="card-text card-jobs-detail-company-jobgroup"><span class="company-jobgroup">${data.jgCodeNm}</span></div>
                    <!-- 카드의 채용공고 박스 -->
                    <div class="card-jobs-detail">
                        <div class="divider"></div>
                        <div class="jobs-detail-top">
                            <div class="jobs-detail">
                                <a href="#" class="card-link"><span class="jo-title">${data.joTitle}</span></a>&nbsp;&nbsp;
                                <span class="jo-salary jo-sm-font">${data.joSalTypeNm}</span>
                                <span class="jo-sm-font">/</span>
                                <span class="jo-career jo-sm-font">경력</span>
                            </div>
                            <div class="dropup">
                                <button type="button" class="btn btn-outline-secondary dropdown-toggle btn-menu"
                                    data-bs-toggle="dropdown"></button>
                                <!-- 카드 메뉴정보 -->
                                <ul class="dropdown-menu">
                                    <!-- 카드 메뉴 헤더 -->
                                    <li>
                                        <h5 class="dropdown-header">관심등록</h5>
                                    </li>
                                    <!-- 카드 메뉴 옵션 -->
                                    <li><a class="dropdown-item" href="#">스크랩</a></li>
                                    <li>
                                        <h5 class="dropdown-header">알람설정</h5>
                                    </li>
                                    <li><a class="dropdown-item" href="#">알람등록</a></li>
                                </ul>
                            </div>
                        </div>

                        <span class="card-text jo-sm-font">${data.jtCodeNm}</span>&nbsp;&nbsp;
                        <span class="jo-start jo-sm-font"><i class="far fa-calendar-alt">&nbsp;</i>${data.joSdate}
                            </span>
                            &nbsp;<span class="jo-start jo-sm-font">~</span>&nbsp;
                        <span class="jo-end jo-sm-font"><i class="far fa-calendar-alt">&nbsp;</i>${data.joEdate}
                            </span>
                    </div>
                </div>
            </div>`;
				
			})
			
			
			document.getElementById('result-card-list').innerHTML = cardCode;
			
		},
		error : function(err){
			alert(`status : ${err.status}\ntext : ${err.statusText}`);
		}
		
	})
	
}

function JOCardPaging(currentPageNo){
	
	$.ajax({
		url : '/CodePeople/JobOpeningCardPagingList.do',
		type : 'get',
		data : { "currentPageNo" : currentPageNo},
		dataType : 'json',
		success : function(res){
			
			let cardCode = "";
			
			res.forEach(function(data){
				cardCode +=                     
				`
				<div class="card card-jo">
                <!-- 카드의 이미지태그는 복사해서 사용할것 src alt값 변경 필-->
                <div class="card-left">
                    <img src="../logo.jpeg" alt="Card image" style="width:64px; height: 64px;">
                </div>
                <!-- 카드의 정보 -->
                <div class="card-body card-right">
                    <div class="card-top-box">
                        <h4 class="card-title">${data.comNm}</h4>
                    </div>
                    <!-- 카드의 회사 소개, 직군 -->
                    <div class="card-text card-jobs-detail-company-intro"><span class="company-intor">${data.comIntro}</span></div>
                    <div class="card-text card-jobs-detail-company-jobgroup"><span class="company-jobgroup">${data.jgCodeNm}</span></div>
                    <!-- 카드의 채용공고 박스 -->
                    <div class="card-jobs-detail">
                        <div class="divider"></div>
                        <div class="jobs-detail-top">
                            <div class="jobs-detail">
                                <a href="#" class="card-link"><span class="jo-title">${data.joTitle}</span></a>&nbsp;&nbsp;
                                <span class="jo-salary jo-sm-font">${data.joSalTypeNm}</span>
                                <span class="jo-sm-font">/</span>
                                <span class="jo-career jo-sm-font">경력</span>
                            </div>
                            <div class="dropup">
                                <button type="button" class="btn btn-outline-secondary dropdown-toggle btn-menu"
                                    data-bs-toggle="dropdown"></button>
                                <!-- 카드 메뉴정보 -->
                                <ul class="dropdown-menu">
                                    <!-- 카드 메뉴 헤더 -->
                                    <li>
                                        <h5 class="dropdown-header">관심등록</h5>
                                    </li>
                                    <!-- 카드 메뉴 옵션 -->
                                    <li><a class="dropdown-item" href="#">스크랩</a></li>
                                    <li>
                                        <h5 class="dropdown-header">알람설정</h5>
                                    </li>
                                    <li><a class="dropdown-item" href="#">알람등록</a></li>
                                </ul>
                            </div>
                        </div>

                        <span class="card-text jo-sm-font">${data.jtCodeNm}</span>&nbsp;&nbsp;
                        <span class="jo-start jo-sm-font"><i class="far fa-calendar-alt">&nbsp;</i>${data.joSdate}
                            </span>
                            &nbsp;<span class="jo-start jo-sm-font">~</span>&nbsp;
                        <span class="jo-end jo-sm-font"><i class="far fa-calendar-alt">&nbsp;</i>${data.joEdate}
                            </span>
                    </div>
                </div>
            </div>`;
				
			})
			
			
			document.getElementById('result-card-list').innerHTML = cardCode;
			
			
//			$.ajax({
//				url : '/CodePeople/Pagination.do',
//				type : 'get',
//				data : { "currentPageNo" : currentPageNo},
//				dataType : 'json',
//				success : function(res){
//					
//				},
//				error : function(err){
//					alert(`status : ${err.status}\ntext : ${err.statusText}`);
//				}
//			})

		},
		error : function(err){
			alert(`status : ${err.status}\ntext : ${err.statusText}`);
		}
		
	})
	
}

function JOSearchCardPaging(currentPageNo){
	
	let datas = $('#formTest').serialserializeJSON();
	console.log(datas);
	let JG_CODE_NO;
	let JT_CODE_NO;
	let PL_CODE_NO;
	let SAL_TYPE;
	let PROV_CODE_NO;
	let CITY_CODE_NO;
	let STATE;
	
	$.ajax({
		url : '/CodePeople/JobOpeningCardSearchList.do',
		type : 'get',
		data : {
					"currentPageNo"   : currentPageNo,
					"JG_CODE_NO"      : JG_CODE_NO,
					"JT_CODE_NO"      : JT_CODE_NO,
					"PL_CODE_NO"      : PL_CODE_NO,
					"SAL_TYPE"        : SAL_TYPE,
					"PROV_CODE_NO"    : PROV_CODE_NO,
					"CITY_CODE_NO"    : CITY_CODE_NO,
					"STATE"           : STATE       
				},
		dataType : 'json',
		success : function(res){
			
		},
		error : function(err){
			alert(`status : ${err.status}\ntext : ${err.statusText}`);
		}
		
	})
	
}