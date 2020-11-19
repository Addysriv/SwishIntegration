<div class="container" id="mobileContainer">
	           <div class="row">
			         <div class="col-sm-12">
				          <p id="questionColumnMob" class="modalText" style="text-align:inherit !important;margin-left: 2% !important;"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <br>
		      
	          	 <div class="row" id="optionsRowDivMob" style="margin-left: 4%;">
	          	    <div class="col-sm-2"></div>
	          	   <!-- <div class="inaccDivMob" >
	          	   <span id="veryInaccurateMob" style="color: grey;font-family: Avenir next, sans-serif;font-size: 17px;">
	          	   		<spring:message code="label.inaccurate" /> &nbsp; &nbsp;&nbsp;</span></div>
	          	    -->		
	          	   <div class="col-sm-1 ">
	          	   		<div class="">
								<input type="radio" id="q1_rd_1Mob" name="radioQues" value="1" onclick="changeNextCss();">
    								<label class="roleMob" for="q1_rd_1Mob"><span id="veryInaccurateMob" 
    								style="color: #2d2d2d;font-family: Avenir next, sans-serif;font-size: 18px;position:relative;bottom:5px;">
	          	   			<spring:message code="label.inaccurate" /></span></label>
	          	   		</div>
	          	   		
					</div>
					<div class="col-sm-1 ">
									<div class="radioCommonDiv">
										<input type="radio" id="q1_rd_2Mob" name="radioQues"
											class="" value="2" onclick="changeNextCss();"> <label
											class="roleMob" for="q1_rd_2Mob"></label>
									</div>
								
					</div>	
					
					<div class="col-sm-1 " >
									<div class="radioCommonDiv">
										<input type="radio" id="q1_rd_3Mob" name="radioQues"
											class="" value="3" onclick="changeNextCss();"> <label
											class="roleMob" for="q1_rd_3Mob"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1 " >
									<div class="radioCommonDiv">
										<input type="radio" id="q1_rd_4Mob" name="radioQues"
											class="" value="4" onclick="changeNextCss();"> <label
											class="roleMob" for="q1_rd_4Mob"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1 " >
									<div class="radioCommonDiv">
										<input type="radio" id="q1_rd_5Mob" name="radioQues"
											class="" value="5" onclick="changeNextCss();"> <label
											class="roleMob" for="q1_rd_5Mob"><span id="veryAccurateMob" 
											style="color: #2d2d2d;font-family: Avenir next, sans-serif;font-size: 18px;position:relative;bottom:5px;">
					<spring:message code="label.accurate" /></span></label>
									</div>
					</div>
				<!-- 	<div class="accDivMob" >
					<span id="veryAccurateMob" style="color: grey;font-family: Avenir next, sans-serif;font-size: 17px;">&nbsp;&nbsp;
					&nbsp;&nbsp;<spring:message code="label.accurate" /></span></div> -->
				</div>		
				
			<br><br><br>
	           <div class="row" id="switchButtonsMob" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3" id="previousButtonDivMob">
	           		<button  class="vertical-center previousButtonMob" ><span class="previousTextMob" onclick="previousPage();">
	           		<spring:message code="label.goBack" /></span></button>
	           		
	           		<button  class="vertical-center nextButtonMob" onclick="nextPage();" ><span class="nextTextMob">
	           		<spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	        
	        <div class="row" id="submitButtonMob">
	           	<div class="col-sm-4"></div>
	           	<div class="col-sm-6" style="text-align: center;width: 90%;">
	           		<button  class="vertical-center submitButtonMob" onclick="submitAnswers();">
	           			<span class="nextTextMob" style="bottom: 1px !important;"><spring:message code="label.submit" /></span></button>
	           	</div>
	        </div>
	        
	         <br>
	    
	    	 <div class="container" >  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 76%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
</div>


<style>

.radioCommonDiv{
padding-bottom:2%;
}



    #q1_rd_1Mob:before{
       margin-left: 14%;
       margin-top: 15%;
    }
    
    #q1_rd_2Mob:before{
       margin-left: 14%;
       margin-top: 15%;
    }
    
    #q1_rd_3Mob:before{
       margin-left: 14%;
       margin-top: 15%;
    }
    
    #q1_rd_4Mob:before{
       margin-left: 14%;
       margin-top: 15%;
    }
    
    #q1_rd_5Mob:before{
      margin-left: 14%;
       margin-top: 15%;
    }
    
    .roleMob{
    margin-left: 9px;
    
    }
    
    
    .previousButtonMob{
	width: 30%;
    background-color: white;
    border-radius: 29px;
    border: solid 3px #515151;
    height: 40px;
    padding-bottom:3%;
}



.nextButtonMob{
	width: 30%;
    border-radius: 29px;
    border: solid 3px #2d2d2d;
    background-color: #2d2d2d;
    height: 40px;
    padding-bottom:3%;
}

.submitButtonMob{
    width: 35%;
    border-radius: 29px;
    border: solid 3px #2d2d2d;
    background-color: #2d2d2d;
    height: 40px;
    

}

.previousTextMob{
    font-family:  Avenir next, sans-serif;
    font-size: 12px;
    font-weight: bold;
    line-height: normal;
    text-align: center;
    color: #494949;
    position: relative;
    bottom: -2px;
}

.nextTextMob{
	font-family:  Avenir next, sans-serif;
    font-size: 12px;
    font-weight: bold;
    font-stretch: normal;
    font-style: normal;
    line-height: normal;
    text-align: center;
    color: #ffffff;
	position: relative;
    bottom: -2px;
}
    
#previousButtonDivMob{
width:90% !important;
text-align:center;
margin-left: 2%;
}    
    

@media only screen and (max-width: 386px){

.previousTextMob , .nextTextMob{
font-size:11px !important;
}

.previousButtonMob , .nextButtonMob{
width:40% !important;
}

}


</style>