<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SiteMapPath ID="siteMap1" runat="server" PathSeparator=">>"></asp:SiteMapPath><!--站点地图路径-->
        <br />
        <br />
        <asp:Menu ID="Menu1" runat="server" DataSourceID="SiteMapDataSource1" StaticDisplayLevels="1" MaximumDynamicDisplayLevels="2">
        </asp:Menu>
        <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" /><!--菜单-->

        <asp:TreeView ID="tv1" runat="server" DataSourceID="SiteMapDataSource1" >
        </asp:TreeView>
        <br />
        <br />
        <asp:Button ID="BUTBL" runat="server" Text=" 遍历" onclick="BUTBL_Click"/>
        <asp:Button ID="Button2" runat="server" Text=" 添加" onclick="Button2_Click"/>

        <br />
    </div><asp:Label runat="server" ID="cs"></asp:Label>
    </form>
</body>
</html>
