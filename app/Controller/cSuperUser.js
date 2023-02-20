var profilePicturePath="";

function isValidDate(dateString) {
  var regEx = /^\d{4}-\d{2}-\d{2}$/;
  if(!dateString.match(regEx)) return false;  // Invalid format
  var d = new Date(dateString);
  if(!d.getTime()) return false; // Invalid date (or this could be epoch)
  return d.toISOString().slice(0,10) === dateString;
}

var validateRePasswordFn = function(){
	var message;
	if($("#passwordTxt").val()!=$("#rePasswordTxt").val()){
		message+="Password Incorrect\n";
		alert(message);
		return false;
	}else{
	return true;	
	}
	
}
var validateFn_bk = function(){
	var message="";

	// emailTxt
	// passwordTxt
	if($("#emailTxt").val()==""){
		message+="Pleae fill E-mail.\n";
	}
	if($("#actionEnrollment").val()=="add"){
		if($("#passwordTxt").val()==""){
			message+="Pleae fill Password.\n";
		}
	}

	if($("#titleTxt").val()==""){
		message+="Pleae fill Title.\n";
	}

	if($("#fristNameTxt").val()==""){
		message+="Pleae fill Frist name.\n";
	}

	if($("#lastNameTxt").val()==""){
		message+="Pleae fill Last name.\n";
	}
	if($("#positionTxt").val()==""){
		message+="Pleae fill Position.\n";
	}

	

	if(message!=""){
		alert(message);
		return false;
	}else{
		return true;
	}

}


/* Example Uses */
//console.log(isValidDate("0000-00-00"));  // false
//console.log(isValidDate("2015-01-40"));  // false
//console.log(isValidDate("2016-11-25"));  // true
//console.log(isValidDate("2016-02-29"));  // true = leap day
//console.log(isValidDate("2013-02-29"));  // false = not leap day

function isValidEmail(emailText) {
    var pattern = new RegExp(/^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/i);
    return pattern.test(emailText);
};

var validateEnrollmentFn=function(){
		var validate="";

		if($("#emailTxt").val()==""){
	 		validate+="กรุณากรอกชื่อผู้ใช้ \n";
	 	}
		else if( !isValidEmail($("#emailTxt").val()) ){ 
	 		validate+="ชื่อผู้ใช้ไม่ถูกต้อง(ตัวอย่าง abc@gmail.com)\n";
	 	}
	 	if($("#actionEnrollment").val()=="add"){
		 	if($("#passwordTxt").val()==""){
		 		validate+="กรุณากรอกรหัสผ่าน \n";
		 	}
	 	}

		if($("#fristNameTxt").val()==""){
			validate+="กรุณากรอกชื่อ \n";
		}

		if($("#lastNameTxt").val()==""){
			validate+="กรุณากรอกนามสกุล \n";
		}

		if($("#subDistrictTxt").val()==""){
			validate+="กรุณากรอกตำบล \n";
		}

		if($("#districtTxt").val()==""){
			validate+="กรุณากรอกอำเภอ \n";
		}

		if($("#roleText").val()==99){
			
			if($("#demarcateTxt").val()==""){
				validate+="กรุณากรอกชื่อเขต \n";
			}
		}

		



	 	if($("#setChangePass").is(":checked")==true){
	
		
			if($("#passwordTxt").val()!=$("#rePasswordTxt").val()){
				validate+="รหัสผ่านไม่ตรงกัน\n";
				
			}
		}

		
	 	
	 	return validate;
	}
var delEnrollmentFn = function(profileID){
	
	$.ajax({
		url:restURL+"/api/public/profile/"+profileID,
		type:"delete",
		dataType:"json",
		headers:{Authorization:"Bearer "+sessionStorage.getItem('galbalToken')},
		success:function(data){
			//console.log(data);
			if(data.status==200){
				getEnrollmentDataFn();
			}
			
		},
		error: function (error) {
			alert("Unable to delete file: being used by another program.");
		}
	});
}

var clearEnrollmentDataFn = function(){
	
	$("#emailTxt").val("");
	$("#passwordTxt").val("");
	
	$("#titleTxt").prop("selectedIndex", 0);
	$("#fristNameTxt").val("");
	$("#lastNameTxt").val("");
	$("#positionTxt").val("");
	$("#genderM").prop("checked", true)
	$("#nationalityTxt").val("");
	$("#dateOfBirthTxt").val("");
	$("#religionTxt").val("");
	$("#addressTxt").val("	");
	$("#activeTxt").prop("checked",true);
	$("#actionEnrollment").val("add");
	$("#idEnrollment").val("");
	$("#listBlackListPicture").hide();

	$("#subDistrictTxt").val("");
	$("#districtTxt").val("");
	$("#demarcateTxt").val("");

	$("#roleText").prop("selectedIndex", 0);
	$("#roleText").prop("disabled",false);
	$("#demarcateArea").show();
	
}

var findOneEnrollmentDataFn = function(profileID){
	$.ajax({
		url:restURL+"/api/public/profile/"+profileID,
		type:"get",
		dataType:"json",
		headers:{Authorization:"Bearer "+sessionStorage.getItem('galbalToken')},
		success:function(data){
			//console.log(data);
		
			

			$("#emailTxt").val(data['email']);
			//$("#passwordTxt").val(data['password']);
			//$("#rePasswordTxt").val(data['password']);
			$("#titleTxt").val(data['TITLE']);
			$("#fristNameTxt").val(data['FIRST_NAME']);
			$("#lastNameTxt").val(data['LAST_NAME']);
			$("#genderM").prop("checked", true)
			$("#dateOfBirthTxt").val(data['DATE_OF_BIRTH']);
			$("#positionTxt").val(data['POSITION']);
			$("#addressTxt").val(data['ADDRESS']);
			$("#actionEnrollment").val("edit");
			$("#idEnrollment").val(data['profile_id']);

			$("#subDistrictTxt").val(data['sub_district']);
			$("#districtTxt").val(data['district']);


			if(profileID==37){
				$("#roleText").prop("disabled",true);
			}else{
				$("#roleText").prop("disabled",false);
			}

			

			
			
			
			
			
			if(data['ACTIVE_FLAG']=="1"){
			
				$("#activeTxt").prop("checked",true);
				
			}else{
				
				$("#activeTxt").prop("checked",false);
			}


			$("select#titleTxt select").val(data['title']);
			//alert(data['role']);
			//$("div#roleText select").val(data['role']);
			$('select#roleText  option[value="'+data['role']+'"]').prop("selected", true);
			$("#demarcateTxt").val(data['demarcate']);
			if(data['role']==99){
				$("#demarcateArea").show();
			}else{
				$("#demarcateArea").hide();
			}

			

			
			
			
			
		}
	});
};
var listEnrollmentDataFn = function(data){
	/*listDataEnrollmentArea*/
	var html="";
	$.each(data,function(index,indexEntry){
				 

if(indexEntry['role']=="1"){
	html+="<tr class='gadeA'>";//นายก อบต.
}else if(indexEntry['role']=="2"){
	html+="<tr class='gadeA'>";//กำนันคนปัจจุบัน
}else if(indexEntry['role']=="3"){
	html+="<tr class='gadeB'>";//รองนายก อบต.
}else if(indexEntry['role']=="4"){
	html+="<tr class='gadeB'>";//ประธานสภา อบต.
}else if(indexEntry['role']=="5"){
	html+="<tr class='gadeB'>";//รองประธานสภา อบต.
}else if(indexEntry['role']=="6"){
	html+="<tr class='gadeB'>";//ผู้ใหญ่บ้าน
}else if(indexEntry['role']=="7"){
	html+="<tr class='gadeB'>";//ส.อบต.
}else if(indexEntry['role']=="8"){
	html+="<tr class='gadeB'>";//อดีตนายก อบต.
}else if(indexEntry['role']=="9"){
	html+="<tr class='gadeB'>";//อดีตกำนัน
}else if(indexEntry['role']=="10"){
	html+="<tr class='gadeC'>";//อดีต ส.อบต.
}else if(indexEntry['role']=="11"){
	html+="<tr class='gadeC'>";//สารวัตรกำนัน
}else if(indexEntry['role']=="12"){
	html+="<tr class='gadeC'>";//อดีตผู้ใหญ่บ้าน
}else if(indexEntry['role']=="13"){
	html+="<tr class='gadeD'>";//ผู้นำชุมชน
}else if(indexEntry['role']=="14"){
	html+="<tr class='gadeD'>";//อสม.
}else if(indexEntry['role']=="15"){
	html+="<tr class='gadeD'>";//อื่นๆ
}else if(indexEntry['role']=="0"){
	html+="<tr class='gadeAA'>";//---- ผู้ดูแลระบบ ----
}else if(indexEntry['role']=="99"){
	html+="<tr class='gadeA'>";//---- ตัวแทนเขต ----
}
	
		//html+="<td style='text-align:center;'> <img width=\"39px;\" src=\"img/profile_small.jpg\" class=\"img-circle\" alt=\"image\"></td>";
		html+="<td> "+(index+1)+"</td>";
		//html+="<td> "+indexEntry['TITLE']+"</td>";
		html+="<td> "+indexEntry['TITLE']+""+indexEntry['FIRST_NAME']+" "+indexEntry['LAST_NAME']+"</td>";
		html+="<td>"+indexEntry['sub_district']+"</td>";
		html+="<td>"+indexEntry['district']+"</td>";
		
		html+="<td>";

		html+=getRoleNameFn(indexEntry['role']);
		if(indexEntry['role']==99){
			html+="("+indexEntry['demarcate']+")";
		}
		html+="</td>";

		html+="<td>";

		if(indexEntry['ACTIVE_FLAG']==1){
			html+="อนุญาต";
		}else{
			html+="ไม่อนุญาต";
		}
			
		
		html+="</td>";
		
		
		
		html+="<td  style='text-align:center;'>";  
		
		html+="<button id='edit-"+indexEntry['PROFILE_ID']+"' class='btn btn-warning edit' style='margin-right:3px;'>";
		html+="<i class='fa fa-pencil'></i>";
		html+="</button>";
		

		if(indexEntry['PROFILE_ID']!=37){
		html+="<button id='id-"+indexEntry['PROFILE_ID']+"' class='btn btn-danger del'  >";
		html+="<i class='fa fa-trash-o'></i>";
	    html+="</button>";
		}
		html+="</td>";
		
	html+="</tr>";
	
	
	});
	/* comment here for disable line.*/
	$("#listDataEnrollmentArea").html(html);

	var table=$('#userDataTable').DataTable();
	

	// $("#userDataTable_filter label input").val("");
	// $('div.dataTables_filter input').attr( 'type', 'text' ).val("");
	
	
	//maanage
	$(document).off("click",".edit");
	$(document).on("click",".edit",function(){
		
		var id=this.id.split("-");
		id=id[1];
		//alert(id);
		$("#enrollmentModal").modal("show");
		findOneEnrollmentDataFn(id);


		$(".changePasswordControlArea").show();
		$("#setChangePass").prop("checked",false);
		$(".changePasswordArea").hide();
		$("#setChangePass").click(function(){
			if ($(this).is(":checked"))
			{
			  // it is checked
			  	$(".changePasswordArea").show();
			}else{
				$(".changePasswordArea").hide();
			}
		});

		
		
	});
	$(document).off("click",".del");
	$(document).on("click",".del",function(){
		var id=this.id.split("-");
		id=id[1];
		if(confirm("ยืนยันการลบข้อมูล")){
			delEnrollmentFn(id);	
			//delPictureEnrollmentFn(id);
		}
	});
	
  
	
}

var getEnrollmentDataFn = function(){

	$.ajax({
		url:restURL+"/api/public/profile/get_demarcate_and_admin",
		type:"get",
		dataType:"json",
		async:false,
		headers:{Authorization:"Bearer "+sessionStorage.getItem('galbalToken')},
		success:function(data){
			listEnrollmentDataFn(data);
			
			
			
		}
	});
	
}

var listMilitaryRankDataFn = function(data){
		var html="";
		$.each(data,function(index,indexEntry){
			if(index==0){
				html+="<option selected='selected' value='"+indexEntry['military_rank']+"'>"+indexEntry['military_rank']+"</option>";
			}else{
				html+="<option value='"+indexEntry['military_rank']+"'>"+indexEntry['military_rank']+"</option>";
			}
			
		});

		$("#titleTxt").html(html);
		$("#titleTxt").prop("selectedIndex", 0);

}
var getMilitaryRankDataFn = function(){

	$.ajax({
		url:restURL+"/api/public/profile/military_rank",
		type:"get",
		dataType:"json",
		async:false,
		headers:{Authorization:"Bearer "+sessionStorage.getItem('galbalToken')},
		success:function(data){
			listMilitaryRankDataFn(data);
			
			
			
		}
	});
	
}


var enrollmentInsertFn = function(){
	var activeTxt="";
	if($("#activeTxt").prop("checked")==true){
		activeTxt="1";
	}else{
		activeTxt="0";
	}
	/*
	alert($("#cardIdTxt").val());
	alert($("#passportIDTxt").val());
	alert($("#titleTxt").val());
	alert($("#fristNameTxt").val());
	alert($("#lastNameTxt").val());
	alert($(".genderTxt:checked").val());
	alert($("#nationalityTxt").val());
	alert($("#dateOfBirthTxt").val());
	alert($("#religionTxt").val());
	alert($("#addressTxt").val());
	alert(activeTxt);
	*/
	//validateFn();
	$.ajax({
		url:restURL+"/api/public/profile",
		type:"post",
		dataType:"json",
		data:{
			"EMAIL":$("#emailTxt").val(),
			"PASSWORD":$("#passwordTxt").val(),
			"TITLE":$("#titleTxt").val(),
			"FIRST_NAME":$("#fristNameTxt").val(),
			"LAST_NAME":$("#lastNameTxt").val(),
			"GENDER":$(".genderTxt:checked").val(),
			"POSITION":$("#positionTxt").val(),
			"DATE_OF_BIRTH":$("#dateOfBirthTxt").val(),
			"ADDRESS":$("#addressTxt").val(),
			"ACTIVE_FLAG":activeTxt,
			"role":$("#roleText").val(),
			"CREATED_BY":sessionStorage.getItem('galbalUsername'),

			"sub_district":$("#subDistrictTxt").val(),
			"district":$("#districtTxt").val(),
			"demarcate":$("#demarcateTxt").val()
			

			
		},
		headers:{Authorization:"Bearer "+sessionStorage.getItem('galbalToken')},
		success:function(data){
			//console.log(data);
			if(data.status==200){
			
					$("#enrollmentModal").modal("hide");
					getEnrollmentDataFn();

			}else if(data.status==400){
				if(data.data.EMAIL[0]!=''){
					alert(data.data.EMAIL[0]);
				}
				//console.log();
				
			}
		}
	});
		
}

var enrollmentUpdateFn = function(){
	//validateFn();
	var activeTxt="";
	var passwordTxt="";
	if($("#activeTxt").prop("checked")==true){
		activeTxt="1";
	}else{
		activeTxt="0";
	}

	if($("#setChangePass").prop("checked")==true){
		passwordTxt=$("#passwordTxt").val()
	}else{
		passwordTxt="";
	}

	//alert($("#roleText").val());
	
	$.ajax({
		url:restURL+"/api/public/profile/"+$("#idEnrollment").val(),
		type:"patch",
		dataType:"json",
		data:{
		    "email":$("#emailTxt").val(),
		    "password":passwordTxt,
			"TITLE":$("#titleTxt").val(),
			"FIRST_NAME":$("#fristNameTxt").val(),
			"LAST_NAME":$("#lastNameTxt").val(),
			"GENDER":$(".genderTxt:checked").val(),
			"POSITION":$("#positionTxt").val(),
			"DATE_OF_BIRTH":$("#dateOfBirthTxt").val(),
			"ADDRESS":$("#addressTxt").val(),
			"ACTIVE_FLAG":activeTxt,
			"role":$("#roleText").val(),
			"CREATED_BY":sessionStorage.getItem('galbalUsername'),
			"sub_district":$("#subDistrictTxt").val(),
			"district":$("#districtTxt").val(),
			"demarcate":$("#demarcateTxt").val()
		
		},
		headers:{Authorization:"Bearer "+sessionStorage.getItem('galbalToken')},
		success:function(data){
			//console.log(data);
			if(data.status==200){
				$("#enrollmentModal").modal("hide");
				getEnrollmentDataFn();
			}
		}
	});
		
}
$(document).ready(function(){
	

	//getConfigDataFn();
	//alert(profilePicturePath);
	
	$("#addEnrollment").click(function(){
		clearEnrollmentDataFn();
		$("#enrollmentModal").modal("show");

		$(".changePasswordControlArea").hide();
		$(".changePasswordArea").show();
		
	});
	
	 
	
	 
	 
	 //get data
	 getEnrollmentDataFn();
	 getMilitaryRankDataFn();
	 
	$("#btnSubmit").click(function(){
		
		if(validateEnrollmentFn()!=""){
			alert(validateEnrollmentFn());
			return false;
		}
		if($("#actionEnrollment").val()=="add"){
			

			enrollmentInsertFn();

		}else{
			enrollmentUpdateFn();
		}
		
		
		
	
	});
	$("#btnReset").click(function(){
		clearEnrollmentDataFn();
		$("#btnImageReset").click();
	});


	$("#roleText").change(function(){
		if($(this).val()==99){
			$("#demarcateArea").show();
		}else{
			$("#demarcateArea").hide();
		}
	});
	
	
	
	
	
	
	
	
});