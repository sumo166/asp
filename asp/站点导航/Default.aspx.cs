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
   
    protected void Wizard1_FinishButtonClick1(object sender, WizardNavigationEventArgs e)
    {
        labFinish.Text = "性别：" + RadioButtonList1.SelectedValue;
        labFinish.Text += "<br/>你喜欢的编程语言有：";
       
        foreach (ListItem item in CheckBoxList1.Items)
            if (item.Selected)
                labFinish.Text += " " + item.Value;
    }
}