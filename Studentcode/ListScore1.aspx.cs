using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.App_Code;

public partial class Studentcode_ListScore1 : System.Web.UI.Page
{
#pragma warning disable CS0436 // 类型与导入类型冲突
    CommDB mydb = new CommDB();
#pragma warning restore CS0436 // 类型与导入类型冲突
    DataSet myds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            string mysql;
            mysql = "SELECT * FROM score WHERE sno='" + Session["uno"] + "'";
            myds = mydb.ExecuteQuery(mysql, "score");
            if (myds.Tables["score"].Rows.Count > 0)
            {
                GridView1.DataSource = myds.Tables["score"];
                GridView1.DataBind();
            }
            else
                Response.Redirect("WebForm1.aspx");
        }
    }
}