function insert(obj){
    $.ajax({
        url: '/ajax/table_data/',
        data: {
            'user_id' :id_user
        },
        datatype: 'json',
        success: function (data) {
            count_loop = data.mistake_data.num
            for (let i = 0; i < count_loop;i++ ){
                var table = document.getElementById("id_tbody");
                var row = table.insertRow(0);
                var cell1 = row.insertCell(0);
                var cell2 = row.insertCell(1);
                var cell3 = row.insertCell(2);
                var cell4 = row.insertCell(3);
                correct_word = data.mistake_data.result[i][0]
                chinese = data.mistake_data.result[i][1]
                user_input = data.mistake_data.result[i][2]
                time = data.mistake_data.result[i][3]
                cell1.innerHTML = correct_word;
                cell2.innerHTML = chinese
                cell3.innerHTML = user_input;
                cell4.innerHTML = time;
            }
        }
})
}

function clear_table(obj){
    $.ajax({
        url: '/ajax/clear_table/',
        data:{
            'user_id' : id_user
        },
        datatype: 'json',
        success: function (result) {
            if (result == 1){
                $("#id_clear").html("<span style='color:Yellow'>Successfully Cleared Mistake Book!</span>");
            }
        }

    })
}