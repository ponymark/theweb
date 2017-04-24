using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.GetPostBackEventReference(this.Button3);
        string parameter = Request["__EVENTARGUMENT"]; // parameter
        if (parameter == "Button3")
        {
            System.Threading.Thread.Sleep(3000);

            //還差讀取前端網頁的tag的值 不是控制像 <h4 class="modal-title"></h4>這種
            string TextArea1 = Request.Form["TextArea1"];
            string m1 = HiddenField1.Value;

            //Response.Write("<Script language='JavaScript'>alert(\"" + "已傳到後端:" + m1 + "\\n事項:\\n" + TextArea1 + "\");</Script>");
            
            //尚未撰寫與資料庫連線傳輸 
            //MySql.Data.MySqlClient.MySqlConnection conn;
            //string myConnectionString;

            //myConnectionString = "server=127.0.0.1;uid=root;" +
            //    "pwd=bankai966;database=research;";

            //try
            //{
            //    conn = new MySql.Data.MySqlClient.MySqlConnection();
            //    conn.ConnectionString = myConnectionString;
            //    conn.Open();
            //}
            //catch (MySql.Data.MySqlClient.MySqlException ex)
            //{
            //    ex.Message
            //}
        }
        //尚未撰寫讀取資料庫部分
    }
    //寫到資料庫
}