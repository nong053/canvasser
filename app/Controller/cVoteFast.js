var profilePicturePath="";
//BT v3.3.7
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



var validateVoterFn=function(){
		var validate="";

		if($("#firstNameTxt").val()==""){
	 		validate+="กรุณากรอกชื่อ\n";
	 	}

		if($("#lastNameTxt").val()==""){
			validate+="กรุณากรอกนามสกุล \n";
		}

		 if(checkID($("#idCardTxt").val())==false){
			validate+="กรุณากรอกเลขบัตรประชาชนให้ถูกต้อง \n";
		}

		if($("#noAddressTxt").val()==""){
			validate+="กรุณากรอกบ้านเลขที่ \n";
		}
		if($("#groupAddressTxt").val()==""){
			validate+="กรุณากรอกหมู่ที่ \n";
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
				//getVoterDataFn();
				getVoterDataFn(rpp=$("#rppByUser").val(),page=$("#pageByUser").val());
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
	$("#telTxt").val("");
	$("#actionVoter").val("add");
	
	
	
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
			$("#districtTxt").val(data['district']);
			$("#telTxt").val(data['tel']);

			$("#idVoter").val(data['id']);
			
			$("#actionVoter").val("edit");
			
		}
	});
};
function IsNumeric(num) {
	return Number.isInteger(num)
}
var managePaginationFn = function(current_page,from,last_page,next_page_url,per_page,prev_page_url,to,total){
	//totalPage,currentPage
	//alert(current_page+""+from+""+last_page+""+next_page_url+""+per_page+""+prev_page_url+""+total);
	
	var totalPage=total/per_page;

	
	
	if(!IsNumeric(totalPage)){
		totalPage+=1;
		totalPage=parseInt(totalPage);
	}

	
	var html="";
	for(var i=1;i<=totalPage;i++){
		if(i==current_page){
			html+="<option value='"+i+"' selected>หน้าที่ "+i+"</option>";
		}else{
			html+="<option value='"+i+"'>หน้าที่ "+i+"</option>";
		}
	}
	$("#pageByUser").html(html);
	$("#rppByUser").val(per_page);

}
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
		}else if(indexEntry['role']=="99"){
			html+="<tr class='gadeAA'>";//---- ผู้ดูแลระบบ ----
		}else {
			html+="<tr>";
		}	  	     
	
		html+="<td> "+(index+1)+"</td>";
		html+="<td class='fullname' id='fullname-"+indexEntry['id']+"'>"+jQuery.trim(indexEntry['first_name'])+" "+jQuery.trim(indexEntry['last_name'])+"</td>";
		html+="<td>"+indexEntry['id_card']+"</td>";
		html+="<td>"+indexEntry['no_address']+"</td>";
		html+="<td>"+indexEntry['group_address']+"</td>";
		html+="<td>"+indexEntry['sub_district']+"</td>";
		html+="<td>"+indexEntry['district']+"</td>";
		html+="<td>"+indexEntry['tel']+"</td>";
		
		

		html+="<td>"+indexEntry['profile_first_name']+" "+indexEntry['profile_last_name']+"</td>";

		html+="<td>";
		if(indexEntry['role']==99){
			html+=indexEntry['demarcate_super'];
		}else{
			html+=getRoleNameFn(indexEntry['role']);
		}
		
		if(indexEntry['role']==15){
			html+="("+indexEntry['other']+")";
		}
		html+="</td>";
		
		if(indexEntry['role']==99){
			html+="<td>"+indexEntry['demarcate_super']+"</td>";
		}else if(indexEntry['role']==0){
			html+="<td>Admin</td>";
		}else{
			html+="<td>"+indexEntry['demarcate']+"</td>";
		}
		
		



		html+="<td  style='text-align:center;'>";  

		html+="<button id='edit-"+indexEntry['id']+"' class='btn btn-warning edit' style='margin-right:3px;'>";
		html+="<i class='fa fa-pencil'></i>";
		html+="</button>";
		html+="<button id='id-"+indexEntry['id']+"' class='btn btn-danger del'  >";
		html+="<i class='fa fa-trash-o'></i>";
	    html+="</button>";

		html+="</td>";
		
	html+="</tr>";
	
	
	});
	/* comment here for disable line.*/
	$("#listDataVoterArea").html(html);
/*
	var table=$('#userDataTable').DataTable({
		paging: false,
		"pageLength": 50,
		retrieve: true,
		searching: false
		
	});
	$("#userDataTable_info").remove();
	*/
	


	
		
		
	
	
	

	
	
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
		
			delVoterFn(id);	
			//delPicturevoterFn(id);
		}
	});
	
}

var getVoterDataFn = function(rpp,page,searchData=""){
	
	
	$.ajax({
		url:restURL+"/api/public/voter",
		type:"get",
		data:{"role":sessionStorage.getItem('galbalRole'),
		"id":sessionStorage.getItem('galbalEmpId'),
		"searchData":searchData,
		"page":page,
		"rpp":rpp,
		"voterType":"new"

	},
		dataType:"json",
		async:false,
		headers:{Authorization:"Bearer "+sessionStorage.getItem('galbalToken')},
		success:function(data){
			listVoterDataFn(data['data']);
			managePaginationFn(data['current_page'],data['from'],data['last_page'],data['next_page_url'],data['per_page'],data['prev_page_url'],data['to'],data['total']);
		}
	});
	
}

var voterInsertFn = function(){
	
	
	validateVoterFn();
	var telTxt="";
	if($("#telTxt").val()!=""){
		telTxt=$("#telTxt").val();
	}
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
			"tel":telTxt,
			"profile_id": sessionStorage.getItem('galbalEmpId')
			
		},
		headers:{Authorization:"Bearer "+sessionStorage.getItem('galbalToken')},
		success:function(data){
			//console.log(data);
			if(data.status==200){
			
					$("#voterModal").modal("hide");
					//getVoterDataFn();
					getVoterDataFn(rpp=$("#rppByUser").val(),page=$("#pageByUser").val());

			}
		}
	});
		
}

var voterUpdateFn = function(){
	validateVoterFn();

	var telTxt="";
	if($("#telTxt").val()!=""){
		telTxt=$("#telTxt").val();
	}
	
	$.ajax({
		url:restURL+"/api/public/voter/"+$("#idVoter").val(),
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
			"tel":telTxt,
		
		},
		headers:{Authorization:"Bearer "+sessionStorage.getItem('galbalToken')},
		success:function(data){
			//console.log(data);
			if(data.status==200){
				$("#voterModal").modal("hide");
				//getVoterDataFn();
				getVoterDataFn(rpp=$("#rppByUser").val(),page=$("#pageByUser").val());
			}
		}
	});
		
}
var checkDuplicateNameFn = function(){
	
	$.ajax({
		url:restURL+"/api/public/voter/check_duplicate_name",
		type:"get",
		data:{"role":sessionStorage.getItem('galbalRole'),"id":sessionStorage.getItem('galbalEmpId'),
		rpp:$("#rppByUser").val(),
		page:$("#pageByUser").val(),
		"voterType":"new"
	},
		dataType:"json",
		async:false,
		headers:{Authorization:"Bearer "+sessionStorage.getItem('galbalToken')},
		success:function(data){
			listVoterDataFn(data['data']);
			managePaginationFn(data['current_page'],data['from'],data['last_page'],data['next_page_url'],data['per_page'],data['prev_page_url'],data['to'],data['total']);
			
		}
	});	
}

var checkDuplicateIdCardFn = function(){
	$.ajax({
		url:restURL+"/api/public/voter/check_duplicate_id_card",
		type:"get",
		data:{"role":sessionStorage.getItem('galbalRole'),
		"id":sessionStorage.getItem('galbalEmpId'),
		rpp:$("#rppByUser").val(),
		page:$("#pageByUser").val(),
		"voterType":"new"

	},
		dataType:"json",
		async:false,
		headers:{Authorization:"Bearer "+sessionStorage.getItem('galbalToken')},
		success:function(data){
			listVoterDataFn(data['data']);
			managePaginationFn(data['current_page'],data['from'],data['last_page'],data['next_page_url'],data['per_page'],data['prev_page_url'],data['to'],data['total']);
			
		}
	});	
}

$(document).ready(function(){
	
	

	$("#searchData").keyup(function(){
		$(".clickAction").removeClass("btn-info");
		$("#showAllData").removeClass("btn-default").addClass("btn-info");

		getVoterDataFn(rpp=$("#rppByUser").val(),page=$("#pageByUser").val(),$(this).val());
	});

	$("#rppByUser").change(function(){
		
		sessionStorage.setItem('rpp',$(this).val());
		if($("#param_action").val()=="checkDuplicateName"){
			checkDuplicateNameFn();
		}else if($("#param_action").val()=="checkDuplicateIdCard"){
			checkDuplicateIdCardFn();
		}else if($("#param_action").val()=="showAllData"){
			getVoterDataFn(rpp=$("#rppByUser").val(),page=$("#pageByUser").val());
		}
		
	});

	$("#pageByUser").change(function(){

		sessionStorage.setItem('page',$(this).val());
		if($("#param_action").val()=="checkDuplicateName"){
			checkDuplicateNameFn();
		}else if($("#param_action").val()=="checkDuplicateIdCard"){
			checkDuplicateIdCardFn();
		}else if($("#param_action").val()=="showAllData"){
			getVoterDataFn(rpp=$("#rppByUser").val(),page=$("#pageByUser").val());
		}
		//getVoterDataFn(rpp=$("#rppByUser").val(),page=$("#pageByUser").val());
	});


	$("#addVoter").click(function(){
		clearVoterDataFn();
		$("#voterModal").modal("show");
	});

	if(sessionStorage.getItem('galbalRole')==0 || sessionStorage.getItem('galbalRole')==99){
		$("#checkDuplicateName").show();
		$("#showAllData").show();
		$("#checkDuplicateIdCard").show();

	}else{
		$("#checkDuplicateName").hide();
		$("#showAllData").hide();
		$("#checkDuplicateIdCard").hide();
	}

	$("#checkDuplicateName").click(function(){
		
		//check_duplicate_name
		
		//rpp=$("#rppByUser").val(),page=$("#pageByUser").val()
		// $.ajax({
		// 	url:restURL+"/api/public/voter/check_duplicate_name",
		// 	type:"get",
		// 	data:{"role":sessionStorage.getItem('galbalRole'),"id":sessionStorage.getItem('galbalEmpId'),
		// 	rpp:$("#rppByUser").val(),
		// 	page:$("#pageByUser").val()
		// },
		// 	dataType:"json",
		// 	async:false,
		// 	headers:{Authorization:"Bearer "+sessionStorage.getItem('galbalToken')},
		// 	success:function(data){
		// 		listVoterDataFn(data['data']);
				
		// 	}
		// });	
		$(".clickAction").removeClass("btn-info");
		$(this).removeClass("btn-default").addClass("btn-info");
		
		checkDuplicateNameFn();
		$("#param_action").val("checkDuplicateName");
		$("#searchData").val("");
			
		
	});
	$("#checkDuplicateIdCard").click(function(){
		
		$(".clickAction").removeClass("btn-info");
		$(this).removeClass("btn-default").addClass("btn-info");
		checkDuplicateIdCardFn();
		$("#param_action").val("checkDuplicateIdCard");
		$("#searchData").val("");
		
	});

	$("#showAllData").click(function(){
		location.reload();
	});
 
	 //get data
	 getVoterDataFn(rpp=$("#rppByUser").val(),page=$("#pageByUser").val());
	 //getVoterDataFn();

	 
	$("#btnSubmit").click(function(){
		
		if(validateVoterFn()!=""){
			alert(validateVoterFn());
			return false;
		}
		if($("#actionVoter").val()=="add"){
			

			voterInsertFn();

		}else{
			voterUpdateFn();
		}
		
		
		
	
	});
	$("#btnReset").click(function(){
		clearVoterDataFn();
		
	});

    

	
});

