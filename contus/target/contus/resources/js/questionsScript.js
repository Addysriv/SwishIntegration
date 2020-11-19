
$( document ).ready(function() {
	

	
});


function jsFunc(){
	

	 $('#q1_rd_1').prop("checked",false);
	 $("input[name='questionsList[0]']:checked").val();
	 
	 var actualIndex=index-1;
	 /* if( index!=1 && !$("input[name='ques"+actualIndex+"']").is(':checked'))
	 {
		 alert('return ing'+actualIndex);
		 return;
	 } */
	 
	if(index==1)
		{
			$('#page0').hide();
			$('#questionNumber').show();
			$('#page1').show();
			$('#queseNumb').text(1);
		}
	else
		{
		/* 
		contentType: "application/json; charset=utf-8",
       datatype: 'json', */
	if (index == 2) {
			alert('ajax call');
				var arr=[];
				arr[0]=0;
				arr[1]=1;
				arr[2]=4;
				var dataToPost = JSON.stringify({ 'arrayList':arr });
				 $.ajax({ 
			        url : "${pageContext.request.contextPath}/secondQuestionare",
					
			        type: 'POST',
					data :{
						arrayList:arr
					},
					success : function(jqXHR) {
							//alert('success'+jqXHR);
							
							$('#secondQuestionare').html(jqXHR);
							
						}
				}); 
		
		}
			var widthNum = parseFloat(actualIndex);
			var width = widthNum - (widthNum * 0.17);
			$('.progress-bar').css("width", width + "%");
			$('#queseNumb').text(index);

		}


}



