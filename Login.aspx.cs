using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CSIT214_project
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*When login page is loaded, all sessions are clear.*/
            Session.Clear();
        }

        protected void buttonSubmitClick(object sender, EventArgs e)
        {
            string username = usernameInput.Text;
            string pwd = userPwdInput.Text;
            if(username=="admin" && pwd=="adminadmin")
            {
                Session["ADMIN"] = username;
                Response.Redirect("admin_dashboard.aspx");
            }
            string connectionString1 = ConfigurationManager.ConnectionStrings["db_con"].ConnectionString;
            SqlConnection con1 = new SqlConnection(connectionString1);
            con1.Open();
            SqlCommand studCmd = new SqlCommand("SELECT studUsername, studPassword FROM STUDENT", con1);
            SqlDataReader studReader = studCmd.ExecuteReader();
            while(studReader.Read())
            {
                string studUsername = studReader["studUsername"].ToString();
                string studPassword = studReader["studPassword"].ToString();
                if(username.Equals(studUsername) && pwd.Equals(studPassword))
                {
                    Session["STUDENT"] = studUsername;
                    Response.Redirect("student_dashboard.aspx");
                    break;
                }
            }
            con1.Close();

            string connectionString2 = ConfigurationManager.ConnectionStrings["db_con"].ConnectionString;
            SqlConnection con2 = new SqlConnection(connectionString2);
            con2.Open();
            SqlCommand lecCmd = new SqlCommand("SELECT lecUsername, lecPassword FROM LECTURER", con2);
            
            SqlDataReader lecReader = lecCmd.ExecuteReader();
            while (lecReader.Read())
            {
                string lecUsername = lecReader["lecUsername"].ToString();
                string lecPassword = lecReader["lecPassword"].ToString();
                if (username.Equals(lecUsername) && pwd.Equals(lecPassword))
                {
                    Session["LECTURER"] = lecUsername;
                    Response.Redirect("lecturer_dashboard.aspx");
                    break;
                }
            }
            con2.Close();

            string connectionString3 = ConfigurationManager.ConnectionStrings["db_con"].ConnectionString;
            SqlConnection con3 = new SqlConnection(connectionString3);
            con3.Open();
            SqlCommand staffCmd = new SqlCommand("SELECT staffUsername, staffPassword FROM STAFF", con3);
            SqlDataReader staffReader = staffCmd.ExecuteReader();
            while (staffReader.Read())
            {
                string staffUsername = staffReader["staffUsername"].ToString();
                string staffPassword = staffReader["staffPassword"].ToString();
                if (username.Equals(staffUsername) && pwd.Equals(staffPassword))
                {
                    Session["STAFF"] = staffUsername;
                    Response.Redirect("staff_dashboard.aspx");
                    break;
                }
            }
            passwordValidator.Text = "WRONG!";
            con3.Close();
        }
    }
}