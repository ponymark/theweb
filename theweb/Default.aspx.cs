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

            //讀取前端網頁的值
            string TextArea1 = Request.Form["TextArea1"];
            string m1 = HiddenField1.Value;           
        }
        
    }
}