<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title></title>

    <!-- Bootstrap -->
    <link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body style="height: 100%; width: 100%;">
    <script src="JavaScript.js"></script>
    <form id="form1" runat="server">

        <div style="height: 9%;
    width:100%;background-color:#84dcc6;position: absolute; top: 0%;bottom:91%;"></div>

        <div style="height: 1%;
    width:9%;background-color:#84dcc6;position: absolute; top: 9%;bottom:90%;left: 0%;right:91%"></div>
        <div style="height: 1%;
    width:82%;background-color:#478978;position: absolute; top: 9%;bottom:90%;left: 9%;right:9%"></div>
        <div style="height: 1%;
    width:9%;background-color:#84dcc6;position: absolute; top: 9%;bottom:90%;left: 91%;right:0%"></div>



        <div id="theall" style="height: 80%;
    width:100%;position: absolute;top: 10%;bottom:10%">
            <div style="display: inline-block;  width: 9%; height: 100%; background-color: #84dcc6; position: absolute; left: 0%;">
            </div>
            <div style="display: inline-block;  width: 1%; height: 100%; background-color: #478978; position: absolute; left: 9%;right:90%">
            </div>



        <div class="mybackground" >
            <div style="width:100%;height:12%; display:inline-block;text-align:center;position: absolute;top: 0%;bottom:88%"><p id="label2" style="font-size:3vw;color:white;padding: 20px 0"></p></div>
            <div style="width:100%;height:88%; display:inline-block;position: absolute;top: 12%;bottom:0%">
            <div class="mycenter" style="display:inline-block;position: absolute;left: 0%;right:66%;top: 0%;bottom:90%;">
                <input id="Button1" type="button" value="上個月" class="btn btn-info btn-block" />
            </div>
            <div class="mycenter" style="display:inline-block;position: absolute;left: 33%;right:33%;top: 0%;bottom:90%;">
                <p id="Label1"></p>
            </div>
            <div class="mycenter" style="display:inline-block;position: absolute;left: 66%;right:0%;top: 0%;bottom:90%;" >
                <input id="Button2" type="button" value="下個月" class="btn btn-info btn-block" />
            </div>

            <div id="myoutside"style="display:inline-block; width:100%;height:90%; position: absolute;top: 10%;bottom:0%;right:0%;left:0%; ">
            <table id="mycalendar" class="table table-bordered table-responsive">
                <tr id="basic">
                    <td>日</td> <td>一</td> <td>二</td> <td>三</td> <td>四</td> <td>五</td> <td>六</td>
                </tr>
            </table>
                </div>
            </div>
        </div>



            <div style="display: inline-block;   width: 1%; height: 100%; background-color: #478978; position: absolute; right: 9%;left:90%">
            </div>
            <div style="display: inline-block;  width: 9%; height: 100%; background-color: #84dcc6; position: absolute; right:0%;">
            </div>
        </div>
                <div style="height: 1%;
    width:9%;background-color:#84dcc6;position: absolute; top: 89%;bottom:10%;left: 0%;right:91%"></div>
        <div style="height: 1%;
    width:82%;background-color:#478978;position: absolute; top: 89%;bottom:10%;left: 9%;right:9%"></div>
        <div style="height: 1%;
    width:9%;background-color:#84dcc6;position: absolute; top: 89%;bottom:10%;left: 91%;right:0%"></div>

        <div style="height: 9%;
    width:100%;background-color:#84dcc6;position: absolute; top: 91%;bottom:0%"></div>


        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" >
  <div class="modal-dialog modal-lg modal-sm" role="document" style="height: 100%;max-height:100%;">
    <div class="modal-content" style="height: 100%;max-height:100%;">
      <div class="modal-header"  style="height: 10%;max-height:10%;">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
         <h4 class="modal-title"></h4>
      </div>
      <div class="modal-body" style="height: 80%;max-height:80%;">
          <textarea id="TextArea1" name="TextArea1"></textarea>
      </div>
      <div class="modal-footer"  style="height: 10%;max-height:10%;">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <asp:Button ID="Button3" runat="server"  CssClass="btn btn-primary" data-dismiss="modal" AutoPostBack="True" UseSubmitBehavior="false" Text="Save changes"  OnClick="Page_Load"/>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->


        <asp:HiddenField ID="HiddenField1" runat="server"/><!-- 用來暫存當前年月，為了傳給後端年月 -->
        <asp:HiddenField ID="HiddenField2" runat="server" Value="test"/><!-- 用來暫存當前年月，為了後端事件刷新時能重新建立月曆 -->
    </form>
    <script>

    </script>
</body>
</html>
