<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>站点导航-谭小虎</title>
</head>
<body>
    <form id="form1" runat="server">
   
    
        
    <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" Height="107px"
         Width="292px"
         BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderWidth="1px" Font-Names="Verdana"
         Font-Size="0.8em" onfinishbuttonclick="Wizard1_FinishButtonClick1" >
         
            <HeaderStyle BackColor="#284E98" BorderColor="#EFF3FB" BorderStyle="Solid" 
                BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" 
                HorizontalAlign="Center" />
         
            <HeaderTemplate>
                            <h3>编程语言调查</h3></HeaderTemplate>
            <NavigationButtonStyle BackColor="White" BorderColor="#507CD1" 
                BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
                ForeColor="#284E98" />
            <SideBarButtonStyle BackColor="#507CD1" Font-Names="Verdana" 
                ForeColor="White" />
            <SideBarStyle BackColor="#507CD1" Font-Size="0.9em" VerticalAlign="Top" Width="20%"/><%--SideBarStyle侧边栏样式 --%>
            <StepStyle Font-Size="0.8em" ForeColor="#333333" />
            <WizardSteps >
                <asp:WizardStep runat="server" Title="步骤1"  >
                    你的性别：
                   
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True">男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                    </asp:RadioButtonList>
                </asp:WizardStep>
                <asp:WizardStep  runat="server" Title="步骤2">
                    你喜欢的编程语言有哪些：
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal">
                        
                        <asp:ListItem>C</asp:ListItem>
                        <asp:ListItem>C#</asp:ListItem>
                        <asp:ListItem>Java</asp:ListItem>
                        <asp:ListItem>C++</asp:ListItem>
                        
                    </asp:CheckBoxList>
                </asp:WizardStep>
                <asp:WizardStep runat="server" Title="步骤3">
                    <asp:Label ID="labFinish" runat="server" Text="调查结束啦！"></asp:Label>
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
    </form>
</body>
</html>
