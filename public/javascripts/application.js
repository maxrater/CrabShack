var errorModule = function(){

  var errorMessages = {
    sww: 'Something Went Wrong',
    upi: 'Invluad Username or Password',
    naa: 'Not Allowed Access'      
   };

  var defaultMessage = 'sww';

  var showMessage = function(messageCode){
    var msgText = messageCode == undefined ? errorMessages[defaultMessage] : errorMessages[messageCode];
    $('#error').text(msgText);
    $('#error').removeClass('hide');
  };

  var hideMessage = function(){
    $('#error').text('');
    $('#error').addClass('hide');
  };

  return{
    show: showMessage,
    hide: hideMessage
  };

}();





var errorWidget = {
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

var MangoPerson = function(params){
  this.name = params.name;
  this.mangos = params.mangos;
  this.sandals = params.sandals;

}
MangoPerson.prototype.cutMangos = function(){
  console.log('i cut up some mangos for check-in');
}

MangoPerson.planTree = function(){
  console.log(' I put a new mango tree in the ground ' );
}

