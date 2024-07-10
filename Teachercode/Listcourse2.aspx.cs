using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.App_Code;

public partial class Teachercode_Listcourse2 : System.Web.UI.Page
{
    CommDB mydb = new CommDB();
    DataSet myds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            string mysql = "SELECT * FROM course WHERE tno='" + Session["uno"] + "'";
            myds = mydb.ExecuteQuery(mysql, "course");
            if (myds.Tables["course"].Rows.Count > 0)
            {
                GridView1.DataSource = myds.Tables["course"];
                GridView1.DataBind();
            }
            else
                Response.Write("<script>alert('你没有安排任何教学任务!')</script>");

        }
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        string mysql = "SELECT * FROM course WHERE tno = '" + Session["uno"] + "'";
        myds = mydb.ExecuteQuery(mysql, "course");
        GridView1.DataSource = myds.Tables["course"];
        GridView1.DataBind();
    }

}