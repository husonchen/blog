$("#dir").click();
function getDir(){
	$.ajax({
        type: "GET",
        url: "",
        data: {start:$('#datetimepicker1').val(),end:$('#datetimepicker2').val(),stream:$('#stream').val()},
        dataType: "json",
        success: function(data){
            sendbuffOption.series[0].data = data;
            sendbuffOption.series[0].name = $('#stream').val();
            $('#sendbuffChart').highcharts(sendbuffOption);
        }
    })
}