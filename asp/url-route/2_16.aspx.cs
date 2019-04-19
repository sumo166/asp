using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _2_16 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string type = (string)Page.RouteData.Values["productType"];
        Response.Write("你请求的类型是："+type);

        //未解决！！！！！！！！！！！
    }
}