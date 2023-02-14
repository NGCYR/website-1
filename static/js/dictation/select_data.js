var g_correct_word
var all_words
var g_phonic_chinese
let g_word_list = []
let g_index_number = 0
var g_user_input
function data_selection(obj){
    g_word_id = $('id_phonic_chinese').val();
    $.ajax({
        url: '/ajax/data_select/',
        data: {
          'phonic_chinese' : g_word_id,
          'choice' : select_order
        },
        datatype: 'json',

        success: function (data) {
            g_phonic_chinese = data.phonic_chinese;
            g_correct_word = data.word
 
            $("#id_phonic_chinese").html(g_phonic_chinese);
        }
})
}

function user_data_selection(obj){
  g_word_id = $('id_phonic_chinese').val();
  $.ajax({
      url: '/ajax/user_data_select/',
      data: {
        'choice' : select_order,
        'user_id' : id_user
      },
      datatype: 'json',

      success: function (data) {
          g_word_list = data.all_words
          all_words_number = g_word_list.length
          g_correct_word = g_word_list[g_index_number][1]
          g_phonic_chinese = g_word_list[g_index_number][0]

          $("#id_phonic_chinese").html(g_word_list[g_index_number][0]);
      }
})
}

function judger(obj){
  g_user_input =  $('#id_word_input').val();
  if (select_order == 'false'){
    if (g_correct_word != g_user_input) {
      insert_to_mistake_book()
      $("#id_word_input").val("")
      data_selection()
    }
    else{
      $("#id_result").html("<span style='color:white;background-color:green' >Correct!</span>");
      $("#id_word_input").val("")
      data_selection()
      
    }
  }
  else{
    if (g_index_number < g_word_list.length){
      g_index_number += 1
    }
    else{
      g_index_number = 0
    }
    if (g_correct_word != g_user_input) {
      $("#id_phonic_chinese").html(g_word_list[g_index_number][0]);
      $("#id_word_input").val("")
      user_data_selection()
      insert_to_mistake_book()
    }
    else{
      $("#id_result").html("<span style='color:white;background-color:green' >Correct!</span>");
      $("#id_phonic_chinese").html(g_word_list[g_index_number][0]);
      $("#id_word_input").val("")
      user_data_selection()
    }
  }
  
  
}

function insert_to_mistake_book(obj){
    $.ajax({
      url: '/ajax/insert_data/',      
      //headers: { "X-CSRFtoken":$.cookie("csrftoken")},
      data: {
        'mistake': g_correct_word,
        'chinese': g_phonic_chinese,
        'user_input':g_user_input,
        'user_id':id_user
        //csrfmiddlewaretoken:$('[name="csrfmiddlewaretoken"]').val()
      },
      datatype: 'json',
      beforeSend:function(){
        $("#id_result").html("<span style='color:white;background-color:red' >Wrong Answer! Added to mistake book.</span>");
        return true;
      },
      })
  }
  

function select_in_order(obj){
  select_order='true'
  getParams()
  dictation_to_user()
  user_data_selection()
}