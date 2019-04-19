<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form.aspx.cs" Inherits="form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


   



<% Response.Write(Request.Form["txt"]); %>

<html >


<body>
     
    <form id="form1" runat="server">
    <div style="height: 118px">
        Request对象获取表单数据
        <hr />
      
        <input type="text"  name="txt"/>
        <input id="Submit1" type="submit" value="submit"  />
        
        <%--type="submit"为提交类型才可以与页面交互 --%>
        <br />                                               
        <br />
        获取查询字符串的数据：

     
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
    </form>
</body>
</html>
