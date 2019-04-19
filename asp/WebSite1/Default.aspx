<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function Button2_onclick() {
            alert('客户端事件');
        }

// ]]>
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <input id="Button1" type="button" value="button" />
            <input id="Button2" type="button" value="button" runat="server" onclick="return Button2_onclick()" />
            <asp:Button ID="Button3" runat="server" Text="Button" onclick="Button3_Click" />
    </div>
    </form>
</body>
</html>
