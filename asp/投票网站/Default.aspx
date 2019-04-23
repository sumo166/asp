<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="subject"> 
        <h2>新闻人物投票系统</h2>
        <div id="attention"> 注意：<asp:Label ID="lblState" runat="server" Text=""></asp:Label></div>
        <div id="name"> 
            <asp:RadioButtonList ID="rbtlVote" runat="server"
                RepeatDirection="Horizontal" RepeatColumns="2" Width="500px" >
                  <asp:ListItem>黄渤</asp:ListItem>
                  <asp:ListItem>孙红雷</asp:ListItem>
                  <asp:ListItem>黄磊</asp:ListItem>
                  <asp:ListItem>罗志祥</asp:ListItem>
                  <asp:ListItem>王迅</asp:ListItem>
                  <asp:ListItem>张艺兴</asp:ListItem>
                  <asp:ListItem>陈都灵</asp:ListItem>
                  <asp:ListItem>赵丽颖</asp:ListItem>
                  <asp:ListItem>韩庚</asp:ListItem>
                  <asp:ListItem>薇姿</asp:ListItem>
            </asp:RadioButtonList>
        </div>
        <div id="btn">
            <asp:Button ID="btnVote" runat="server" Text="投票" onclick="btnVote_Click" />
            <asp:Button ID="btnView" runat="server" Text="查看" onclick="btnView_Click" />
        </div>
        <asp:Label ID="lblView" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
