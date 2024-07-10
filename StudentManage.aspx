<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentManage.aspx.cs" Inherits="Admin_StudentManage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>学生信息管理系统</title>
    <link rel="stylesheet" href="/Content/css/bootstrap.css" type="text/css" />
    <link rel="stylesheet" href="/Content/css/animate.css" type="text/css" />
    <link rel="stylesheet" href="/Content/css/font-awesome.min.css" type="text/css" />
    <link rel="stylesheet" href="/Content/css/simple-line-icons.css" type="text/css" />
    <link rel="stylesheet" href="/Content/css/font.css" type="text/css" />
    <link rel="stylesheet" href="/Content/css/app.css" type="text/css" />
    <script src="/Content/js/jquery.min.js"></script>
    <script src="/Content/js/bootstrap.js"></script>
    <script src="/Content/js/app.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <table cellspacing="0" class="table table-responsive" cellpadding="0" width="100%" border="0">
            <tbody>
                <tr>
                    <td valign="top" width="100%" bgcolor="#ffffff" style="height: 61px">
                        <table cellspacing="0" cellpadding="5" width="100%" border="0">
                            <tr>
                                <td class="manageHead">当前位置：学生信息管理
                                </td>
                            </tr>
                            <tr>
                                <td align="center" style="padding: 10px 0;">学号：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="查询" /></td>
                            </tr>
                            <tr>
                                <td align="left">
                                    <asp:GridView ID="GvInfo" CssClass="table table-responsive" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                        BackColor="White" CellPadding="5" DataKeyNames="id" OnPageIndexChanging="GvInfo_PageIndexChanging"
                                        OnRowDataBound="GvInfo_RowDataBound" OnRowDeleting="GvInfo_RowDeleting" Width="100%">
                                        <PagerSettings FirstPageText="首页" LastPageText="尾页" Mode="NextPreviousFirstLast"
                                            NextPageText="下一页" PageButtonCount="12" PreviousPageText="上一页" />
                                        <RowStyle HorizontalAlign="Left" />
                                        <Columns>
                                            <asp:TemplateField HeaderText="学号">
                                                <ItemTemplate>
                                                    <asp:Label ID="IDCard" runat="server" Text='<%# Bind("IDCard") %>' Width="70px"></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Left" Width="80px" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="密码">
                                                <ItemTemplate>
                                                    <asp:Label ID="Password" runat="server" Text='<%# Bind("Password") %>' Width="70px"></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Left" Width="80px" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="姓名">
                                                <ItemTemplate>
                                                    <asp:Label ID="Name" runat="server" Text='<%# Bind("Name") %>' Width="60px"></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Left" Width="50px" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="性别">
                                                <ItemTemplate>
                                                    <asp:Label ID="Sex" runat="server" Text='<%# Bind("Sex") %>' Width="40px"></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Left" Width="40px" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="所在班级">
                                                <ItemTemplate>
                                                    <asp:Label ID="ClassName" runat="server" Text='<%# Bind("ClassName") %>' Width="120px"></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Left" Width="120px" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="出生日期">
                                                <ItemTemplate>
                                                    <asp:Label ID="Birthday" runat="server" Text='<%# Bind("Birthday") %>' Width="80px"></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Left" Width="80px" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="联系电话">
                                                <ItemTemplate>
                                                    <asp:Label ID="Tel" runat="server" Text='<%# Bind("Tel") %>' Width="80px"></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Left" Width="80px" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="已修学分">
                                                <ItemTemplate>
                                                    <asp:Label ID="GetScore" runat="server" Text='<%# Bind("GetScore") %>' Width="60px"></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Left" Width="60px" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="入学日期">
                                                <ItemTemplate>
                                                    <asp:Label ID="JoinDate" runat="server" Text='<%# Bind("JoinDate") %>' Width="80px"></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Left" Width="80px" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="家庭地址">
                                                <ItemTemplate>
                                                    <asp:Label ID="Address" runat="server" Text='<%# Bind("Address") %>' Width="120px"></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Left" Width="120px" />
                                            </asp:TemplateField>
                                            <%--<asp:TemplateField HeaderText="备注">
                                                <ItemTemplate>
                                                    <asp:Label ID="Content" runat="server" Text='<%# Bind("Content") %>' Width="120px"></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Left" Width="120px" />
                                            </asp:TemplateField>--%>
                                            <asp:TemplateField HeaderText="操作">
                                                <ItemTemplate>
                                                    <asp:HyperLink ID="HyperLink1" ForeColor="Blue" runat="server" NavigateUrl='<%# "ModifyStudent.aspx?id="+Eval("id") %>'
                                                        Text="修改" Width="120px"></asp:HyperLink>
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Left" Width="120px" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="操作" ShowHeader="False">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete"
                                                        Text="删除" ForeColor="Blue" Width="120px"></asp:LinkButton>
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Left" Width="120px" />
                                            </asp:TemplateField>
                                        </Columns>
                                        <PagerTemplate>
                                            <table border="0" width="100%">
                                                <tr>
                                                    <td>
                                                        <asp:LinkButton ID="LinkButtonFirstPage" runat="server" CommandArgument="First" CommandName="Page"
                                                            Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != 0 %>">首页 </asp:LinkButton>
                                                        <asp:LinkButton ID="LinkButtonPreviousPage" runat="server" CommandArgument="Prev"
                                                            CommandName="Page" Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != 0 %>">上一页 </asp:LinkButton>
                                                        <asp:LinkButton ID="LinkButtonNextPage" runat="server" CommandArgument="Next" CommandName="Page"
                                                            Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>">下一页 </asp:LinkButton>
                                                        <asp:LinkButton ID="LinkButtonLastPage" runat="server" CommandArgument="Last" CommandName="Page"
                                                            Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>">尾页 </asp:LinkButton>
                                                        共
                                  <asp:Label ID="LabelPageCount" runat="server" Text=" <%# ((GridView)Container.NamingContainer).PageCount %>"> </asp:Label>页
                                              第
                                  <asp:Label ID="Label2" runat="server" Text=" <%# ((GridView)Container.NamingContainer).PageIndex + 1 %>"> </asp:Label>页
                                                    </td>
                                                    <td align="right" width="20%"></td>
                                                </tr>
                                            </table>
                                        </PagerTemplate>
                                        <HeaderStyle BackColor="#F6F6F6" />
                                    </asp:GridView>
                                    <asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
