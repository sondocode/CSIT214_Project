using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CSIT214_project
{
    public partial class lecturer_dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string sub1, sub2, sub3, sub4, fname, lname;

            try
            {
                string getUsername = Session["LECTURER"].ToString();
                string connectionString = ConfigurationManager.ConnectionStrings["db_con"].ConnectionString;
                SqlConnection con = new SqlConnection(connectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT lecFirstName, lecLastName, lecUsername, lecSubCode1, lecSubCode2, lecSubCode3, lecSubCode4 FROM LECTURER WHERE lecUsername=@getUsername", con);
                cmd.Parameters.AddWithValue("@getUsername", getUsername);
                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    sub1 = reader["lecSubCode1"].ToString();
                    sub2 = reader["lecSubCode2"].ToString();
                    sub3 = reader["lecSubCode3"].ToString();
                    sub4 = reader["lecSubCode4"].ToString();
                    fname = reader["lecFirstName"].ToString();
                    lname = reader["lecLastName"].ToString();

                    label_sub1.Text = "<span class='glyphicon glyphicon-blackboard'></span> &nbsp;" + sub1;
                    label_sub2.Text = "<span class='glyphicon glyphicon-blackboard'></span> &nbsp;" + sub2;
                    label_sub3.Text = "<span class='glyphicon glyphicon-blackboard'></span> &nbsp;" + sub3;
                    label_sub4.Text = "<span class='glyphicon glyphicon-blackboard'></span> &nbsp;" + sub4;
                    label_sub1_1.Text = "&nbsp;&nbsp;" + sub1;
                    label_sub2_1.Text = "&nbsp;&nbsp;" + sub2;
                    label_sub3_1.Text = "&nbsp;&nbsp;" + sub3;
                    label_sub4_1.Text = "&nbsp;&nbsp;" + sub4;
                    label_studFullName.Text = "&nbsp;<span class='glyphicon glyphicon-user'></span> &nbsp; " + fname + " " + lname;
                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Redirect("Login.aspx");
            }

        }
    }
}