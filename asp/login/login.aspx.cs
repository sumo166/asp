using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
     
        string name = "";
        string pwd = "";
        if (Request.Cookies["user"] != null && Request.Cookies["user"]["uName"] != null) 
        {
          
            if (name == "xiaohu" && pwd == "admin")
           

             
                Response.Redirect("Index.aspx");
              
            
        }
    }
    protected void btlogin_Click(object sender, EventArgs e)
    {
     
        string name = Textname.Text;   //声明一个字符串变量name为 用户名的文字
        string pwd = Textpwd.Text;

        if(name=="xiaohu"&&pwd=="admin")
        {
            Response.Cookies["user"]["uName"] = name;
            Response.Cookies["user"]["uPwd"] = pwd;
            if(CheckBox1.Checked)
            {
                Response.Cookies["user"]["uName"] = name;
                Response.Cookies["user"]["uPwd"] = pwd;
                Response.Cookies["user"].Expires = DateTime.Now.AddDays(14);
            }



            Response.Redirect("Index.aspx");
        }
    }
    protected void btcan_Click(object sender, EventArgs e)
    {
        Textname.Text= null;
        Textpwd.Text = null;
    }
}