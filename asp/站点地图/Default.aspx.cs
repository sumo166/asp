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
    protected void BUTBL_Click(object sender, EventArgs e)
    {
        foreach (TreeNode tn in tv1.Nodes)
            //TreeView1.Nodes这个控件的所有节点；循环节点在TreeView1.Nodes
            Response.Write(tn.Text + ":" + tn.Value);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TreeNode tn = new TreeNode();
        tn.Text = "笔记本";
        tn.Value = "笔记本";
        TreeNode parentNode = tv1.FindControl("硬件产品");
        //parentNode属性可以返回指定节点的父节点
        //.FindControl()是用来干嘛的，干嘛要查找已知ID的控件，不是已经知道ID了么，直接通过ID对控件进行操作就行了，为什么要查找？
        //是用来寻找控件内的控件，譬如gridview，panel之类的textbox就要用findcontrol
        //在容器里的控件就要用.FindControl()，譬如gridview，DataGrid，Repeator之类的textbox
         //.FindControl()一般都是用在数据源的列表中，比如GridView，DataList，
        //你要先从列表中利用.FindControl()找到控件，才能用ID，否则你是不能使用的
        parentNode.ChildNodes.Add(tn);
        //ChildNodes子节点
        //将新节点tn添加到parentNode节点下面

    }
}