var $_GET = (function() {
    var url = window.document.location.href.toString();
    var u = url.split("?");
    if (typeof(u[1]) == "string") {
        u = u[1].split("&");
        var get = {};
        for (var i in u) {
            var j = u[i].split("=");
            get[j[0]] = j[1];
        }
        return get;
    } else {
        return {};
    }
})();

$(document).ready(function() {
    $.ajax({
        url: './build/php/name.php',
        type: 'post',
        data: {
            name: $_GET.id,
        },
        success: function(data) {
            inputData_name(data);
        }
    })
    $.ajax({
        url: './build/php/per.php',
        type: 'post',
        data: {
            name: $_GET.id,
        },
        success: function(data) {
            inputData_per(data);
        }
    })
    $.ajax({
            url: './build/php/skin.php',
            type: 'post',
            data: {
                name: $_GET.id,
            },
            //beforeSend: beforeCheck,
            success: function(data) {
                    inputData_img(data);
                    onclick(); //必须在创建之后再绑定onclick 不然会造成无法运行绑定事件
                } //成功执行方法
        })
        // $("title").html($_GET.id);

    function inputData_name(data) {
        var dataInt = {
                loldata: [{
                    name: data[0].name,
                    f_name: data[0].f_name,
                    s_name: data[0].s_name,
                    fighter: data[0].fighter,
                    mage: data[0].mage,
                    assassin: data[0].assassin,
                    tank: data[0].tank,
                    marksman: data[0].marksman,
                    support: data[0].support
                }]
            }
            // console.log(dataInt.loldata);
            // console.log(dataInt.loldata[0].name);
            //循环创建DIV添加进页面 
        $.each(dataInt.loldata, function(key, value) {
            //console.log($(value).attr("fighter"));
            var f_name = $('<h1 class="data-f_name">').text($(value).attr("f_name")),
                s_name = $('<h2 class="data-s_name">').text($(value).attr("s_name"));
            $(".skin-data").prepend(s_name).prepend(f_name);
            var fighter_ = $(value).attr("fighter"),
                mage_ = $(value).attr("mage"),
                assassin_ = $(value).attr("assassin"),
                tank_ = $(value).attr("tank"),
                marksman_ = $(value).attr("marksman"),
                support_ = $(value).attr("support");
            if (fighter_ == 1) {
                var fighter_box = $("<span>").text("战士");
                $(".data-tags").append(fighter_box);
            }
            if (mage_ == 1) {
                var mage_box = $("<span>").text("法师");
                $(".data-tags").append(mage_box);
            }
            if (assassin_ == 1) {
                var assassin_box = $("<span>").text("刺客");
                $(".data-tags").append(assassin_box);
            }
            if (tank_ == 1) {
                var tank_box = $("<span>").text("坦克");
                $(".data-tags").append(tank_box);
            }
            if (marksman_ == 1) {
                var marksman_box = $("<span>").text("射手");
                $(".data-tags").append(marksman_box);
            }
            if (support_ == 1) {
                var support_box = $("<span>").text("辅助");
                $(".data-tags").append(support_box);
            }
        })

    }

    function inputData_per(data) {
        var dataInt = {
                loldata: [{
                    name: data[0].name,
                    ad: data[0].ad,
                    ap: data[0].ap,
                    tank: data[0].tank,
                    hand: data[0].hand
                }]
            }
            // console.log(dataInt.loldata);
            // console.log(dataInt.loldata[0].name);
            //循环创建DIV添加进页面 
        $.each(dataInt.loldata, function(key, value) {
            //console.log($(value).attr("fighter"));
            var ad = $(value).attr("ad"),
                ap = $(value).attr("ap"),
                tank = $(value).attr("tank"),
                hand = $(value).attr("hand");
            $(".line:first-child").find(".rate-box .rate").width(ad * 10 + "%");
            $(".line:nth-child(2)").find(".rate-box .rate").width(ap * 10 + "%");
            $(".line:nth-child(3)").find(".rate-box .rate").width(tank * 10 + "%");
            $(".line:nth-child(4)").find(".rate-box .rate").width(hand * 10 + "%");
        })

    }

    function inputData_img(data) {
        var length = data.length;
        $('.show-box').width(length * 980);
        for (i in data) {
            var dataInt = {
                    loldata: [{
                        name: data[i].name,
                        f_name: data[i].f_name,
                        s_name: data[i].s_name,
                        skin: data[i].skin,
                        skin_s: data[i].skin_s,
                    }]
                }
                // console.log(dataInt.loldata);
                // console.log(dataInt.loldata[0].name);
                //循环创建DIV添加进页面 

            $.each(dataInt.loldata, function(key, value) {
                var li_box = $('<li>'),
                    span_box = $('<span>'),
                    i_box = $('<i>');
                span_box.text($(value).attr("f_name") + " " + $(value).attr("s_name"));
                b_img_box = $('<img src="' + $(value).attr("skin") + '">');
                s_img_box = $('<img src="' + $(value).attr("skin_s") + '">');

                $('.show-box').append(b_img_box);
                li_box.append(span_box).append(s_img_box).append(i_box);
                $(".skin-small").append(li_box);
            })
        }
        var find_info = $(".skin-small").find("li:first-child");
        find_info.addClass("skin-on");
        find_info.find("span").addClass("skin-info-on");
        find_info.find("i").addClass("icon-on");
    }


    function onclick() {
        $(".skin-small li img").each(function(index) {
            $(this).on('click', function() {
                var this_ = $(this).parents("ul").children();
                this_.removeClass("skin-on");
                this_.children("i").removeClass("icon-on");
                this_.children("span").removeClass("skin-info-on");
                $(this).parents("li").addClass("skin-on");
                $(this).siblings("i").addClass("icon-on");
                $(this).siblings("span").addClass("skin-info-on");
                $(".show-box").stop().animate({
                        "margin-left": -index*980+"px"
                    }, 500);
            })
        })
    }

})
