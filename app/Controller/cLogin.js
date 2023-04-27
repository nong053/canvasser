$( document ).ajaxStart(function() {
	$("body").mLoading();
	//alert('mLoading');
});
$( document ).ajaxStop(function() {
	$("body").mLoading('hide');
});
$(document).ready(function(){
		
		
	
		
		$("#getToken").click(function(){
	
			alert(sessionStorage.getItem('galbalToken'));
		
		});
		
		
		
		$("#formSubmit").submit(function(){
		
			
			$.ajax({
				url:restURL+"/api/public/session",
				dataType:"json",
				type:"post",
				data:{"username":$("#username").val(),"password":$("#password").val()},
				async:false,
				success:function(data){
					
					//if(data.status==200){
						//console.log(data.token);
						sessionStorage.setItem('galbalToken', data.token);
						sessionStorage.setItem('galbalStatus', data.status);
						sessionStorage.setItem('galbalEmpId', data.profile_id);
						sessionStorage.setItem('galbalTitle', data.title);
						sessionStorage.setItem('galbalFirstName', data.first_name);
						sessionStorage.setItem('galbalLastName', data.last_name);
						sessionStorage.setItem('galbalPosition', data.position);
						sessionStorage.setItem('galbalRole', data.role);
						sessionStorage.setItem('galbalUsername', $("#username").val());

						if(data.role==0){
							window.location = "./app/#/pages/superuser-management";
						}else{
							window.location = "./app/#/pages/voter-fast";
						}

						
						
						
						
						
			
					// }else if(data.status==400){
					// 	alert(data.errorMassage);
					// }

				},
				error: function (xhr, ajaxOptions, thrownError) {
		        console.log(xhr.status);
		        console.log(thrownError);
		      	//alert(xhr.status+"\n"+thrownError);
				//alert(xhr.status);
				if(xhr.status===401){
					alert("username หรือ password ไม่ถูกต้อง");
				}else if(xhr.status==500){
					alert("ยังไม่อนุญาตให้ใช้งาน");
				}
      			}
			})
			
			return false;
			
			
		});
});