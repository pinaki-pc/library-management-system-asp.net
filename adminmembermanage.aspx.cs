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
    public partial class adminmembermanage : System.Web.UI.Page
    {
        
        //connection string con
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            //show gridview on pagelode
            showCurrentData();
        }

        //go btn event
        protected void Button4_Click(object sender, EventArgs e)
        {
            goMember();
        }

        //active linkbtn event
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            
            if (TextBox3.Text != "")
            {
                updateMemberStatus("Active");
            }
            else
            {
                Response.Write("<script>alert('no value in member id');</script>");
                TextBox3.Focus();
            }
        }
        
        //pendind linkbtn event
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            if (TextBox3.Text != "")
            {
                updateMemberStatus("Pending");
            }
            else
            {
                Response.Write("<script>alert('no value in member id');</script>");
                TextBox3.Focus();
            }
            
        }
        //deactive linkbtn event
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            if (TextBox3.Text != "")
            {
                updateMemberStatus("Deactive");
            }
            else
            {
                Response.Write("<script>alert('no value in member id');</script>");
                TextBox3.Focus();
            }
            
        }

        //delete member data btn event
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkMember())
            {
                deleteMember();
                clearForm();
            }
            else
            {
                Response.Write("<script>alert('member id not found')</script>");
            }
        }






        //user defiened methods

        //check Member esists
        bool checkMember()
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

                string checkId = "select * from member_master_tbl where member_id='" + TextBox3.Text.Trim() + "'";
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

                string viewQuery = "select * from member_master_tbl";

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
        //go btn member id
        protected void goMember()
        {
            if (TextBox3.Text.Trim().Equals(""))
            {
                Response.Write("<script>alert('blank member id');</script>");
                 
            }
            else
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

                    string query1 = "select * from member_master_tbl where member_id='" + TextBox3.Text.Trim() + "'";

                    SqlCommand cmd = new SqlCommand(query1, con);

                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    if (dt.Rows.Count >= 1)
                    {
                        TextBox4.Text = dt.Rows[0][0].ToString(); //full name
                        TextBox7.Text = dt.Rows[0][10].ToString(); //acc status
                        TextBox1.Text = dt.Rows[0][1].ToString(); //dob
                        TextBox2.Text = dt.Rows[0][2].ToString(); //contact
                        TextBox8.Text = dt.Rows[0][3].ToString(); //email id
                        TextBox5.Text = dt.Rows[0][4].ToString(); //state
                        TextBox6.Text = dt.Rows[0][5].ToString(); //city
                        TextBox9.Text = dt.Rows[0][6].ToString(); //pin code
                        TextBox10.Text = dt.Rows[0][7].ToString(); //full addr
                    }
                    else
                    {
                        Response.Write("<script>alert('This member<" + TextBox3.Text + "> dose not existed');</script>");
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");

                }
            }
           

        }
        //update member status 
        protected void updateMemberStatus(string status)
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

                string query1 = "update member_master_tbl set account_status='" + status + "' where member_id='" + TextBox3.Text.Trim() + "'";

                SqlCommand cmd = new SqlCommand(query1, con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Member <" + TextBox3.Text + "> status updated');</script>");
                showCurrentData();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }
        //delete member permanently 
        protected void deleteMember()
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

                string query1 = "delete member_master_tbl where member_id='" + TextBox3.Text.Trim() + "'";

                SqlCommand cmd = new SqlCommand(query1, con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Member <" + TextBox3.Text + "> successfully deleted');</script>");
                showCurrentData();
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
            TextBox7.Text = "";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox8.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
        }

    }
}