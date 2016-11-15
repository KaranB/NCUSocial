$(document).ready(function() {
    $(".button-collapse").sideNav();
    
    $('select').material_select();
    
    $("#rmvBtn").on("click", function() {
	  $('input[name="test[]"]:checked').closest('tr').remove();
     });
    
    $("#checkall").change(function () {
	  $("input:checkbox").prop('checked', $(this).prop("checked"));
     });
});