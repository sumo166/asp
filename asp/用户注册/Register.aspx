<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 50%;
            border: 1px solid #0000FF;
        }
        .style3
        {
            height: 20px;
        }
        .style4
        {
            height: 20px;
            width: 150px;
            text-align: right;
        }
        .style5
        {
            width: 150px;
            text-align: right;
        }
        .style6
        {
            height: 20px;
            width: 151px;
        }
        .style7
        {
            width: 151px;
        }
        .style8
        {
            width: 150px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <table align="center" cellpadding="2" cellspacing="0" class="style1">
            <tr>
                <td class="style3" colspan="3">
                    <a style="font-size:x-large"><b>【用户注册】</b></a></td>
            </tr>
            <tr>
                <td class="style4">
                    用户名：</td>
                <td class="style6">
                    
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    
                    </td>
                <td class="style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="必须输入用户名" Text="*"
                         ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="style4">
                    密码：</td>
                    
                <td class="style6">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                <td class="style3"> 
               
                    </td>
            </tr>
            <tr>
                <td class="style4">
                    确认密码：</td>
                <td class="style6">
                    </td>
                <td class="style3">
                    </td>
            </tr>
            <tr>
                <td class="style4">
                    性别：</td>
                <td class="style6">
                    </td>
                <td class="style3">
                    </td>
            </tr>
            <tr>
                <td class="style4">
                    年龄：</td>
                <td class="style6">
                    </td>
                <td class="style3">
                    </td>
            </tr>
            <tr>
                <td class="style5">
                    Email：</td>
                <td class="style7">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    QQ：</td>
                <td class="style6">
                    </td>
                <td class="style3">
                    </td>
            </tr>
            <tr>
                <td class="style8">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        
    </div>
    </form>
</body>
</html>
