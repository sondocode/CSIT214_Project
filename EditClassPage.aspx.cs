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
    public partial class EditClassPage : System.Web.UI.Page
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
            SqlDataAdapter sda = new SqlDataAdapter("SELECT classSubCode, classSubName, classLocation FROM CLASS", con);
            using (DataTable dt = new DataTable())
            {
                sda.Fill(dt);
                ClassGridView.DataSource = dt;
                ClassGridView.DataBind();
            }
        }

        protected void ClassGridView_RowEditing(object sender, GridViewEditEventArgs e)
        {
            ClassGridView.EditIndex = e.NewEditIndex;
            this.showGridView();
        }

        protected void ClassGridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow rows = ClassGridView.Rows[e.RowIndex];
            string getSubCode = (ClassGridView.DataKeys[e.RowIndex].Values[0]).ToString();
            string getSubName = (rows.Cells[1].Controls[0] as TextBox).Text;
            string getLocation = (rows.Cells[2].Controls[0] as TextBox).Text;
            string connectionString = ConfigurationManager.ConnectionStrings["db_con"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            String query1 = "UPDATE CLASS SET classSubCode=@classSubCode, classSubName=@classSubName, classLocation=@classLocation WHERE classSubCode=@classSubCode";
            SqlCommand cmd = new SqlCommand(query1, con);
            cmd.Parameters.AddWithValue("@classSubCode", getSubCode);
            cmd.Parameters.AddWithValue("@classSubName", getSubName);
            cmd.Parameters.AddWithValue("@classLocation", getLocation);
            cmd.ExecuteNonQuery();
            con.Close();
            ClassGridView.EditIndex = -1;
            this.showGridView();
        }

        protected void ClassGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow rows = ClassGridView.Rows[e.RowIndex];
            string getSubCode = (ClassGridView.DataKeys[e.RowIndex].Values[0]).ToString();
            string connectionString = ConfigurationManager.ConnectionStrings["db_con"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            String query = "DELETE FROM CLASS WHERE classSubCode = @classSubCode";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@classSubCode", getSubCode);
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
            ClassGridView.EditIndex = -1;
            this.showGridView();
        }
    }
}