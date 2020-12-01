using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace libraryManagement_apps_
{
    public partial class main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {


                if (Session["role"]==null)
                {
                    LinkButton2.Visible = true; //user signin
                    LinkButton3.Visible = true; //user signup

                    LinkButton4.Visible = false; //logout
                    LinkButton5.Visible = false; //hello user

                    LinkButton6.Visible = true; //admin login
                    LinkButton7.Visible = false; //auther management
                    LinkButton8.Visible = false; //publisher management
                    LinkButton9.Visible = false; //book inventory
                    LinkButton10.Visible = false; //book issuing
                    LinkButton11.Visible = false; //member management
                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButton2.Visible = false; //user signin
                    LinkButton3.Visible = false; //user signup

                    LinkButton4.Visible = true; //logout
                    LinkButton5.Visible = true; //hello user
                    LinkButton5.Text = "Hello "+Session["username"].ToString();

                    LinkButton6.Visible = true; //admin login
                    LinkButton7.Visible = false; //auther management
                    LinkButton8.Visible = false; //publisher management
                    LinkButton9.Visible = false; //book inventory
                    LinkButton10.Visible = false; //book issuing
                    LinkButton11.Visible = false; //member management
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton2.Visible = false; //user signin
                    LinkButton3.Visible = false; //user signup

                    LinkButton4.Visible = true; //logout
                    LinkButton5.Visible = true; //hello user
                    LinkButton5.Text = "Hello Admin";

                    LinkButton6.Visible = false; //admin login
                    LinkButton7.Visible = true; //auther management
                    LinkButton8.Visible = true; //publisher management
                    LinkButton9.Visible = true; //book inventory
                    LinkButton10.Visible = true; //book issuing
                    LinkButton11.Visible = true; //member management
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/adminlogin.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/adminauthermanage.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/adminpublishermanage.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/adminbookinventory.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/adminbookissu.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/adminmembermanage.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/userregistration.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/userlogin.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";


            LinkButton2.Visible = true; //user signin
            LinkButton3.Visible = true; //user signup

            LinkButton4.Visible = false; //logout
            LinkButton5.Visible = false; //hello user

            LinkButton6.Visible = true; //admin login
            LinkButton7.Visible = false; //auther management
            LinkButton8.Visible = false; //publisher management
            LinkButton9.Visible = false; //book inventory
            LinkButton10.Visible = false; //book issuing
            LinkButton11.Visible = false; //member management
        }

        
    }
}