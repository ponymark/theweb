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
        <div style="display: inline-block;height: 100%;
    width:100%;">
        <div class="mybackground">
            
            <div class="mycenter" >
                <input id="Button1" type="button" value="上個月" class="btn btn-info btn-block" />
            </div>
            <div class="mycenter" >
                <p id="Label1"></p>
            </div>
            <div class="mycenter"  >
                <input id="Button2" type="button" value="下個月" class="btn btn-info btn-block" />
            </div>

            <div style="display:inline-block; width:100%">
            <table id="mycalendar" class="table table-bordered">
                <tr id="basic">
                    <td>星期日</td>
                    <td>星期一</td>
                    <td>星期二</td>
                    <td>星期三</td>
                    <td>星期四</td>
                    <td>星期五</td>
                    <td>星期六</td>
                </tr>
            </table>
                </div>
        </div>
            <div style="display: inline-block; margin-right: -4px; margin-left: auto; width: 1%; height: 100%; background-color: #478978; position: absolute; right: 19%;left:80%">
            </div>
            <div style="display: inline-block; margin-right: -4px; margin-left: auto; width: 19%; height: 100%; background-color: #84dcc6; position: absolute; right: 4px;">
                
            </div>
        </div>
    </form>
    <script>

    </script>
</body>
</html>
