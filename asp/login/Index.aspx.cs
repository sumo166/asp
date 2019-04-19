using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        if (Request.Cookies["user"] != null && Request.Cookies["user"]["uName"] != null) 
        {

           
            Response.Write(Request.Cookies["user"]["uName"] + "您好！<br>");
            Response.Write( "您的密码是：" + Request.Cookies["user"]["uPwd"]);
        }
    }
}