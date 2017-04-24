$(document).ready(function () {
    if ($('#HiddenField2').val() == "test") {
        var d = new Date();
        var y = d.getFullYear();
        var m = d.getMonth();
        //var dd = d.getDate();
        //var n = d.getDay();

        $("#Label1").text(y + '/' + (m + 1));
        $('#HiddenField2').val(y + '/' + (m + 1));
        initialize(y, m);
    }
    else {
        var y = $("#HiddenField2").val().split('/')[0];
        var m = $("#HiddenField2").val().split('/')[1];

        $("#Label1").text(y + '/' + m);
        initialize(y, m-1);//點擊事件發動時 重新建立之前瀏覽的月曆
    }



    $("#Button1").click(f1);
    $("#Button2").click(f2);
    $("#Button3").click(function(e){
        __doPostBack('btnSave', 'Button3');
        $('form').hide();
        $('body,html,form').addClass('load');

        window.event.returnValue = false;//ie789
                    return false;//ie1011
    });
    modaltest();//就算被包起來 寫在裡面的事件已經被定義了 那就會隨時偵測執行
});
function modaltest() {
    var stat = 0;//保護機制 0:可以變灰色 1:不能變灰色
    $("#mycalendar tr[id!='basic'] td").mouseenter(function () {
        if (stat == 1)//先清除重設之前殘留的其他灰色
            $("#mycalendar tr[id!='basic'] td").removeClass("myenter");
        stat = 0;
        $(this).addClass("myenter");
    });

    $("#mycalendar tr[id!='basic'] td").mouseleave(function () {
        if (stat == 0)//若沒保護 才會變灰色
            $(this).removeClass("myenter");
    });


    $('[data-toggle="modal"]').on('click', function (e) {
        stat = 1;//點擊當下開始保護
        $('#myModal').on('shown.bs.modal', function (e) {
            var modal = $(this);
            $('.modal-title').text($("#Label1").text() + '/' + $("#mycalendar tr[id!='basic'] td.myenter").text());
            $('#HiddenField1').val($('.modal-title').text());
        }).modal('show');
    });
}//stat的用法 是想到jquery$() 或著說js 也有硬體語言的非同步性質 這種事件觸發是全面隨時的 各自管理的 沒有流程順序問題  所以加入stat的var用來記憶事件狀態 造成類似等待的效果
function initialize(y, m) {

    var td = new Date(y, m, 1);//2017-0-1=>2017-1-1
    var tn = td.getDay();//0-日 1-一 ... 6- 六

    var tj = 1;
    var wk = 0;

    var ff = new Date(y, m + 1, 0).getDate();//2017-1-0=>2017-1=>31

    while (tj <= ff) {



        var tt = "";

        if (wk == 0) {//第一周
            for (var g = 1; g < 8; g++) {

                if (g <= tn) {
                    tt += "<td class=\"myb1\">&nbsp";
                }
                else {
                    tt += '<td class=\"myn1\" data-toggle=\"modal\" >';
                    tt += tj;
                    tj++;
                }
                tt += '</td>';
            }

            $('#mycalendar tr:last').after('<tr id=\"' + "wk" + wk + '\">' + tt + '</tr>');
        }
        else {
            var rr = tj + 7;
            for (var g = tj; g < rr; g++) {


                if (tj > ff) {
                    tt += "<td class=\"myb1\">&nbsp";
                }
                else {
                    tt += '<td class=\"myn1\" data-toggle=\"modal\" >';
                    tt += tj;
                }
                tj++;
                tt += '</td>';
            }

            $('#mycalendar tr:last').after('<tr id=\"'+"wk"+wk+'\">' + tt + '</tr>');
        }

        wk++;
    }
    if(wk==5){
        $("tr[id!='basic']").addClass('w5');
    }
    else {
        $("tr[id!='basic']").addClass('w6');
    }
}
function f1() {
    //回上個月
    var y = $("#Label1").text().split('/')[0];
    var m = $("#Label1").text().split('/')[1];
    if (m - 1 == 0) {
        m = 12;
        $("#Label1").text(--y + '/' + m);
        $("#HiddenField2").val(y + '/' + m);
        $("#mycalendar tr[id!='basic']").closest("tr").remove();
        initialize(y, m-1);//重新建立上個月的月曆
    }
    else {
        $("#Label1").text(y + '/' + --m);
        $("#HiddenField2").val(y + '/' + m);
        $("#mycalendar tr[id!='basic']").closest("tr").remove();
        initialize(y, m-1);
    }


    modaltest();

}
function f2() {
    //回下個月
    var y = $("#Label1").text().split('/')[0];
    var m = $("#Label1").text().split('/')[1];
    if (m == 12) {
        m = 1;
        $("#Label1").text(++y + '/' + m);
        $("#HiddenField2").val(y + '/' + m);
        $("#mycalendar tr[id!='basic']").closest("tr").remove();
        initialize(y, m-1);
    }
    else {
        $("#Label1").text(y + '/' + ++m);
        $("#HiddenField2").val(y + '/' + m);
        $("#mycalendar tr[id!='basic']").closest("tr").remove();
        initialize(y, m-1);
    }

    modaltest();

}