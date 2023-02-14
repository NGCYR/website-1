function getParams(key){
    var reg = new RegExp("(^|&)"+key+"=([^&]*)(&|$)");
    var r = window.location.search.substr(1).match(reg);
    if(r != null){
      return unescape(r[2].replace("%22","").replace("%22",""));
    }
    return null;
  };
  id_user = getParams("user_id")
  select_order = getParams("choice")

function select_to_dictation(){
  window.location.href = '/dictation?user_id="' + id_user +'"&choice="'+select_order+'"';
}

function dictation_to_select(){
  window.location.href = '/dictionary?user_id="' + id_user +'"&choice="'+select_order+'"';
}

function select_to_mistakes(){
  window.location.href = '/mistakes?user_id="' + id_user +'"&choice="'+select_order+'"';
}

function mistakes_to_select(){
  window.location.href = '/dictionary?user_id="' + id_user +'"&choice="'+select_order+'"';
}

function select_to_wordlists(){
  window.location.href = '/wordlists?user_id="' + id_user +'"&choice="'+select_order+'"';
}

function wordlists_to_select(){
  window.location.href = '/dictionary?user_id="' + id_user +'"&choice="'+select_order+'"';
}

function wordlists_to_wordsimport(){
  window.location.href = '/wordsimport?user_id="' + id_user +'"&choice="'+select_order+'"';
}

function wordsimport_to_wordlists(){
  window.location.href = '/wordlists?user_id="' + id_user +'"&choice="'+select_order+'"';
}

function dictation_to_user(){
  window.location.href = '/dictation/user_wordlist?user_id="' + id_user +'"&choice="'+select_order+'"';
}

function user_to_select(){
  window.location.href = '/dictionary?user_id="' + id_user +'"&choice="'+select_order+'"';
}

function user_to_wordsimport(){
  window.location.href = '/wordsimport?user_id="' + id_user +'"&choice="'+select_order+'"';
}