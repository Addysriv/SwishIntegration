

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>



<style>
.modalText{
	text-align: center;
	color: #2d2d2d;
	font-weight: bold;
}

.radioCss{
    transform: scale(1.5);
}
.custom-control-input:checked~.custom-control-label.red::before {
  background-color: #ff7d00;
}

.previousButton{
	width: 100%;
    
    border-radius: 29px;
    border: solid 3px #515151;
    
}


.nextButton{
	width: 100%;
    
    border-radius: 29px;
    border: solid 3px #2d2d2d;
    background-color: #2d2d2d;
}

.previousText{
    font-family: AvenirNext;
    font-size: larger;
    font-weight: bold;
    line-height: normal;
    text-align: center;
    color: #494949;
}

.nextText{
	font-family: AvenirNext;
    font-size: large;
    font-weight: bold;
    font-stretch: normal;
    font-style: normal;
    line-height: normal;
    text-align: center;
    color: #ffffff;
	
}

.custom-control-input:checked~.custom-control-label::before {
  color: #fff;
  border-color: #7B1FA2;
}

.custom-control-input:checked~.custom-control-label::before {
  background-color: red;
}

.custom-control-input:checked~.custom-control-label.green::before {
  background-color: green;
}


</style>





<spring:message code="label.ques1"  />



          <div id="page1" >
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" style="display: none;" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
         <div id="page1" style="display: none;">
	          
	           <div class="row" >
			         <div class="col-sm-12">
				          <p class="modalText"><br>
				          <spring:message code="label.ques1" />
				          </p>
			          </div>
		          </div>
		          
		         <div class="row" ><br></div>
		      
	          	 <div class="row" >
	          	    <div class="col-sm-2"></div>
	          	   <div class="" >
	          	   <span id="veryInaccurate" style="color: grey;">
	          	   <spring:message code="label.inaccurate" /> &nbsp;&nbsp;&nbsp;</span></div>
	          	   <div class="col-sm-1">
	          	   
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_1" name="ques1"
											class="custom-control-input" value="1"> <label
											class="custom-control-label red" for="rd_1"></label>
									</div>
					</div>
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_2" name="ques1"
											class="custom-control-input" value="2"> <label
											class="custom-control-label red" for="rd_2"></label>
									</div>
									
					</div>	
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_3" name="ques1"
											class="custom-control-input" value="3"> <label
											class="custom-control-label red" for="rd_3"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_4" name="ques1"
											class="custom-control-input" value="4"> <label
											class="custom-control-label red" for="rd_4"></label>
									</div>
									
					</div>
					
					<div class="col-sm-1">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="rd_5" name="ques1"
											class="custom-control-input" value="5"> <label
											class="custom-control-label red" for="rd_5"></label>
									</div>
					</div>
					<div class="col-sm-3">
					<span id="veryAccurate" style="margin-left: -10px;color: grey;">
					<spring:message code="label.accurate" /></span></div>
									
					</div>			
												          	
	           <div class="row" ><br><br><br></div>
	          
	           <div class="row" >
	           	<div class="col-sm-3"></div>
	           	<div class="col-sm-3">
	           		<button  class="vertical-center previousButton"><span class="previousText" onclick="nextPage(1);"><spring:message code="label.goBack" /></span></button>
	           	</div>
	           	 <div class="col-sm-3">
	           		<button  class="vertical-center nextButton" onclick="nextPage(2);"><span class="nextText"><spring:message code="label.next" /></span></button>
	           	</div>
	          
	        </div>
	         <div class="row" ><br><br></div>
	    
	    	 <div class="container">  <!-- 5 % on 6 questions --> 
			 	<div class="progress" style="background-color: rgba(255, 125, 0, 0.2);border-radius: 12px;width: 70%;margin-left: 16%;">
			   <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
			    	aria-valuemax="100" style="width:0%;background-color: #ff7d00;margin: 3px; border-radius: 12px;">
			   </div>
			 </div>
			</div>
			<div class="row" ><br><br><br><br></div>
			
        </div>
        
        