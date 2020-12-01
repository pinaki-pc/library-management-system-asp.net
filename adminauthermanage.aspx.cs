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


    public partial class adminauthermanage : System.Web.UI.Page
    {
        //connection string con
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            showCurrentData();
        }

        //add btn click
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkAuther())
            {
                Response.Write("<script>alert('This Auther is already existed, choose another Auther Id');</script>");

            }
            else
            {
                addNewAuther();
                showCurrentData();
                clearForm();
            }
        }
        //update btn click
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkAuther())
            {
                updateAuther();
                showCurrentData();
                clearForm();
                
            }
            else
            {
                Response.Write("<script>alert('This Auther dose not existed');</script>");

            }
        }

        //delete btn click
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (checkAuther())
            {
                deleteAuther();
                showCurrentData();
                clearForm();

            }
            else
            {
                Response.Write("<script>alert('This Auther dose not existed');</script>");

            }
        }

        //go btn click
        protected void Button2_Click(object sender, EventArgs e)
        {
            goAuther();
        }




        //userdefiened functions
        

        //go btn auther id
        protected void goAuther()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                //establishing connection 
                con.Close();
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                string query1 = "select * from auther_master_tbl where auther_id='" + TextBox3.Text.Trim() + "'";

                SqlCommand cmd = new SqlCommand(query1, con);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox4.Text = dt.Rows[0][1].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Auther dose not existed');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }
        //gridview show data
        protected void showCurrentData()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                //establishing connection 
                con.Close();
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                string viewQuery = "select * from auther_master_tbl";

                SqlDataAdapter da = new SqlDataAdapter(viewQuery, con);

                DataSet ds = new DataSet();
                da.Fill(ds);

                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }
        //clear data
        protected void clearForm()
        {
            TextBox3.Text = "";
            TextBox4.Text = "";
        }
        //delete auther
        protected void deleteAuther()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                //establishing connection 
                con.Close();
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                string query1 = "delete from auther_master_tbl where auther_id='" + TextBox3.Text.Trim() + "'";

                SqlCommand cmd = new SqlCommand(query1, con);
                
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Auther " + TextBox3.Text + " deleted successfully');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }
        //update auther
        protected void updateAuther()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                //establishing connection 
                con.Close();
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                string query1 = "update auther_master_tbl set auther_name=@auther_name where auther_id='"+TextBox3.Text.Trim()+"'";

                SqlCommand cmd = new SqlCommand(query1, con);
                cmd.Parameters.AddWithValue("@auther_name", TextBox4.Text.Trim());


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Auther " + TextBox3.Text + " updated successfully');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }
        //add new auther
        protected void addNewAuther()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                //establishing connection 
                con.Close();
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                string query1 = "insert into auther_master_tbl(auther_id,auther_name) values(@auther_id,@auther_name)";

                SqlCommand cmd = new SqlCommand(query1, con);
                cmd.Parameters.AddWithValue("@auther_id", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@auther_name", TextBox4.Text.Trim());
               

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Auther "+TextBox3.Text+" added successfully');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

        //check auther id exists or not
        bool checkAuther()
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);

                //establishing connection 
                con.Close();
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                string checkId = "select * from auther_master_tbl where auther_id='" + TextBox3.Text.Trim() + "'";
                SqlCommand cmd = new SqlCommand(checkId, con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

                return false;
            }

        }
    }
}