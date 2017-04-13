$(document).ready(function () {




    var d = new Date();
    var y = d.getFullYear();
    var m = d.getMonth();
    var dd = d.getDate();
    var n = d.getDay();

    $("#Label1").text(y + '/' + (m + 1));

    initialize(y, m);

    $("#Button1").click(f1);
    $("#Button2").click(f2);

    $("#mycalendar tr[id!='basic'] td").mouseenter(function () {
        $(this).addClass("myenter");
    });

    $("#mycalendar tr[id!='basic'] td").mouseleave(function () {
        $(this).removeClass("myenter");
    });

    $('[data-toggle="popover"]').popover({
        html: true,
        container: 'body',
        title: "Header",
        content: "<input type=\"text\" name=\"test\" value=\"test\" />",
        placement: "auto"
    })

    $('[data-toggle="popover"]').click(function (e) {
        $('[data-toggle="popover"]').not(this).popover('hide');
    });


   
});

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
                    tt += '<td class=\"myn1\" data-toggle=\"popover\" >';
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
                    tt += '<td class=\"myn1\" data-toggle=\"popover\" >';
                    tt += tj;
                }
                tj++;
                tt += '</td>';
            }

            $('#mycalendar tr:last').after('<tr id=\"'+"wk"+wk+'\">' + tt + '</tr>');
        }

        wk++;
    }

}
function f1() {
    //回上個月
    $("[data-toggle='popover']").popover('destroy');
    var y = $("#Label1").text().split('/')[0];
    var m = $("#Label1").text().split('/')[1];
    if (m - 1 == 0) {
        m = 12;
        $("#Label1").text(--y + '/' + m);
        $("#mycalendar tr[id!='basic']").closest("tr").remove();
        initialize(y, m - 1);
    }
    else {
        $("#Label1").text(y + '/' + --m);
        $("#mycalendar tr[id!='basic']").closest("tr").remove();
        initialize(y, m - 1);
    }


    $("#mycalendar tr[id!='basic'] td").mouseenter(function () {
        $(this).addClass("myenter");
    });

    $("#mycalendar tr[id!='basic'] td").mouseleave(function () {
        $(this).removeClass("myenter");
    });
    $('[data-toggle="popover"]').popover({ html: true, container: 'body', title: "Header", content: "<input type=\"text\" name=\"test\" value=\"test\" />", placement: "auto" });
    $('[data-toggle="popover"]').click(function (e) {
        $('[data-toggle="popover"]').not(this).popover('hide');
    });

}
function f2() {
    //回下個月
    $("[data-toggle='popover']").popover('destroy');
    var y = $("#Label1").text().split('/')[0];
    var m = $("#Label1").text().split('/')[1];
    if (m == 12) {
        m = 1;
        $("#Label1").text(++y + '/' + m);
        $("#mycalendar tr[id!='basic']").closest("tr").remove();
        initialize(y, m - 1);
    }
    else {
        $("#Label1").text(y + '/' + ++m);
        $("#mycalendar tr[id!='basic']").closest("tr").remove();
        initialize(y, m - 1);
    }

    $("#mycalendar tr[id!='basic'] td").mouseenter(function () {
        $(this).addClass("myenter");
    });

    $("#mycalendar tr[id!='basic'] td").mouseleave(function () {
        $(this).removeClass("myenter");
    });
    $('[data-toggle="popover"]').popover({ html: true, container: 'body', title: "Header", content: "<input type=\"text\" name=\"test\" value=\"test\" />", placement: "auto" });
    $('[data-toggle="popover"]').click(function (e) {
        $('[data-toggle="popover"]').not(this).popover('hide');
    });

}