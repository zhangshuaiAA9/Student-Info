using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.IO;

public partial class Admin_StudentManage : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    Alert js = new Alert();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Get_Info();
        }
    }
    protected void GvInfo_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SqlHelper mydata = new SqlHelper();

        string ID = GvInfo.DataKeys[e.RowIndex].Values[0].ToString();
        try
        {
            mydata.RunSql("delete  from Student  where  id='" + ID + "'");

            js.Alertjs("删除成功！");
            GvInfo.EditIndex = -1;
            Get_Info();
        }
        catch
        {

            js.Alertjs("删除失败！");
        }

    }
    private void Get_Info()
    {
        try
        {
            GvInfo.DataSource = GetCodeBy(0);
            GvInfo.DataBind();
        }
        catch
        {

        }
    }
    protected void GvInfo_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GvInfo.PageIndex = e.NewPageIndex;
        Get_Info();
    }
    protected void GvInfo_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        //鼠标移动变色
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            //当鼠标放上去的时候 先保存当前行的背景颜色 并给附一颜色 
            e.Row.Attributes.Add("onmouseover", "currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f6f6f6',this.style.fontWeight='';");
            //当鼠标离开的时候 将背景颜色还原的以前的颜色 
            e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=currentcolor,this.style.fontWeight='';");
        }
        //单击行改变行背景颜色 
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes.Add("onclick", "this.style.backgroundColor='#f6f6f6'; this.style.color='buttontext';this.style.cursor='default';");
        }

    }
    public DataSet GetCodeBy(int iCount)
    {
        string strTop = "";
        if (iCount > 1)
        {
            strTop = "top " + iCount.ToString();
        }
        //查询语句
        string sql = "select  " + strTop + "  a.*,b.ClassName from [Student] a join Classes b on a.ClassID=b.id  where a.IDCard like '%" + TextBox1.Text + "%'   ";
        DataSet ds = data.GetDs(sql,"tbl");
        return ds;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Get_Info();
    }
}
