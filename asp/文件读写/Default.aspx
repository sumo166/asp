<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="btn" runat="server" Text="读取" onclick="btn_Click" />
        <asp:Button ID="btnwrite" runat="server" Text="写入文件" onclick="btnwrite_Click" />
        <asp:TextBox ID="write"
            runat="server" Height="106px" style="margin-bottom: 0px" 
            TextMode="MultiLine"></asp:TextBox>
        <br />
        <asp:Label ID="Labe" runat="server" Text=""></asp:Label>
    
    </div>
    </form>
</body>
</html>
