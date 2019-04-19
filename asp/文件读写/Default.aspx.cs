using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.IO;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Click(object sender, EventArgs e)
    {
        Labe.Text = "文件内容";
        string filepath = Server.MapPath("test.txt"); //声明一个字符串的变量string filepath为
                                                        //寻找Server.MapPath方法test.txt
        if (File.Exists(filepath))                      //如果(文件.存在(test.txt)
        {                                                           //StreamReader类:从数据流中读取字符
            StreamReader sr = File.OpenText(filepath);  //那么声明一个StreamReader类的变量 sr为文件.打开txt文件地址是(filepath)
                                                                    //Peek返回下一个可用的字符，如果为-1，表示读到了文件尾
            while(sr.Peek()!= -1)                       //循环（打开这个txt.返回下一个可用的字符不等于-1的话）
                Labe.Text += (sr.ReadLine() + "<br/>"); //新的Labe.Text加上自身（打开那个txt从当前流读取一行字符，以字符串返回）；
            sr.Close();                                  //那个文件关闭，释放资源                                               
        }
    }
    protected void btnwrite_Click(object sender, EventArgs e)
    {
        string filepath = Server.MapPath("test.txt");
        StreamWriter sw = new StreamWriter(filepath, false);//???false
        if (File.Exists(filepath))
        {
          
            //string str = "dasdqwdadsadasdsadsa";
            string str = write.Text;
            sw.WriteLine(str);
            sw.Close();
            Labe.Text = "成功写入文件";
        }
      
    }
}