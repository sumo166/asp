using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class form : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Request.QueryString["uName"]!=null)
                Response.Write("HELLO,"+Request.QueryString["uName"]);
        HttpBrowserCapabilities a = Request.Browser;
        Response.Write("客户端浏览器信息：" + "<hr>" + "名称:" + "a.Browser" + "<br>" + "版本" + a.Version + "<br>" + "操作系统" + a.Platform + "<br>" + "支持cookies吗？" + a.Cookies);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("form.aspx?uName=xiaohu"); //响应跳转一个名为uName的变量

        
        
        
    }
}