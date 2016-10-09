$(function() {
    //点击侧边栏 切换内容
    $(document).ready(function() {
        $.ajax({
            url: './build/php/show.php',
            type: 'post',
            dataType: 'json',
            beforeSend: function() {
                $('.ulbox').empty(); //清空列表
            },
            success: function(data) {
                    inputData(data); //创建添加元素
                } //成功执行方法 
        })
    })

    $(".selete-box li").on("click", function() {
        $(this).siblings().removeClass("cur");
        $(this).addClass("cur");
        var id_ = $(this).children("label").attr('id');
        console.log(id_);
        if (id_ == "all") {
            $.ajax({
                //选择所有英雄
                url: './build/php/show.php',
                type: 'post',
                dataType: 'json',
                beforeSend: beforeShow,
                success: succShow //成功执行方法
            })
        } else {
            $.ajax({
                //选择其他类型的英雄
                url: './build/php/select.php',
                type: 'post',
                dataType: 'json',
                data: {
                    id: id_,
                },
                beforeSend: beforeShow,
                success: succShow //成功执行方法
            })
        }
        //执行前清空元素
        function beforeShow() {
            $('.ulbox').empty();
        }
        //成功获取数据，执行创建排序
        function succShow(data) {
            inputData(data);
        }
    })

    function inputData(data) {
        for (i in data) {
            //创建数组
            var dataInt = {
                    loldata: [{
                        name: data[i].name,
                        f_name: data[i].f_name,
                        s_name: data[i].s_name,
                        champion: data[i].champion
                    }]
                }
                //循环创建DIV添加进页面 
            $.each(dataInt.loldata, function(key, value) {
                var champion_id = $(value).attr("name");
                //console.log(champion_id);
                var champion_box = $("<li>");
                var a_box = $('<a href="./skin.html?id=' + champion_id + '">');
                var img_box = $("<img>").attr({
                    "src": $(value).attr("champion"),
                    "alt": $(value).attr("f_name") + " " + $(value).attr("s_name"),
                });
                var p_box = $("<p>").text($(value).attr("f_name"));
                var span_box = $("<span>");
                var i_box = $("<i>");
                span_box.append(i_box);
                a_box.append(img_box).append(p_box).append(span_box);
                champion_box.append(a_box);
                ($(".ulbox")).append(champion_box);
            })
        }
    }
})
