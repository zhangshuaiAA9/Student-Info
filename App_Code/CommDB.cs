using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebApplication1.App_Code
{
    public class CommDB
    {
        public CommDB()
        { }
        public int Rownum(string sql, string tname, ref string sname)
        {
            int i = 0;
            SqlConnection myconn;
            myconn = new SqlConnection("Data Source=LAPTOP-R8GOP959;Initial Catalog=StudDB;Integrated Security=True");
            myconn.Open();
            SqlCommand mycmd = new SqlCommand(sql, myconn);
            SqlDataReader myreader = mycmd.ExecuteReader();
            while (myreader.Read())  //循环读取信息
            {
                sname = myreader[0].ToString();
                i++;
            }
            myconn.Close();
            return i;

        }
        //******************************************************************
        //执行SQL语句，返回是否成功执行。SQL语句最好是如下：
        //UPDATE 表名 SET 字段名=value,字段名=value WHERE 字段名=value
        //DELETE FROM 表名 WHERE 字段名=value
        //INSERT INTO 表名 (字段名,字段名) values (value,value)
        //******************************************************************
        public Boolean ExecuteNonQuery(string sql)
        {
            SqlConnection myconn;
            myconn = new SqlConnection("Data Source=LAPTOP-R8GOP959;Initial Catalog=StudDB;Integrated Security=True");
            myconn.Open();
            SqlCommand mycmd = new SqlCommand(sql, myconn);
            try
            {
                mycmd.ExecuteNonQuery();
                myconn.Close();
            }
            catch
            {
                myconn.Close();
                return false;
            }
            return true;
        }
        //*******************************************************************
        //执行SELECT语句，返回DataSet对象
        //*******************************************************************
        public DataSet ExecuteQuery(string sql, string tname)
        {
            SqlConnection myconn;
            myconn = new SqlConnection("Data Source=LAPTOP-R8GOP959;Initial Catalog=StudDB;Integrated Security=True");
            myconn.Open();
            SqlDataAdapter myda = new SqlDataAdapter(sql, myconn);
            DataSet myds = new DataSet();
            myda.Fill(myds, tname);
            myconn.Close();
            return myds;
        }


    }


    
}