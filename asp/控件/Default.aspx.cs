using System;
using System.Drawing; //调用类
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
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        string pwd = TextBox1.Text;   //获取TextBox1控件的Text属性值
        Label1.Text = pwd;           //再把pwd赋值给 Label1
    }
   

    protected void Button123_Click1(object sender, EventArgs e)
    {
        Button1.Text = Label1.Text;
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Label1.Text = "123";
    }


    protected void Button_Click(object sender, CommandEventArgs e)  //sender参数表示触发事件的对象，
                                                                    //由于引发事件的对象是不可预知的,因此将其声明成为object类型（object类是所有对象的基类)
    {
        Color color12 = Color.White;
        switch (e.CommandName) //e是监听事件的类型监听CommandName
        {
            case "red": color12 = Color.Red;   //接收CommandName是的话"red" 变量color12，颜色就改变为Red
                break;                       //再返回改变· Label2.ForeColor =color;
            case "green": color12 = Color.Green;
                break;
            case "blue": color12 = Color.Blue;
                break;
        }
        Label2.ForeColor =color12;
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string s = RadioButtonList1.SelectedItem.Value;  //一个字符串s为单选列表的选中的项的值
        Label1.Text = s;
    }
    protected void btnView_Click(object sender, EventArgs e)
    {
 
        Label3.Text = "你的兴趣有：";
        for (int i = 0; i < CheckBoxList1.Items.Count; i++)   //如果CheckBoxList1.Items.Count复选框的项数为0就跳出循环，不是就执行下面的
            if (CheckBoxList1.Items[i].Selected == true)         //复选框的第i项为选中的话
            Label3.Text += " " + CheckBoxList1.Items[i].Value;  //+=复选框第i项的值
        
       

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label3.Text = DropDownList1.SelectedItem.Text;
    }
    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //Label3.Text = " ";
        //foreach (ListItem item123 in ListBox1.Items)  //foreach 循环每一个ListBox1.Items ，列表项:item123
        //    if (item123.Selected)                    //如果item123是选中的，输出
        //        Label3.Text += item123.Value + " ";
        Label3.Text = "你选中的颜色是：";
        for (int i = 0; i < ListBox1.Items.Count; i++)
            if (ListBox1.Items[i].Selected == true)
                Label3.Text += " " + ListBox1.Items[i].Value;

    }
}