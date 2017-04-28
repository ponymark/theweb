<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;
using MySql.Data.MySqlClient;

public class Handler : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        //context.Response.ContentType = "text/plain";
        //context.Response.Write("Hello World");

        string year = context.Request.Form["year"];
        string month = context.Request.Form["month"];

        if (0 < Int32.Parse(month) && Int32.Parse(month) < 10)
        {
            month ="0"+month;
        
        }
        string s = null;
        s = test1(year,month);

        //context.Response.Write(year+"年"+month+"月\n"+"測試匯入資料:"+s);
        context.Response.Write(s);

        
        
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }
    protected string test1(string year,string month)    //查詢資料庫
    {
        MySql.Data.MySqlClient.MySqlConnection conn;
        string myConnectionString;

        myConnectionString = "server=127.0.0.1;uid=root;" +
            "pwd=bankai966;database=research;";

        conn = new MySql.Data.MySqlClient.MySqlConnection();
        conn.ConnectionString = myConnectionString;
        conn.Open();



        string[] ym = {year,month};

        String cmdText = "SELECT * FROM activity WHERE SUBSTRING(date, 1,7)=\"" + ym[0] + "/" + ym[1] + "\"";//擷取當前年月的區段資料 這裡還不知道如何下查詢條件 先以全部資料 反正測試資料很少
        MySqlCommand cmd = new MySqlCommand(cmdText, conn);
        MySqlDataReader reader = cmd.ExecuteReader();

        String s = "";
        while (reader.Read())
        {

            for (int i = 0; i < 5; i++)
            {
                s += reader.GetString(i);
                s += "\t";
            }
            s += "\n";
        }

        conn.Close();
        conn.Dispose();
        if (s == "")
            return "什麼都沒有";
        
        return s;
    }
}