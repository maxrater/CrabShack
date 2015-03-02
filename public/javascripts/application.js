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

