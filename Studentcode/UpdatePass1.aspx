<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdatePass1.aspx.cs" Inherits="Studentcode_UpdatePass1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../App_Themes/主题1/StyleSheet2.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <table id="tablecenter" style="width:500px">
                 <tr>
                <td colspan="2" style="text-align: center; height: 40px">
                    <span class="auto-captionstyle">           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 修改我的密码</span>
                </td>
            <tr>
                <td class="auto-stringstyle">   
                    原密码
                </td>
                <td style="width:150px">
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Password" Width="99px"></asp:TextBox>
                </td>
                <td style="width:200px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                        ErrorMessage="原密码不能为空"> </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-stringstyle">   
                    新密码
                
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" style="width:100px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
                        ErrorMessage="新密码不能为空"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-stringstyle">   
  重复一次
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" style="width:100px"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2"
                        ControlToValidate="TextBox3" ErrorMessage="两次新密码输入不相同" >
                    </asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="提交" />
                </td>
            </tr>
        </table>    
    </div>
    </form>
</body>
</html>