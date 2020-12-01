using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.IO;

namespace libraryManagement_apps_
{
    public partial class adminbookinventory : System.Web.UI.Page
    {
        //connection string con
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            //show gridview on pagelode
            showCurrentData();
            //ferching dropdown lists data
            if (!IsPostBack)
            {
                fillAutherPublisherValues();
            }
        }

        //go btn click event
        protected void Button4_Click(object sender, EventArgs e)
        {

        }
        //add btn click event
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkBookExists())
            {
                Response.Write("<script>alert('Book already exists try other books');</script>");

            }
            else
            {
                addNewBooks();
                showCurrentData();
            }
        }
        //update btn click event
        protected void Button2_Click(object sender, EventArgs e)
        {

        }
        //delete btn click event
        protected void Button3_Click(object sender, EventArgs e)
        {

        }


        //user defiend methods

        //fillAutherPublisherValues methods
        protected void fillAutherPublisherValues()
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
                //geting auther
                string getAutherQuery = "select auther_name from auther_master_tbl;";

                SqlCommand cmd = new SqlCommand(getAutherQuery, con);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                DropDownList3.DataSource = dt;
                DropDownList3.DataValueField = "auther_name";
                DropDownList3.DataBind();
                DropDownList3.Items.Insert(0, new ListItem("-- choose --", "0"));

                //geting publisher
                string getPubQuery = "select publisher_name from publisher_master_tbl;";

                cmd = new SqlCommand(getPubQuery, con);

                da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);
                DropDownList2.DataSource = dt;
                DropDownList2.DataValueField = "publisher_name";
                DropDownList2.DataBind();
                DropDownList2.Items.Insert(0, new ListItem("-- choose --", "0"));
                
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }

        }
        //addNewBooks methods
        protected void addNewBooks()
        {
            try
            {
                //multiple select values
                string genre = "";
                foreach (int i in ListBox1.GetSelectedIndices())
                {
                    genre = genre + ListBox1.Items[i] + ",";
                }
                genre = genre.Remove(genre.Length - 1);

                //img upload
                string path = Path.GetFileName(FileUpload1.PostedFile.FileName);
                string savloc = Server.MapPath("bookimage") + "//" + path;
                FileUpload1.PostedFile.SaveAs(savloc);
                string imgFileString = "~/bookimage/" + path;

                SqlConnection con = new SqlConnection(strcon);

                //establishing connection 
                con.Close();
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                string bookInsertQuery = "insert into  book_master_tbl (book_id,book_name,genre,auther_name,publisher_name,publish_date,language,edition,book_cost,no_of_pages,book_description,actual_stock,current_stock,book_img_link) values(@book_id,@book_name,@genre,@auther_name,@publisher_name,@publish_date,@language,@edition,@book_cost,@no_of_pages,@book_description,@actual_stock,@current_stock,@book_img_link)";

                SqlCommand cmd = new SqlCommand(bookInsertQuery, con);

                cmd.Parameters.AddWithValue("@book_id", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@book_name", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@genre", genre);
                cmd.Parameters.AddWithValue("@auther_name", DropDownList3.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@publisher_name", DropDownList2.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@publish_date", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@language", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@edition", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@book_cost", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@no_of_pages", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@book_description", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@actual_stock", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@current_stock", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@book_img_link", imgFileString);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('New book added successfuly');</script>");

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

                string viewQuery = "select * from book_master_tbl";

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
        //check Book esists
        bool checkBookExists()
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

                string checkId = "select * from book_master_tbl where book_id='" + TextBox3.Text.Trim() + "' or book_name='"+TextBox4.Text.Trim()+"'";
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