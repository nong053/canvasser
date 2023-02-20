
var listChauffeurReportDataFn = function(data){
	var html="";

	$.each(data,function(index,indexEntry){
		 html+="<tr>";
          html+="<td style='text-align:right'>";
           html+=(index+1);
          html+="</td>";
          html+="<td >"+indexEntry['chauffeur_name']+"</td>";
          html+="<td style='text-align:right'>"+indexEntry['count_trip']+"</td>";
          html+="<td style='text-align:right'>"+indexEntry['sum_trip']+"</td>";
        html+="</tr>";
	});
	$("#chauffeurReportList").html(html);
	$('#chauffeurReport').DataTable();
}

var getChauffeurReportFn = function(){
	$.ajax({
		url:restURL+"/api/public/chauffeur/report_chauffeur",
		type:"post",
		dataType:"json",
		data:{"date_from":$("#startDatePicker").val(),"date_to":$("#toDatePicker").val()},
		 headers:{Authorization:"Bearer "+sessionStorage.getItem('galbalToken')},
		 cache: false,
		 async:true,
		success:function(data){
		
		$("#startDateTxt").html($("#startDatePicker").val());
		$("#endDateTxt").html($("#toDatePicker").val());
		listChauffeurReportDataFn(data);
		
      }

	});
}
$(document).ready(function(){
	
	$('#startDatePicker').val(firstDate);
	$('#startDatePicker').datepicker({
      autoclose: true,
      format: 'yyyy-mm-dd',
    })
	 $('#toDatePicker').val(currentDate);
    $('#toDatePicker').datepicker({
      autoclose: true,
      format: 'yyyy-mm-dd',
    })
    $("#btnSearch").click(function(){

    	getChauffeurReportFn();
    });
    
    $("#btnSearch").click();

});
