<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.5/umd/popper.min.js"></script>


<script>
var couponList='${couponList}';
var count=0;
function createCoupon(){
	
	var couponCode=$('#couponCode').val();
	var numb=$('#numbAllowed').val();
	var amnt=$('#amount').val();
	
	if(couponCode=="" || numb=="" || amnt =="")
	{
		alert("Please fill all the details to create a coupon.");
		return ;
	}
	
	if(isNaN(numb))
		{
		alert('Number of times allowed is not valid');
		return;
		}
	
	if(isNaN(amnt))
	{
	alert('Coupon Amount is not valid');
	return;
	}

	
	$.ajax({
		 url : "${pageContext.request.contextPath}/createCoupon",
		 async : false,
	data : ({
		code:couponCode,
		number:numb,
		amount:amnt
		
	}),
	success : function(result){
		debugger;
		alert(result);
		if(result=="error")
		{
			alert("There was a error creating coupon");
			
		}
		else{
			alert("Coupon Created successfully");
			count=count+1;
			$('#couponCode').val('');
			$('#numbAllowed').val('');
			$('#amount').val('');
	
			 $('#couponTableDetails').append('<tr id="couponRow'+count+'"> <td> '+count+'</td><td>'+couponCode+'</td><td>'+numb+'</td>'
					 +'<td>0</td><td>'+amnt+'</td><td></td><td>Delete</td></tr>'); 
		 }
		}
	
	});
	
}


function deleteCoupon(codeCoupon,id)
{
	$.ajax({
		 url : "${pageContext.request.contextPath}/deleteCoupon",
		 async : false,
	data : ({
		code:codeCoupon,
		
	}),
	success : function(result){
		if(result=="success")
		{
			alert('Coupon Deleted successfully.');
			var index=parseInt(id);
			$('#couponRow'+index).hide();
		}
		else
			{
			alert("Unable to delete coupon.");
			}
	}
		 
	});

}

</script>

<div id="createCouponDiv" style="width: 33%;margin-left: 30%;">
	<h3>Create A Coupon</h3>
	Coupon Code : <input type="text" id="couponCode"> Number of
	Times allowed : <input type="text" id="numbAllowed"> Amount
	after discount : <input type="text" id="amount"> <br>
	<br><br>
	<button onclick="createCoupon();" style="width: 185px;
    height: 46px;
    border-radius: 30px;
    background-color: rgba(255, 142, 34, 0.31);
    margin-left: 20%;">Create</button>

</div>
<br>
<br>
&nbsp;&nbsp;
<h3>Already available coupon</h3>
<br>

<table id="couponTable" class="table table-striped table-bordered">
<thead>
	<tr>
		<th>Id</th>
		<th>Coupon Code</th>
		<th>Number of times allowed</th>
		<th>Number of times used</th>
		<th>Amount after Discount</th>
		<th>Created On</th>
		<th>Action</th>
	</tr>
</thead>
	<tbody id="couponTableDetails">
	
		<c:forEach items="${couponList}" var="coupon" varStatus="i">
			
			<script>
			count=count+1;
			</script>
		<tr id="couponRow${i.index}">
			<td><span id="couponId${i.index}"> <c:out value="${coupon.id}"/> </span></td>
			
			<td><span id="couponCode${i.index}"> <c:out value="${coupon.couponCode}"/> </span></td>
			
			<td><span id="couponNumb${i.index}"> <c:out value="${coupon.numbAllowed}"/> </span></td>
			
			<td><span id="couponNumb${i.index}"> <c:out value="${coupon.redeemedNumb}"/> </span></td>
			
			<td><span id="couponAmnt${i.index}"> <c:out value="${coupon.amount}"/> </span></td>
			
			<td><span id="couponDate${i.index}"> <c:out value="${coupon.dateTime}"/> </span></td>
			
			<td><button onclick="deleteCoupon('${coupon.couponCode}',${i.index});">Delete</button></td>
			
		</tr>
		
		</c:forEach>
	
	

	</tbody>
</table>

<br><br><br><br><br><br><br>

<div class="footer">Admin Login Daniel</div>

<style>

.footer{
position: fixed;
  left: 0;
  bottom: 0;
  width: 100%;
  background-color: grey;
  color: white;
  text-align: center;
}

</style>