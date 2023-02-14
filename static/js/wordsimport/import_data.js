var g_data
function import_words(obj){
    g_user_english = $('#id_user_english').val();
    g_user_chinese = $('#id_user_chinese').val();
    $.ajax({
        url: '/ajax/import_words/',
        data: {
            'user_english':g_user_english,
            'user_chinese':g_user_chinese,
            'user_id': id_user
        },
        datatype:'json',
        success:function (data) {
 
            $("#id_tip").html("<span style='color:Green'>Import Successful</span>");
        }
    })
}

function wordlist_table(obj){
    $.ajax({
        url: '/ajax/display_table/',
        data:{
            'user_id':id_user
        },
        datatype:'json',
        success:function (data) {
            g_data = data
            count_loop = data.wordlist_data.num
            for (let i = 0; i < count_loop;i++ ){
                var table = document.getElementById("id_wordlist_table");
                var row = table.insertRow(0);
                var cell1 = row.insertCell(0);
                var cell2 = row.insertCell(1);
                var cell3 = row.insertCell(2);
                user_english = data.wordlist_data.result[i][0]
                user_chinese = data.wordlist_data.result[i][1]
                //delete_object = getElementById("id_delete")
                //const delete_button = document.createElement("button");
                //const node = document.createTextNode("Delete this row");
                //delete_button.appendChild(node);
                //delete_object.appendChild(delete_button)
                cell1.innerHTML = "<input name='id_checkbox' type='checkbox' value='"+i+"' onclick='insert_to_list(this.value)'></input>";
                cell2.innerHTML = user_english;
                cell3.innerHTML = user_chinese;
        }
    }
    })
}


function insert_to_list(checkbox){
    var delete_list = [];
    delete_user_english = g_data.wordlist_data.result[checkbox][0]
    delete_user_chinese = g_data.wordlist_data.result[checkbox][1]
    if (checkbox.checked){
        delete_list.push(delete_user_english,delete_user_chinese);
        console.log(delete_list)

    }
    else{
        delete_list.remove(delete_user_english,delete_user_chinese);
    }
}


/*function delete_table_data(val){
    $.ajax({
        url: '/ajax/display_table/',
        data:{
            'user_id':id_user
        },
        datatype:'json',
        success:function(data){ 
            user_english = data.wordlist_data.result[val][0]
            user_chinese = data.wordlist_data.result[val][1]
            $.ajax({
                url: '/ajax/delete_row/',
                data:{
                    'user_id':id_user,
                    'user_english' : user_english,
                    'user_chinese' : user_chinese
                },
                datatype:'json',
                success:function(data){
                }

            })
        }
    })
}*/