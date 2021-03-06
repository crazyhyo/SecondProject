
listServer = function() {
	
	$.ajax({
        type: "get",
        url: "/CodePeople/BoardList.do",
        
        dataType: "json",
        success: function (res) {
          
        	code = '<div id="accordion">';
        	
        	$(res).each(function(i,v){
        		
        		//<!-- 게시글의 한단위  -->
        		//<!-- card-hear 안 a태그와 게시글의 아이디를 맞춰주세요 -->
        		code += '<div class="card">';
        		code += '<div class="card-header">';
        		code += '<a class="btn title-btn" data-bs-toggle="collapse" href="#a'+ v.boardNo +'">';
        		code += '<span class="board-tag">' + v.boardHead +'</span>';
        		code += '<span class="board-detail-title title">' + v.boardTitle +'</span>';
        		code += '</a>';
        		code += '<div class="board-icon-box">';
        		code += '<i class="far fa-eye"></i>&nbsp;<span class="board-view board-sm-font">' + v.boardHit +'</span>&nbsp;&nbsp;';
        		code += '<i class="far fa-thumbs-up"></i>&nbsp;<span class="board-like board-sm-font">' + v.boardLike +'</span>&nbsp;&nbsp;';
        		code += '<i class="far fa-comment"></i>&nbsp;<span class="board-comment board-sm-font">' + v.boardRepl +'</span>&nbsp;&nbsp;';
        		code += `</div>
        		</div>
        		
        		<div id="a${v.boardNo}" class="collapse" data-bs-parent="#accordion">
        		<div class="card-body">
        		<div class="board-info-box">
        		작성자&nbsp;:&nbsp;<span class="board-detail-writer writer">'${v.memId}'</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        		작성일&nbsp;:&nbsp;<span class="board-detail-date">'${v.boardDate}'</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        		<a href="" style="text-decoration: none;">추천</a>&nbsp;&nbsp;
        		<a href="" style="text-decoration: none;">신고</a>
        		</div>
        		<span class="board-detail-content cont">'${v.boardCont}'</span>
        		<div class="my-btn-box my-btn-box-cv">
        		<button type="button" name='update' idx="${v.boardNo}" class="btn btn-outline-primary action" data-bs-toggle="modal" data-bs-target="#updateModal" >수정</button>
        		<button type="button" name="delete" idx= '${v.boardNo}' class="btn btn-outline-primary action">삭제</button>
        		</div>
        		</div>
        		<div class="board-divider"></div>
        		<div class="board-bottom-icon-box">  
        		<div class="board-icon-item"><i class="far fa-thumbs-up"></i>&nbsp;<span class="board-like board-sm-font">좋아요</span></div>
        		<div class="board-icon-item"><i class="far fa-comment"></i>&nbsp;<span class="board-comment board-sm-font">댓글</span></div>
        		<div class="board-icon-item"><i class="far fa-frown"></i>&nbsp;<span class="board-comment board-sm-font">신고</span></div>
        		</div>
        		<div class="reply-box">
        		<div class="input-group mb-3">
        		<input type="text" class="form-control" placeholder="댓글을 입력하세요">
        		<button class="btn btn-outline-primary" type="button">등록</button>
        		</div>
        		<div class="reply-card bg-light text-dark">                                        
        		<div class="reply-writer-box">&nbsp;&nbsp;작성자&nbsp;&nbsp;<span class="reply-writer">홍**</span></div> 
        		<div class="card-body"><span class="reply-content">이것은 댓글입니다. 드랍 박스내부에 대댓글을 항목으로 넣어 구현할까 생각 중이에요. 그리고 추천과 신고 대댓글 갯수를 넣으려면, 게시글 위에 보이는 이미지들을 또 쓰겠죠.....그리고 수정 삭제도 드랍박스 안에 넣을 꺼에요.아 모르겠다 이제 ㄴ일 해야지 모두들 꿋잠...</span></div>
        		<div class="reply-card-icon-box">  
        		<div class="board-icon-item"><i class="far fa-thumbs-up"></i>&nbsp;<span class="reply-like board-sm-font">좋아요</span></div>
        		<div class="board-icon-item"><i class="far fa-comment"></i>&nbsp;<span class="reply-reply-cnt board-sm-font">대댓글</span></div>
        		<div class="board-icon-item"><i class="far fa-frown"></i>&nbsp; <span class="reply-report board-sm-font">신고</span></div>
        		</div>
        		<div class="my-btn-box-cv reply-btn-box">
        		<button type="button" class="btn btn-outline-secondary">수정</button>
        		<button type="button" class="btn btn-outline-secondary">삭제</button>
        		
        		</div>
        		</div>
        		</div>
        		</div>
        		</div>`;
        	});	
        	code += '</div>';
        
        	$('#accordion').html(code);
        },
        error: function(xhr){
        	alert("상태 : " + xhr.status + " text : " + xhr.statusText);
        }
    });
	
}


