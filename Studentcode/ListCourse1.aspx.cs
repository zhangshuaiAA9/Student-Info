using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.App_Code;

public partial class Studentcode_ListCourse : System.Web.UI.Page
{
    CommDB mydb = new CommDB();
    DataSet myds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!Page.IsPostBack)
        // {
        string mysql;
        mysql = "SELECT * FROM score WHERE sno='" + Session["uno"] + "'";
        myds = mydb.ExecuteQuery(mysql, "score");
        if (myds.Tables["score"].Rows.Count > 0)
        {
            GridView1.DataSource = myds.Tables["score"];
            GridView1.DataBind();
        }
        else
            Response.Write("<script>alert('抱歉，你没选修任何课程或选课没有提交')</script>");

        //}
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        string mysql = "SELECT * FROM score WHERE sno = '" + Session["uno"] + "'";
        myds = mydb.ExecuteQuery(mysql, "score");
        GridView1.DataSource = myds.Tables["score"];
        GridView1.DataBind();
    }
}