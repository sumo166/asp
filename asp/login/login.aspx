<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
        <h1 class="style1">会员登录</h1>
         <div class="style1">
         <br />
          <br />
        用户名:<asp:TextBox ID="Textname" runat="server"></asp:TextBox>
        <br />
        密码：<asp:TextBox ID="Textpwd" runat="server" TextMode="Password"></asp:TextBox>
             <br />
     
             <br />
             <asp:CheckBox ID="CheckBox1" runat="server" Text="两周之内不用登录"/>
             <br />
             <asp:Button ID="btlogin" runat="server" Text="确定" onclick="btlogin_Click" />
             <asp:Button ID="btcan" runat="server" Text="取消" onclick="btcan_Click" />
        </div>
    </div>
    </form>
</body>
</html>
