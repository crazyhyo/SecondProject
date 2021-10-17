
function initSelect(){
		initJobGroupList();
		initProgLangList();
		initJoSalaryList();
}

function initJoSalaryList(){

	let code = '<option value="">선택해주세요</option>';
	
		code += `<option idx="~ 2000만원" value="0">~ 2000만원</option>`;
		code += `<option idx="2000만원 ~ 2500만원" value="1">2000만원 ~ 2500만원</option>`;
		code += `<option idx="2000만원 ~ 2500만원" value="2">2000만원 ~ 2500만원</option>`;
		code += `<option idx="2500만원 ~ 3000만원" value="3">2500만원 ~ 3000만원</option>`;
		code += `<option idx="3000만원 ~ 4000만원" value="4">3000만원 ~ 4000만원</option>`;
		code += `<option idx="4000만원 ~ 5000만원" value="5">4000만원 ~ 5000만원</option>`;
		code += `<option idx="5000만원 ~ " value="6">5000만원 ~ </option>`;
	
	$('.joSalarySelect').html(code);
	

}

function initJobGroupList(){

	$.ajax({
		url : '/CodePeople/jobGroupTest.do',
		type : 'get',
		dataType : 'json',
		success : function(res){
			
			code = '<option value="">선택해주세요</option>';
			
			res.forEach(function(ele){
				code += `<option idx="${ele.jgCodeNm}" value="${ele.jgCodeNo}">${ele.jgCodeNm}</option>`;
			})
			
			$('.jobGroupSelect').html(code);
			
			initJobTitleList(1);
			
		},
		error : function(err){
			alert(`status : ${err.status}\ntext : ${err.statusText}`);
		}
		
	})
}

function initProgLangList(){

	$.ajax({
		url : '/CodePeople/progLangTest.do',
		type : 'get',
		dataType : 'json',
		success : function(res){
			
			code = '<option value="">선택해주세요</option>';
			
			res.forEach(function(ele){
				code += `<option idx="${ele.plCodeNm}" value="${ele.plCodeNo}">${ele.plCodeNm}</option>`;
			})
			
			$('.progLangSelect').html(code);
			
		},
		error : function(err){
			alert(`status : ${err.status}\ntext : ${err.statusText}`);
		}
		
	})
}

function initJobTitleList(jgCodeNo){
	$.ajax({
		url : '/CodePeople/jobTitleTest.do',
		type : 'get',
		data : { "jgCodeNo" : jgCodeNo},
		dataType : 'json',
		success : function(res){
			
			code = '<option value="">선택해주세요</option>';
			
			res.forEach(function(ele){
				code += `<option idx="${ele.jtCodeNm}" value="${ele.jtCodeNo}">${ele.jtCodeNm}</option>`;
			})
			
			$('.jobTitleSelect').html(code);
			
			initProgLangList();
		},
		error : function(err){
			alert(`status : ${err.status}\ntext : ${err.statusText}`);
		}
		
	})
}