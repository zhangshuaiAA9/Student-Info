<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student1.aspx.cs" Inherits="Studentcode_Student1" %>

<!DOCTYPE html>
<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="App_Themes/主题1/StyleSheet2.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style2 {
            width:100%;
            height: 556px;

        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="header">
	            <div class="header_title">
		            <span class="title_con">学生成绩管理系统&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <asp:Label ID="Label1" runat="server" BorderColor="#FF9933" Text="学生端：" ForeColor="Black" Font-Size="Medium"></asp:Label>
                    <a href="Login.aspx" style="font-size:20px;color: dodgerblue;">退出</a>
                    </span></div>
</div>
        <asp:Menu ID="Menu1" runat="server" BackColor="#33CCFF" DynamicHorizontalOffset="2" Font-Bold="True" Font-Names="Trebuchet MS" Font-Size="1em" ForeColor="White" Orientation="Horizontal" StaticSubMenuIndent="10px" Width="100%" Height="40px">
            <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#B5C7DE" />
            <DynamicSelectedStyle BackColor="#507CD1" />
            <DynamicItemTemplate>
                <%# Eval("Text") %>
            </DynamicItemTemplate>
            <Items>
                <asp:MenuItem Text="我的选课" Value="我的选课">
                    <asp:MenuItem Text="我的课表" Value="我的课表" NavigateUrl="~/Studentcode/Listcourse1.aspx" Target="Iframe1"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Studentcode/SelectCourse1.aspx" Target="Iframe1" Text="选课" Value="选课"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="我的成绩" Value="我的成绩">
                    <asp:MenuItem Text="我的成绩" Value="我的成绩" NavigateUrl="~/Studentcode/ListScore1.aspx" Target="Iframe1"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="密码管理" Value="密码管理">
                    <asp:MenuItem NavigateUrl="~/Studentcode/UpdatePass1.aspx" Target="Iframe1" Text="修改密码" Value="修改密码"></asp:MenuItem>
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
        frameborder="0">               
                   </iframe>
        <br />
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</body>
</html>
