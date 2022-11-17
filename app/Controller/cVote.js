var profilePicturePath="";

/*
id
first_name
last_name
id_card
no_address
group_address
sub_district
district
tel
*/

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
var validateFn = function(){
	var message="";

	// emailTxt
	// passwordTxt
	if($("#emailTxt").val()==""){
		message+="Pleae fill E-mail.\n";
	}
	if($("#actionVoter").val()=="add"){
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


var validateVoterFn=function(){
		var validate="";

		if($("#firstNameTxt").val()==""){
	 		validate+="กรุณากรอกชื่อ\n";
	 	}

		if($("#lastNameTxt").val()==""){
			validate+="กรุณากรอกนามสกุล \n";
		}

		if($("#idCardTxt").val()==""){
			validate+="กรุณากรอกรหัสบัตรประชาชน \n";
		}

		if($("#noAddressTxt").val()==""){
			validate+="กรุณากรอกบ้านเลขที่ \n";
		}
		if($("#groupAddressTxt").val()==""){
			validate+="กรุณากรอกหมู่ที่. \n";
		}

		if($("#subDistrictTxt").val()==""){
			validate+="กรุณากรอกตำบล \n";
		}

		if($("#districtTxt").val()==""){
			validate+="กรุณากรอกอำเภอ \n";
		}

	 	

		
	 	
	 	return validate;
	}
var delVoterFn = function(voterID){
	
	$.ajax({
		url:restURL+"/api/public/voter/"+voterID,
		type:"delete",
		dataType:"json",
		headers:{Authorization:"Bearer "+sessionStorage.getItem('galbalToken')},
		success:function(data){
			//console.log(data);
			if(data.status==200){
				getVoterDataFn();
			}
			
		},
		error: function (error) {
			alert("Unable to delete file: being used by another program.");
		}
	});
}

var clearVoterDataFn = function(){
	
	$("#firstNameTxt").val("");
	$("#lastNameTxt").val("");
	$("#idCardTxt").val("");
	$("#noAddressTxt").val("");
	$("#groupAddressTxt").val("");
	$("#subDistrictTxt").val("");
	$("#districtTxt").val("");
	
	
	
}

var findOneVoterDataFn = function(voterID){
	$.ajax({
		url:restURL+"/api/public/voter/"+voterID,
		type:"get",
		dataType:"json",
		headers:{Authorization:"Bearer "+sessionStorage.getItem('galbalToken')},
		success:function(data){
			//console.log(data);
		
			

			$("#firstNameTxt").val(data['first_name']);
			$("#lastNameTxt").val(data['last_name']);
			$("#idCardTxt").val(data['id_card']);
			$("#noAddressTxt").val(data['no_address']);
			$("#groupAddressTxt").val(data['group_address']);
			$("#subDistrictTxt").val(data['sub_district']);
			$("#disDistrictTxt").val(data['district']);

			$("#actionVoter").val("edit");
			
		}
	});
};

var listVoterDataFn = function(data){
	/*listDataVoterArea*/
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
		}	     
	
		html+="<td> "+(index+1)+"</td>";
		html+="<td> "+indexEntry['title']+""+indexEntry['first_name']+" "+indexEntry['last_name']+"</td>";
		html+="<td>"+indexEntry['id_card']+"</td>";
		html+="<td>"+indexEntry['no_address']+"</td>";
		html+="<td>"+indexEntry['group_address']+"</td>";
		html+="<td>"+indexEntry['sub_district']+"</td>";
		html+="<td>"+indexEntry['district']+"</td>";
		html+="<td>"+indexEntry['tel']+"</td>";
		html+="<td>"+indexEntry['profile_first_name']+" "+indexEntry['profile_last_name']+"</td>";
		html+="<td>"+indexEntry['profile_role']+"</td>";


		html+="<td  style='text-align:center;'>";  

		html+="<button id='edit-"+indexEntry['PROFILE_ID']+"' class='btn btn-warning edit' style='margin-right:3px;'>";
		html+="<i class='fa fa-pencil'></i>";
		html+="</button>";
		html+="<button id='id-"+indexEntry['PROFILE_ID']+"' class='btn btn-danger del'  >";
		html+="<i class='fa fa-trash-o'></i>";
	    html+="</button>";

		html+="</td>";
		
	html+="</tr>";
	
	
	});
	/* comment here for disable line.*/
	$("#listDataVoterArea").html(html);




	var table=$('#userDataTable').DataTable();
	

	
	
	//maanage
	$(document).off("click",".edit");
	$(document).on("click",".edit",function(){
		
		var id=this.id.split("-");
		id=id[1];
		//alert(id);
		$("#voterModal").modal("show");
		findOneVoterDataFn(id);
		
	});
	$(document).off("click",".del");
	$(document).on("click",".del",function(){
		var id=this.id.split("-");
		id=id[1];
		if(confirm("ยืนยันการลบข้อมูล")){
			delvoterFn(id);	
			//delPicturevoterFn(id);
		}
	});
	
}

var getVoterDataFn = function(){

	$.ajax({
		url:restURL+"/api/public/voter/index",
		type:"get",
		dataType:"json",
		async:false,
		headers:{Authorization:"Bearer "+sessionStorage.getItem('galbalToken')},
		success:function(data){
			listVoterDataFn(data);
			
		}
	});
	
}




var voterInsertFn = function(){
	/*
	$("#firstNameTxt").val(data['first_name']);
	$("#lastNameTxt").val(data['last_name']);
	$("#idCardTxt").val(data['id_card']);
	$("#noAddressTxt").val(data['no_address']);
	$("#groupAddressTxt").val(data['group_address']);
	$("#subDistrictTxt").val(data['sub_district']);
	$("#disDistrictTxt").val(data['district']);
	*/
	
	validateFn();
	$.ajax({
		url:restURL+"/api/public/voter",
		type:"post",
		dataType:"json",
		data:{
			"first_name":$("#firstNameTxt").val(),
			"last_name":$("#lastNameTxt").val(),
			"id_card":$("#idCardTxt").val(),
			"no_address":$("#noAddressTxt").val(),
			"group_address":$("#groupAddressTxt").val(),
			"sub_district":$("#subDistrictTxt").val(),
			"district":$("#districtTxt").val(),
			"profile_id":$("#profileIdTxt").val(),
			
		},
		headers:{Authorization:"Bearer "+sessionStorage.getItem('galbalToken')},
		success:function(data){
			//console.log(data);
			if(data.status==200){
			
					$("#voterModal").modal("hide");
					getVoterDataFn();

			}
		}
	});
		
}

var voterUpdateFn = function(){
	validateFn();
	
	$.ajax({
		url:restURL+"/api/public/voter/"+$("#idvoter").val(),
		type:"patch",
		dataType:"json",
		data:{
		    "first_name":$("#firstNameTxt").val(),
			"last_name":$("#lastNameTxt").val(),
			"id_card":$("#idCardTxt").val(),
			"no_address":$("#noAddressTxt").val(),
			"group_address":$("#groupAddressTxt").val(),
			"sub_district":$("#subDistrictTxt").val(),
			"district":$("#districtTxt").val(),
		
		},
		headers:{Authorization:"Bearer "+sessionStorage.getItem('galbalToken')},
		success:function(data){
			//console.log(data);
			if(data.status==200){
				$("#voterModal").modal("hide");
				getVoterDataFn();
			}
		}
	});
		
}
$(document).ready(function(){
	
	
	$("#addVoter").click(function(){
		clearVoterDataFn();
		$("#voterModal").modal("show");
	});
	
 
	 //get data
	 getVoterDataFn();

	 
	$("#btnSubmit").click(function(){
		
		if(validateVoterFn()!=""){
			alert(validateVoterFn());
			return false;
		}
		if($("#actionVoter").val()=="add"){
			

			VoterInsertFn();

		}else{
			VoterUpdateFn();
		}
		
		
		
	
	});
	$("#btnReset").click(function(){
		clearVoterDataFn();
		
	});

    

	
});

