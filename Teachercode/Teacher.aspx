<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Teacher.aspx.cs" Inherits="Teachercode_Teacher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="App_Themes/主题1/StyleSheet2.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="header">
	            <div class="header_title">
		            <span class="title_con">学生成绩管理系统&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <asp:Label ID="Label1" runat="server" BorderColor="#FF9933" Text="教师端：" ForeColor="Black" Font-Size="Medium"></asp:Label>
                    <a href="Login.aspx" style="font-size:20px;color: dodgerblue;">退出</a>
                    </span></div>
</div>
        <asp:Menu ID="Menu1" runat="server" BackColor="#33CCFF" DynamicHorizontalOffset="2" Font-Bold="True" Font-Names="Trebuchet MS" Font-Size="1em" ForeColor="White"  Orientation="Horizontal" StaticSubMenuIndent="10px" Width="100%">
            <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#B5C7DE" />
            <DynamicSelectedStyle BackColor="#507CD1" />
            <DynamicItemTemplate>
                <%# Eval("Text") %>
            </DynamicItemTemplate>
            <Items>
                <asp:MenuItem Text="课程管理" Value="课程管理">
                    <asp:MenuItem Text="我的课程" Value="我的课程" NavigateUrl="~/Teachercode/Listcourse2.aspx" Target="Iframe1"></asp:MenuItem>
                    <asp:MenuItem Text="选课学生" Value="选课学生" Target="Iframe1" NavigateUrl="~/Teachercode/ListStudent2.aspx"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="成绩管理" Value="成绩管理">
                    <asp:MenuItem Text="输入学生成绩" Value="输入学生成绩" Target="Iframe1" NavigateUrl="~/Teachercode/InputScore.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="查看学生成绩" Value="查看学生成绩" NavigateUrl="~/Teachercode/QueryScore.aspx" Target="Iframe1"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="密码管理" Value="密码管理">
                    <asp:MenuItem Target="Iframe1" Text="修改密码" Value="修改密码" NavigateUrl="~/Teachercode/UpdatePass.aspx"></asp:MenuItem>
                </asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#507CD1" />
            <StaticItemTemplate>
                <%# Eval("Text") %>
            </StaticItemTemplate>
        </asp:Menu>


        <iframe name = "Iframe1" style=" text-align:center" id = "Iframe1" src="WebForm1.aspx" class="auto-style2"scrolling="no"
        frameborder="0" height="313px" width="100%">               
                   </iframe>
        <br />
    </form>
</body>
</html>

