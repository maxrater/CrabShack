var errorWidget = {
  errorMessages:   {
    sww: 'Something Went Wrong',
    upi: 'Invluad Username or Password',
    naa: 'Not Allowed Access'      
   },
   defaultMessage:  'sww',
   showMessage:     function(messageCode){
      msgText = messageCode == undefined ? this.errorMessages[this.defaultMessage] : this.errorMessages[messageCode];
      document.getElementById('error').innerHTML = msgText; 
      document.getElementById('error').classList.remove('hide');
     
   },
   hideMessage: function(){
    document.getElementById('error').classList.add('hide');
  }

};

function getParameterByName(name) {
  name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
  var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
  results = regex.exec(location.search);
  return results === null ? undefined : decodeURIComponent(results[1].replace(/\+/g, " "));
}

window.addEventListener('load',function(){
  var err = getParameterByName('error');
  if( err != undefined )
    errorWidget.showMessage(err)
});

