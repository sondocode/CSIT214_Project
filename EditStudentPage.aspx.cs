using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CSIT214_project
{
    public partial class EditStudentPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                String val = Session["ADMIN"].ToString();
                if (!val.Equals("admin"))
                {
                    Response.Redirect("Login.aspx");
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("Login.aspx");
            }

            if (!this.IsPostBack)
            {
                this.showGridView();
            }
        }
        protected void showGridView()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["db_con"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            SqlDataAdapter sda = new SqlDataAdapter("SELECT studId, studFirstName, studLastName, studAddress, studPhoneNo, studEmail, studDob, studNationality, studProgram, studUsername, studPassword, studSubCode1, studSubCode2, studSubCode3, studSubCode4 FROM STUDENT", con);
            using (DataTable dt = new DataTable())
            {
                sda.Fill(dt);
                StudentGridView.DataSource = dt;
                StudentGridView.DataBind();
            }
        }

        protected void StudentGridView_RowEditing(object sender, GridViewEditEventArgs e)
        {
            StudentGridView.EditIndex = e.NewEditIndex;
            this.showGridView();
        }

        protected void StudentGridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow rows = StudentGridView.Rows[e.RowIndex];
            string getId = (StudentGridView.DataKeys[e.RowIndex].Values[0]).ToString();
            string getFirstName = (rows.Cells[1].Controls[0] as TextBox).Text;
            string getLastName = (rows.Cells[2].Controls[0] as TextBox).Text;
            string getAddress = (rows.Cells[3].Controls[0] as TextBox).Text;
            string getPhoneNo = (rows.Cells[4].Controls[0] as TextBox).Text;
            string getEmail = (rows.Cells[5].Controls[0] as TextBox).Text;
            string getDob = (rows.Cells[6].Controls[0] as TextBox).Text;
            string getNationality = (rows.Cells[7].Controls[0] as TextBox).Text;
            string getProgram = (rows.Cells[8].Controls[0] as TextBox).Text;
            string getUsername = (rows.Cells[9].Controls[0] as TextBox).Text;
            string getPassword = (rows.Cells[10].Controls[0] as TextBox).Text;
            string getSubCode1 = (rows.Cells[11].Controls[0] as TextBox).Text;
            string getSubCode2 = (rows.Cells[12].Controls[0] as TextBox).Text;
            string getSubCode3 = (rows.Cells[13].Controls[0] as TextBox).Text;
            string getSubCode4 = (rows.Cells[14].Controls[0] as TextBox).Text;
            string connectionString = ConfigurationManager.ConnectionStrings["db_con"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            String query1 = "UPDATE STUDENT SET studFirstName=@studFirstName, studAddress=@studAddress, studPhoneNo=@studPhoneNo, studEmail=@studEmail, studDob=@studDob, studNationality=@studNationality, studProgram=@studProgram, studUsername=@studUsername, studPassword=@studPassword, studSubCode1=@studSubCode1, studSubCode2=@studSubCode2, studSubCode3=@studSubCode3, studSubCode4=@studSubCode4 WHERE studId=@studId";
            SqlCommand cmd = new SqlCommand(query1, con);
            cmd.Parameters.AddWithValue("@studId", getId);
            cmd.Parameters.AddWithValue("@studFirstName", getFirstName);
            cmd.Parameters.AddWithValue("@studLastName", getLastName);
            cmd.Parameters.AddWithValue("@studAddress", getAddress);
            cmd.Parameters.AddWithValue("@studPhoneNo", getPhoneNo);
            cmd.Parameters.AddWithValue("@studEmail", getEmail);
            cmd.Parameters.AddWithValue("@studDob", getDob);
            cmd.Parameters.AddWithValue("@studNationality", getNationality);
            cmd.Parameters.AddWithValue("@studProgram", getProgram);
            cmd.Parameters.AddWithValue("@studUsername", getUsername);
            cmd.Parameters.AddWithValue("@studPassword", getPassword);
            cmd.Parameters.AddWithValue("@studSubCode1", getSubCode1);
            cmd.Parameters.AddWithValue("@studSubCode2", getSubCode2);
            cmd.Parameters.AddWithValue("@studSubCode3", getSubCode3);
            cmd.Parameters.AddWithValue("@studSubCode4", getSubCode4);
            cmd.ExecuteNonQuery();
            con.Close();
            StudentGridView.EditIndex = -1;
            this.showGridView();
        }

        protected void StudentGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow rows = StudentGridView.Rows[e.RowIndex];
            string getId = (StudentGridView.DataKeys[e.RowIndex].Values[0]).ToString();
            string connectionString = ConfigurationManager.ConnectionStrings["db_con"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            String query = "DELETE FROM STUDENT WHERE studId = @studId";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@studId", getId);
            cmd.ExecuteNonQuery();
            con.Close();
            this.showGridView();
        }
        protected void btnClick(object sender, EventArgs e)
        {
            Response.Redirect("admin_dashboard.aspx");
        }
        protected void btnCancel(object sender, GridViewCancelEditEventArgs e)
        {
            StudentGridView.EditIndex = -1;
            this.showGridView();
        }
    }
}