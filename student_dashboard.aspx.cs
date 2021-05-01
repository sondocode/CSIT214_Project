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
    public partial class student_dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string sub1, sub2, sub3, sub4, fname, lname;
 
            try
            {
                string getUsername = Session["STUDENT"].ToString();
                string connectionString = ConfigurationManager.ConnectionStrings["db_con"].ConnectionString;
                SqlConnection con = new SqlConnection(connectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT studFirstName, studLastName, studUsername, studSubCode1, studSubCode2, studSubCode3, studSubCode4 FROM STUDENT WHERE studUsername=@getUsername", con);
                cmd.Parameters.AddWithValue("@getUsername", getUsername);
                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    sub1 = reader["studSubCode1"].ToString();
                    sub2 = reader["studSubCode2"].ToString();
                    sub3 = reader["studSubCode3"].ToString();
                    sub4 = reader["studSubCode4"].ToString();
                    fname = reader["studFirstName"].ToString();
                    lname = reader["studLastName"].ToString();

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