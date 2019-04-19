<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <!--必需值验证-->
            用户名：<asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ForeColor="Red" ControlToValidate="TextBox1" ErrorMessage=" (用户名不能为空)" Font-Size="Small" Display ="Dynamic">     
                    </asp:RequiredFieldValidator>
                    <!--RequiredFieldValidator必须验证 ControlToValidate要验证的控件标识符为ID ErrorMessage错误提示：-->
                    <hr />
                    <asp:Button ID="Button1" runat="server" Text="确定" />
    </div>
           <!--日期比较验证-->
               到达日期：<asp:TextBox ID="TextBox2" runat="server" 
        ontextchanged="TextBox2_TextChanged"></asp:TextBox>
                         <asp:CompareValidator ID="CompareValidator1" runat="server" Display="Dynamic"
                           ErrorMessage="请输入正确的日期格式，如：2013/02/01" Font-Size="Small"
                           Operator="DataTypeCheck"  ControlToValidate="TextBox2" Type="Date">
                           </asp:CompareValidator>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                           ForeColor="Red" ControlToValidate="TextBox2"  ErrorMessage=" (错误)" 
                           Font-Size="Small" Display ="Dynamic">
                    
                            </asp:RequiredFieldValidator>
                           <!--asp:CompareValidator特定值比较;Operator比较是什么类型；DataTypeCheck为数据类型验证；-->
                           <br />
               离开日期：<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator2" runat="server" Display="Dynamic"
                           ErrorMessage="离开日期不能早于到达日期！" Font-Size="Small" 
                           Operator="GreaterThanEqual" ControlToValidate="TextBox3"  Type="Date" ControlToCompare="TextBox2" 
                          >
                         </asp:CompareValidator> 
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                           ForeColor="Red" ControlToValidate="TextBox3"  ErrorMessage=" (错误)" 
                           Font-Size="Small" Display ="Dynamic">
                           </asp:RequiredFieldValidator>
                          <br />
                 手机号码：<asp:TextBox ID="txtPhone" runat="server" ></asp:TextBox>
                           <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="手机号码格式不正确" 
                           ControlToValidate="txtPhone" ClientValidationFunction="phoneCheck">
                           </asp:CustomValidator> 
                           <script type="text/javascript">
                               function phoneCheck(source, args) 
                               {
                                   var phone = args.Value; //声明一个phone函数为args.value的值
                                   args.IsValid = false;
                                   if (phone.length == 11)                       
                                       if (phone.charAt(0) == '1') {
                                           for (var i = 0; i < phone.length; i++)
                                               if (phone.charAt(i) < '0' && phone.charAt(i) > '9')
                                                   break;
                                                     if(i==phone.length)
                                                         args.IsValid = true;
                                                     alert("恭喜你手机号码正确");
                                       
                                       }
                               }
                           </script>
                            
            

                        
                         
                         
                         
                         
    <br />


                        
                         
                         
                         
                         
    </form>
</body>
</html>
