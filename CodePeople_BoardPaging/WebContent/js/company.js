
comListServer = function (currentPageNo) {

  $.ajax({
    type: "get",
    url: "/CodePeople/CompanyPagingList.do",
    data: { "currentPageNo" : currentPageNo},
    dataType: "json",
    success: function (res) {

    	code = "";
      $(res).each(function (i, v) {

        code += `<div class="card">
                        <div class="card-left">
                            <img src="../images/blue.jpg" alt="Card image" style="width:64px; height: 64px;">
                        </div>
                        <div class="card-body card-right">
                            <div class="card-top-box">
                                <h4 class="card-title">${v.comNm}</h4>
                                <div class="dropup">
                                    <button type="button" class="btn btn-outline-secondary dropdown-toggle btn-menu"
                                        data-bs-toggle="dropdown"></button>
                                    <ul class="dropdown-menu">
                                        <li>
                                            <h5 class="dropdown-header">관심</h5>
                                        </li>
                                        <li><a class="dropdown-item" href="#">관심등록</a></li>
                                        <li><a class="dropdown-item" href="#">관심해제</a></li>
                                        <li>
                                            <h5 class="dropdown-header">알람</h5>
                                        </li>
                                        <li><a class="dropdown-item" href="#">알람설정</a></li>
                                        <li><a class="dropdown-item" href="#">알람해제</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="card-rating-box">
                                  <div class="card-rating-star">`
                                    var comRevStar = Math.round(v.comRev);
                                    for (let j = 0; j < comRevStar; j++) {
                                    code += `<span>★</span>`
                                    }
                                    for (let i = comRevStar; i < 5; i++) {
                                    	code += `<span>☆</span>`
										
									}
        code +=                     `</div>
                                <div class="card-rating-text">(${v.comRev})</div>
                            </div>
                            <a href="#" class="card-link">리뷰</a>
                            <a href="#" class="card-link">게시물</a>
                            <a href="#" class="card-link">연봉</a>
                            <a href="#" class="card-link">채용</a>
                        </div>
                    </div>`;
      });

      let parent = document.querySelector('#company-card-list');
			parent.innerHTML= code;
    },
    error: function (xhr) {
      alert("상태 : " + xhr.status + " text : " + xhr.statusText);
    }
  });

}


