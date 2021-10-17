
function searchJobOpening(datas){
	
	$.ajax({
		url : '/CodePeople/joSearch.do',
		type : 'post',
		data : datas,
		dataType : 'json',
		success : function(res){
					
		},
		error : function(err){
			alert(`status : ${err.status}\ntext : ${err.statusText}`);
		}
		
	})
	
}

