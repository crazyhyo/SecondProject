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


const insertJobOpening = () => {
	
	const joInputs = $('#joForm').serializeJSON();
	
	console.log(joInputs);
	
	$.ajax({

		url: '/CodePeople/InsertJobOpeining.do',
		type: 'post',
		data: joInputs,
		dataType: 'json',
		success: function(res){
			
			alert('채용공고 등록이 완료되었습니다');
			
		},
		error: function(err){
			alert(`status : ${err.status}`);
		}
	})
	
	
	
}

