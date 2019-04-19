
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register src="WebUserControl.ascx" tagname="WebUserControl" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>控件</title>
</head>
<body>
      
    <form id="form1" runat="server">
        标签控件：<asp:Label runat="server" ID="Label1" Text="<B>标签控件wenben</B> " 
        Visible="true"></asp:Label>  <%//Text="<B>标签控件</B> text里面的包含的字符串可以解释里面的html标记"%>
                                                                                                              <%//Visible可见的默认为true，这里设置为false 控件不可见 %>
        <hr />
        文本框控件：<asp:TextBox ID="TextBox1" runat="server" Text="文本框控件 " 
        Visible="true"  AutoPostBack="true" TextMode ="MultiLine" ReadOnly="false" 
            ontextchanged="TextBox1_TextChanged"></asp:TextBox> 
        <%//TextMode ="MultiLine">--文本框模式为多行 password为屏蔽显示用户输入的单行文本框为密码 %>
        <%//AutoPostBack="true">--文本框的内容发送改变时 ，自动向服务器发送 %>
        <%//ReadOnly="false"--只读默认值为false%>
        <hr/>
        按钮控件：
        <hr />
        标准命令按钮:<asp:Button ID="Button1" Text="wenzbe" runat="server" OnClick="Button123_Click1"/><%//标准命令按钮 %>
        <hr />
        超链接按钮：
        <hr /><asp:LinkButton ID="LinkB1" Text="LKBT" runat="server" 
            >111111</asp:LinkButton>
        <hr />
        图片按钮：
        <asp:ImageButton ID="ImageButton1" runat="server" 
            ImageUrl="~/Image/ImageButton.png" BorderStyle="Inset" Height="32px" 
            onclick="ImageButton1_Click" Width="83px" />
       <hr /> 
        按钮Command事件示例   
       <hr />    
       <asp:Label ID="Label2" runat="server" Text="asp.net程序设计"></asp:Label>
       <br />
        <asp:Button ID="lbtnRed" runat="server" Text="红色" CommandName="red" 
            OnCommand="Button_Click"  /> &nbsp;
        <asp:Button ID="lbtnGreen" runat="server" Text="绿色" CommandName="green" OnCommand="Button_Click"/>&nbsp;
        <asp:Button ID="lbtnBlue" runat="server" Text="蓝色" CommandName="blue" OnCommand="Button_Click"/>&nbsp;
        <hr />
        <hr />
       <a>单选按钮控件和单选按钮列表控件（RadioButton和RadioButtonList）</a>
         <hr />   
            <asp:RadioButton ID="RadioButton1" runat="server" Text="男" 
            GroupName="sex" Checked="true" />                           <%// GroupName="sex" 设置组名为sex；%>
                                                                        <%// Checked="true"  选中的状态默认为true。%>
            <asp:RadioButton ID="RadioButton2" runat="server" Text="女" 
            GroupName="sex" />                                           <%// GroupName="sex" 设置组名同样的sex；%>
          <hr />
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
            AutoPostBack="true" 
            onselectedindexchanged="RadioButtonList1_SelectedIndexChanged"> 
                <asp:ListItem Selected="True">男</asp:ListItem>
                <asp:ListItem >女</asp:ListItem>
                <asp:ListItem >中性</asp:ListItem>
            </asp:RadioButtonList>
          <hr />
            复选框控件：<asp:CheckBox ID="CheckBox1" runat="server" Checked="true"/><asp:CheckBox ID="CheckBox2" runat="server"  Checked="true"/>
            <br />
            复选框列表控件：<asp:CheckBoxList 
            ID="CheckBoxList1" runat="server" RepetColumns="3" >
                 <asp:ListItem>看书</asp:ListItem>
                 <asp:ListItem>打球</asp:ListItem>                                                                                                       
                 <asp:ListItem>游泳</asp:ListItem>
            </asp:CheckBoxList>
            <asp:Button ID="btnView" runat="server" OnClick="btnView_Click" Text="确定" />
            <hr />
            <asp:Label ID="Label3" runat="server" Text="" ></asp:Label>
            <hr />
            <!-- -->
            下拉列表单选：<asp:DropDownList ID="DropDownList1" runat="server" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem>红色</asp:ListItem>
                <asp:ListItem>黄色</asp:ListItem>
                <asp:ListItem>绿色</asp:ListItem>

            </asp:DropDownList>
            下拉列表框多选:<asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple" 
            onselectedindexchanged="ListBox1_SelectedIndexChanged" AutoPostBack="true"> 
                <asp:ListItem>红色</asp:ListItem>
                <asp:ListItem>黄色</asp:ListItem>
                <asp:ListItem>绿色</asp:ListItem>
                <asp:ListItem>绿色</asp:ListItem>
                <asp:ListItem>紫色</asp:ListItem>
                <asp:ListItem>青色</asp:ListItem>
            
            
            </asp:ListBox>

            
            <uc1:WebUserControl ID="WebUserControl1" runat="server" />
            <hr />
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/ImageButton.png" 
            AlternateText="廖娇林" ImageAlign="Left" />

    
    </form>
</body>
</html>
