// 用get获取url的元素
// 获取英雄name
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
    //创建元素
    //生成组件
    //插入元素
    var skin_wrp = $('<div class="skin-wrp">'),
        skin_info_box = $('<section class="skin-info-box">'),
        skin_img = $('<div class="skin-img">'),
        show_box = $('<div class="show-box">');
    skin_info_box.css("background-color","#9E9E9E");
    skin_img.append(show_box);
    var skin_data = $('<div class="skin-data">'),
        data_tags = $('<div class="data-tags cf">'),
        data_info = $('<div class="data-info cf">');
    //console.log(data_info);
    skin_data.append(data_tags).append(data_info);
    var sbg = $('<span clalss="sbg">'),
        skin_small = $('<ul class="skin-small">');
    skin_info_box.append(skin_img).append(skin_data).append(sbg).append(skin_small);
    skin_wrp.append(skin_info_box);
    $("body").append(skin_wrp);

    //查询数据
    $.ajax({
        url: './build/php/name.php',
        type: 'post',
        data: {
            name: $_GET.id,
        },
        success: function(data) {
            inputData_name(data);
            //获取创建名字内容
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
            //获取创建属性值百分比
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
                    inputData_img(data); //创建原画图片，小头像图片
                    onclick(); //必须在创建之后再绑定onclick 不然会造成无法运行绑定事件
                } //成功执行方法
        })
        // $("title").html($_GET.id);

    //输出数据
    //输出英雄FirstName SecondName EnglishName
    //输出英雄 定位战士/法师/刺客/坦克/射手/辅助
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
            //创建写入数据
            var value_ = $(value);
            var f_name = $('<h1 class="data-f_name">').text(value_.attr("f_name")),
                s_name = $('<h2 class="data-s_name">').text(value_.attr("s_name")),
                skin_data = $(".skin-data"),
                data_tags = $(".data-tags");
            skin_data.prepend(s_name).prepend(f_name);
            var fighter = value_.attr("fighter"),
                mage = value_.attr("mage"),
                assassin = value_.attr("assassin"),
                tank = value_.attr("tank"),
                marksman = value_.attr("marksman"),
                support = value_.attr("support");
            if (fighter == 1) {
                var fighter_box = $("<span>").text("战士");
                data_tags.append(fighter_box);
            }
            if (mage == 1) {
                var mage_box = $("<span>").text("法师");
                data_tags.append(mage_box);
            }
            if (assassin == 1) {
                var assassin_box = $("<span>").text("刺客");
                data_tags.append(assassin_box);
            }
            if (tank == 1) {
                var tank_box = $("<span>").text("坦克");
                data_tags.append(tank_box);
            }
            if (marksman == 1) {
                var marksman_box = $("<span>").text("射手");
                data_tags.append(marksman_box);
            }
            if (support == 1) {
                var support_box = $("<span>").text("辅助");
                data_tags.append(support_box);
            }
        })
    }
    //输出数据
    //输出英雄 物理攻击、魔法攻击、防御能力、上手难度的值
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
            var value_ = $(value);
            var ad = value_.attr("ad"),
                ap = value_.attr("ap"),
                tank = value_.attr("tank"),
                hand = value_.attr("hand");
            var name_ = $('<div class="name">'),
                rate_box_ = $('<div class="rate-box">'),
                data_info = $('.data-info');
            var value_name=["物理攻击","魔法攻击","防御能力","上手难度"];
            var value_=[ad,ap,tank,hand];
            //循环输出战斗力数值
            for (var i = 0; i < 4; i++) {
                var line_ = $('<div class="cf line line' + i + '">');
                var name_ = $('<div class="name name' + i + '">'),
                rate_box_ = $('<div class="rate-box rate-box' + i + '">'),
                rate_ = $('<div class="rate rate">');
                name_.text(value_name[i]);
                rate_.width(value_[i]*10+'%');
                //rate_ = $('<div class="rate rate' + i + '">');
                rate_box_.append(rate_);
                line_.append(name_).append(rate_box_);
                data_info.append(line_);
                //console.log(data_info);
            }
        })
    }
    //输出数据
    //输出英雄 皮肤原画、小头像、皮肤名称
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
                var value_ = $(value);
                var li_box = $('<li>'),
                    span_box = $('<span>'),
                    i_box = $('<i>');
                span_box.text(value_.attr("f_name") + " " + value_.attr("s_name"));
                b_img_box = $('<img src="' + value_.attr("skin") + '">');
                s_img_box = $('<img src="' + value_.attr("skin_s") + '">');

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

    //绑定click事件 点击轮播皮肤
    //不能再ready时绑定click事件
    //必须创建元素之后再绑定click事件
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
                    "margin-left": -index * 980 + "px"
                }, 500);
            })
        })
    }
})
