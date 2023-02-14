var id_user
let select_order = 'false'
function do_userLogin(obj){
    g_user_id = $("#id_user_name").val();
    let user_pwd = $("#id_user_password").val();
    $.ajax({
        url: '/ajax/user_login/',
        headers: { "X-CSRFtoken":$.cookie("csrftoken")},
        type: 'POST',
        data: {
          'username': g_user_id,
          'user_password' : user_pwd,
          'user_id' : id_user,
          csrfmiddlewaretoken:$('[name="csrfmiddlewaretoken"]').val()
        },
        dataType: 'json',
        beforeSend:function()
        {
            return true;
        },

    success: function (data) {
        if (data.user_permitted == 1) {
            var d = new Date();

            let cname = "username=";
            let cvalue = g_user_id;
            let expires = "expires="+ d.toUTCString();
            document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
            id_user = data.user_id
            $("#id_title_username").html("<span class='glyphicon glyphicon-user'></span> " + g_user_id);
            $("#id_tip").html("<span style='color:blue'>Login success.</span>");

            $("#id_title_username").attr("style", "cursor:default");
            
            window.location.href = '/dictionary?user_id="' + id_user +'"&choice="'+select_order+'"';
        }else{
            g_user_id = "";
            g_current_vb_id = -1;
            $("#id_title_username").html("<span class='glyphicon glyphicon-log-in'></span> login");
            $("#id_tip").html("<span style='color:red'>Wrong user name or password.</span>");
        }

     }
  });
}


function createUser (obj){
    if (!$('#id_user_name').val()) {
        return false;
    }
    if (!$('#id_user_password').val()) {
        return false;
    }

    $.ajax({
        url: '/ajax/create_newUser/',
        headers: { "X-CSRFtoken":$.cookie("csrftoken")},
        type: 'POST',
        data: {
            'username': $('#id_user_name').val(),
            'user_password': $('#id_user_password').val(),
            'user_id':id_user,
             csrfmiddlewaretoken:$('[name="csrfmiddlewaretoken"]').val()
        },
        success: function (data, textStatus) {
            console.log(data);
            if (data.user_created == 1) {
                $("#id_tip").html("<span style='color:red'>New user was created. </span>");
                id_user = data.user_id
                window.location.href = '/dictionary?user_id="' + id_user +'"';
            } else if (data.user_created == -1) {
                $("#id_tip").html("<span style='color:red'>Create failed. </span>");
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            alert(errorThrown);
        }
    });

}

