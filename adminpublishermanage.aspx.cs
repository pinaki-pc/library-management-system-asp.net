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
    public partial class adminpublishermanage : System.Web.UI.Page
    {
        //connection string con
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            showCurrentData();
        }

        //go btn event
        protected void Button2_Click(object sender, EventArgs e)
        {
            goPublisher();
        }
        //insert btn event
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkPublisher())
            {
                Response.Write("<script>alert('This Publisher is already existed, choose another Publisher Id');</script>");

            }
            else
            {
                addNewPublisher();
                showCurrentData();
                clearForm();
            }
        }
        //update btn event
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkPublisher())
            {
                updatePublisher();
                showCurrentData();
                clearForm();

            }
            else
            {
                Response.Write("<script>alert('This Publisher dose not existed');</script>");

            }
        }
        //delete btn event
        protected void Button4_Click(object sender, EventArgs e)
        {

            if (checkPublisher())
            {
                deletepublisher();
                showCurrentData();
                clearForm();

            }
            else
            {
                Response.Write("<script>alert('This Auther dose not existed');</script>");

            }
        }

        //user defiened methods


        //add new Publisher
        protected void addNewPublisher()
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

                string query1 = "insert into publisher_master_tbl(publisher_id,publisher_name) values(@publisher_id,@publisher_name)";

                SqlCommand cmd = new SqlCommand(query1, con);
                cmd.Parameters.AddWithValue("@publisher_id", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@publisher_name", TextBox4.Text.Trim());


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Publisher " + TextBox3.Text + " added successfully');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }
        //update Publisher
        protected void updatePublisher()
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

                string query1 = "update publisher_master_tbl set publisher_name=@publisher_name where publisher_id='" + TextBox3.Text.Trim() + "'";

                SqlCommand cmd = new SqlCommand(query1, con);
                cmd.Parameters.AddWithValue("@publisher_name", TextBox4.Text.Trim());


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Publisher " + TextBox3.Text + " updated successfully');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }
        //delete Publisher
        protected void deletepublisher()
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

                string query1 = "delete from publisher_master_tbl where publisher_id='" + TextBox3.Text.Trim() + "'";

                SqlCommand cmd = new SqlCommand(query1, con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('publisher " + TextBox3.Text + " deleted successfully');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }
        //go btn Publisher id
        protected void goPublisher()
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

                string query1 = "select * from publisher_master_tbl where publisher_id='" + TextBox3.Text.Trim() + "'";

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
                    Response.Write("<script>alert('Publisher dose not existed');</script>");
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

                string viewQuery = "select * from publisher_master_tbl";

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
        //check publisher esists
        bool checkPublisher()
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

                string checkId = "select * from publisher_master_tbl where publisher_id='" + TextBox3.Text.Trim() + "'";
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