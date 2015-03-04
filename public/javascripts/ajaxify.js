$(document).ready(function(){
  $('input[type=submit]#login').on('click', function(event){
    
    event.preventDefault();

    var myData = $(event.target).closest('form').serialize();

    $.ajax({
      url: '/auth/login.json',
      type: 'POST',
      data: myData,
      success: function(response){ 
         window.location.replace(response.new_route);
      },
      error: function(response){   
          errorWidget.showMessage('sww'); 
      }
    });

  });
});
