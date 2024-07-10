using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.App_Code;

public partial class Studentcode_UpdatePass1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
#pragma warning disable CS0436 // 类型与导入类型冲突
        CommDB mydb = new CommDB();
#pragma warning restore CS0436 // 类型与导入类型冲突
        string mysql, sn = "";
        int i;
        mysql = "SELECT * FROM student WHERE sno='" + Session["uno"] + "' AND spass='" + TextBox1.Text.Trim() + "'";
        i = mydb.Rownum(mysql, "student", ref sn);
        if (i == 0)
            Response.Write("<script>alert('抱歉，原密码输入错误!请查实!')</script>");

        else
        {
            mysql = "UPDATE student SET spass='" + TextBox2.Text.Trim() + "' WHERE sno='" + Session["uno"] + "'";
            mydb.ExecuteNonQuery(mysql);
            Response.Write("<script>alert('密码修改成功!')</script>");

        }
    }
}