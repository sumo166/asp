using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Collections;   //文件读写操作所需的命名空间

public partial class _Default : System.Web.UI.Page
{
    ArrayList count = new ArrayList();
    protected void getVote() 
    {
        string filePath = Server.MapPath("vote.txt");
        StreamReader sr = File.OpenText(filePath);

        while (sr.Peek() != -1)    
        {
            string str = sr.ReadLine();
            string[] strVote = str.Split('|');   //一行的分隔符号为('|')
            foreach (string ss in strVote)
                count.Add(int.Parse(ss));

        }
        sr.Close();
        //循环当打开txt文件返回的下一个字符不等于 -1 的时候,声明一个字符串 str 变量=打开txt从读取一行
    }
    //写文件方法



    protected void putVote()
    {
        string filePath = Server.MapPath("vote.txt");
        StreamWriter sw = new StreamWriter(filePath,false);
        string str = count[0].ToString();
        for (int i = 1; i < count.Count; i++)
            str += "|" + count[i].ToString();
        sw.WriteLine(str);
        sw.Close();
    }//定义写文件的方法；


    protected void Page_Load(object sender, EventArgs e)
    {
        lblView.Text = "";
        HttpCookie getCookie = Request.Cookies["Vote"];
        if (getCookie == null) 
        {
            lblState.Text = "你还未投票";
        }
        else
          
            lblState.Text="你已经投过票了";
            getVote();
    }
    protected void btnVote_Click(object sender, EventArgs e)
    {
        if (rbtlVote.SelectedIndex != -1)
        {
            HttpCookie getCookie = Request.Cookies["Vote"];
            if (getCookie != null)
            {
                Response.Write("<script>alert('你已经投过票了，不能重复投!');location='javascript:history.go(-1)'</script>");
            }
            else 
            {
                int k = rbtlVote.SelectedIndex;
                count[k]=int.Parse(count[k].ToString())+1;
                putVote();
                HttpCookie vcookie = new HttpCookie("Vote");
                vcookie.Value = "vote";
                vcookie.Expires = DateTime.Now.AddDays(1);
                Response.Cookies.Add(vcookie);
                Response.Write("<script>alert('投票成功啦！');</script>");
            }
        }
    }
    protected void btnView_Click(object sender, EventArgs e)
    {
        lblView.Text = "各候选人票数:<br/>";
        for (int i = 0; i < rbtlVote.Items.Count; i++)
            lblView.Text += rbtlVote.Items[i].Value + ":" + count[i] + "票" + "<br/>";

    }
}