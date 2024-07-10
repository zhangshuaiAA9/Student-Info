<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SelectCourse1.aspx.cs" Inherits="Studentcode_SelectCourse1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
        
        <div>
    
            课程号：<asp:TextBox ID="TextBox1" runat="server" Width="135px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="课程号不能为空" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;课程名：<asp:TextBox ID="TextBox2" runat="server" Width="135px"></asp:TextBox>
&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="课程名不能为空" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;上课教师编号：<asp:TextBox ID="TextBox3" runat="server" Width="135px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox3" ErrorMessage="上课教师编号不能为空" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="提交" />
            <br />
            <br />
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="3" Width="100%">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    </form>
</body>
</html>

