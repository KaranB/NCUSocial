$(document).ready(function() {
    $(".button-collapse").sideNav();
    
    $('select').material_select();
    

  });

$("#checkall").change(function () {
    $("input:checkbox").prop('checked', $(this).prop("checked"));
});

function deleteseleted(){
     var a = document.getElementsByName("checkbox");
     
     for(var i=0;i<a.length;i++){
	  
	  if(a[i].checked===true){
	       removeElm(a[i]);
	       
	  }
     }

}