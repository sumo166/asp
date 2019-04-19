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

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Cookies["uName"].Value = "xiaohu";
        Response.Cookies["uName"].Expires = DateTime.Now.AddDays(1);
        //    编写单值cookie
        HttpCookie acookie = new HttpCookie("xiaohua");
        acookie.Value = "李秋花";
        acookie.Expires = DateTime.Now.AddDays(1);
        Response.Cookies.Add(acookie);//将cookie添加到cookies集合中
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string name;
        if (Request.Cookies["xiaohua"] != null)
            name = Request.Cookies["xiaohua"].Value;
        Response.Write("name");

    }
}