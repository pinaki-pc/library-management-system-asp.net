using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace libraryManagement_apps_
{
    public partial class userlogin : System.Web.UI.Page
    {

        //connection string con
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/userregistration.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //user login
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                //establishing connection 
                con.Close();
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                string checkLogin = "select * from member_master_tbl where member_id='"+TextBox1.Text.Trim()+"' and password='"+TextBox2.Text.Trim()+"'";
                SqlCommand cmd = new SqlCommand(checkLogin, con);

                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('Login sucsessful');</script>");
                        //create session[20 mins]
                        Session["username"] = dr.GetValue(8).ToString();
                        Session["fullname"] = dr.GetValue(0).ToString();
                        Session["role"] = "user";
                        Session["status"] = dr.GetValue(10).ToString();

                    }
                    Response.Redirect("~/homepage.aspx");
                }
                else
                {
                    Response.Write("<script>alert('invalid user');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }
    }
}