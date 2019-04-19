<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="member.aspx.cs" Inherits="member" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SiteMapPath ID="SiteMapPath1" runat="server" >
    </asp:SiteMapPath>
 <div id="conten">   
    <h1>用户注册</h1>
    用户名：<asp:TextBox ID="admin" runat="server"></asp:TextBox>
    <br />
    密码：<asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
    <br />
    <asp:Button ID="btsum" runat="server" Text="提交" /> &nbsp; 
    <input id="Reset1" type="reset" value="重置" />&nbsp;
    <asp:Button ID="bt" runat="server" Text="注册" />


      
</div>
</asp:Content>

