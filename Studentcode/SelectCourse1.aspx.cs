using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.App_Code;

public partial class Studentcode_SelectCourse1 : System.Web.UI.Page
{
    CommDB mydb = new CommDB();
    DataSet myds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        string mysql = "SELECT * FROM course";
        myds = mydb.ExecuteQuery(mysql, "course");
        GridView1.DataSource = myds.Tables["course"];
        GridView1.DataBind();
    }


    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        string mysql = "SELECT * FROM course";
        myds = mydb.ExecuteQuery(mysql, "course");
        GridView1.DataSource = myds.Tables["course"];
        GridView1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int i;
#pragma warning disable CS0436 // 类型与导入类型冲突
        CommDB mydb = new CommDB();
#pragma warning restore CS0436 // 类型与导入类型冲突
        string mysql, sn = "";
        mysql = "SELECT * FROM  course WHERE cno='" + TextBox1.Text + "'";
        i = mydb.Rownum(mysql, " teacher", ref sn);
        if (i == 0)
            Response.Write("<script>alert('抱歉，没有该课程!')</script>");
        else
        {
            string mysql2, sn2 = "";
            mysql2 = "SELECT * FROM  course WHERE tno='" + TextBox3.Text + "'" + " and cno = '" + TextBox1.Text + "'" + " and cname = '" + TextBox2.Text + "'";
            i = mydb.Rownum(mysql2, " course", ref sn);
            if (i == 0)
                Response.Write("<script>alert('抱歉，没有该老师编号!')</script>");
            else
            {
                mysql2 = "INSERT INTO score(sno,sname,cno,cname,tno) VALUES('" +
                Session["uno"] + "','" + Session["uname"] + "','" + TextBox1.Text + "','" +
                TextBox2.Text + "','" + TextBox3.Text + "')";
                mydb.ExecuteNonQuery(mysql2);
                Response.Write("<script>alert('选课已成功!')</script>");
            }
        }
    }
}