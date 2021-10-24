
comListServer = function (currentPageNo) {

  $.ajax({
    type: "get",
    url: "/CodePeople/CompanyPagingList.do",
    data: { "currentPageNo" : currentPageNo},
    dataType: "json",
    success: function (res) {

    	code = "";
      $(res).each(function (i, v) {

        code += `<div class="card" idx="${v.comNo}">
                        <div class="card-left">
                            <img src="../images/blue.jpg" alt="Card image" style="width:64px; height: 64px;">
                        </div>
                        <div class="card-body card-right">
                          <div class="card-top-box">
                            <a href="/CodePeople/CompanyDetailList.do?comNo=${v.comNo}" class="card-link"><h4 class="card-title">${v.comNm}</h4></a>
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
                                        <li><a class="dropdown-item addFav" idx=${v.comNo} >관심등록</a></li>
                                        <li><a class="dropdown-item deleteFav" idx=${v.comNo} >관심해제</a></li>
                                        <li>
                                        </ul>
                                </div>
                            </div>
                            <div class="card-rating-box">
                                  <p>${v.comIntro}</p>
                            </div>
                            <a href="./companyDetail.html#review" class="card-link">리뷰</a>
                            <a href="./companyDetail.html#board" class="card-link">게시물</a>
                            <a href="./companyDetail.html#salary" class="card-link">연봉</a>
                            <a href="./companyDetail.html#hr" class="card-link">채용</a>
                        </div>
                    </div>`;
      });

      let parent = document.querySelector('#company-card-list');
			parent.innerHTML= code;
			
			addFav = document.querySelectorAll('.addFav');
			deleteFav = document.querySelectorAll('.deleteFav');
			
			addFav.forEach(a=>{
				a.addEventListener('click',event=>{
					let comCard = event.currentTarget;
					let comNoValue = comCard.getAttribute('idx');
					console.log(comNoValue);
					let comNo = document.querySelector('#comNo');
					let hrNo = document.querySelector('#hrNo');
					
					hrNo.value = 1;
					comNo.value = comNoValue;
					addFavCompany();
				})
			})
			
			deleteFav.forEach(a=>{
				a.addEventListener('click',event=>{
					let comCard = event.currentTarget;
					let comNoValue = comCard.getAttribute('idx');
					let comNo = document.querySelector('#comNo');
					let hrNo = document.querySelector('#hrNo');
					
					hrNo.value = 1;
					comNo.value = comNoValue;	
					deleteFavCompany();			
				})
			})
    },
    error: function (xhr) {
      alert("상태 : " + xhr.status + " text : " + xhr.statusText);
    }
  });

}


$(function() {
	
	$('#cpn-btn').on('click', function () {
		
	    var cdata = $('#comInsert').serializeJSON();
	    if(cdata.jgCodeNo == '개발 1'){
	    	cdata.jgCodeNo = 1;
	    }
	    console.log(cdata);
	    
	    $.ajax({
	        type: "post",
	        url: "/CodePeople/CompanyInsert.do",
	        data: cdata,
	        dataType: "json",
	        success: function (res) {
	          
	        	alert("메롱");
	        	
	        },
	        error : function (xhr) {
	         alert("상태 : " + xhr.status + "  text : " + xhr.statusText);
	        }
	      });
	    
	  });
})
  

function execDaumPostcode() {
  new daum.Postcode({
    oncomplete: function (data) {
      // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
      // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
      var roadAddr = data.roadAddress; // 도로명 주소 변수
      var extraRoadAddr = ""; // 참고 항목 변수

      // 법정동명이 있을 경우 추가한다. (법정리는 제외)
      // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
      if (data.bname !== "" && /[동|로|가]$/g.test(data.bname)) {
        extraRoadAddr += data.bname;
      }
      // 건물명이 있고, 공동주택일 경우 추가한다.
      if (data.buildingName !== "" && data.apartment === "Y") {
        extraRoadAddr +=
          extraRoadAddr !== "" ? ", " + data.buildingName : data.buildingName;
      }
      // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
      if (extraRoadAddr !== "") {
        extraRoadAddr = " (" + extraRoadAddr + ")";
      }

      // 우편번호와 주소 정보를 해당 필드에 넣는다.
      document.getElementById("postCode").value = data.zonecode;
      document.getElementById("roadAddress").value = roadAddr;

      var roadSido = data.sido;
      var roadSigungu = data.sigungu;

      document.getElementById("cityCodeNo").value = data.sido;
      document.getElementById("provCodeNo").value = data.sigungu;

    },
  }).open();
}

function proc(){
	
	execDaumPostcode();
	
	setTimeout(function(){
		let cityCodeNo = $('#cityCodeNo').val();
		let provCodeNo = $('#provCodeNo').val();
		console.log(cityCodeNo, provCodeNo);
		
		$.ajax({

			url: '/CodePeople/ConvertForm.do',
			type: 'get',
			data: {
				"cityCodeNo" : cityCodeNo,
				"provCodeNo" : provCodeNo
			},
			dataType: 'json',
			success: function(res){
				
				$('#cityCodeNo').val(res.cityCodeNo);
				$('#provCodeNo').val(res.provCodeNo);
				
				console.log(res.cityCodeNo, res.provCodeNo);
			},
			error: function(err){
				alert(`status : ${err.status}`);
			}
		})
	}, 6000)
}

function setValue(ddVal){
	
	if(ddVal != null){
		var inputSet = $(ddVal).text();
		var value = inputSet.substring(3,4); 
		$('#jgval').val(inputSet);
		$('#jgCodeNo').val(value);
	} 
	
}

let addFav = "";
let deleteFav="";
 const addFavCompany = () => {
	 
         let favComData = $('#favComForm').serializeJSON();
         alert(JSON.stringify(favComData));
         $.ajax({
               url : '/CodePeople/AddFavCompany.do',
               type : 'get',
               data : favComData,
               success : function(res){
                   /*  응답에 따라 alert 효과 발생하도록 해야함*/
                   console.log(res)
               },
              error :function(xhr){
                  console.log(`status: ${xhr.satus}\n text : ${xhr.statusText}`);
              }
           })
    }

const deleteFavCompany = () => {
    let favComData = $('#favComForm').serializeJSON();
    $.ajax({
        url :'/CodePeople/DeleteFavCompany.do',
        type:'get',
        data:favComData,
        success: function(res){
            console.log(res)
        },
        error:function(xhr){
         console.log(`status: ${xhr.status}\ntext : ${xhr.statusText}`);
        }

    })
}