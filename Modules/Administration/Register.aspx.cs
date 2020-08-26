using System;
using System.Configuration;
using System.Data.SqlClient;

namespace Covid19PatientsTracing.Modules.Administration
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            infor.Visible = false;




        }
        public void Handlesql(string sql)
        {
            //LETS GET TWILIO CREDENTIALS
            string str = ConfigurationManager.ConnectionStrings["COVID19ConnectionString"].ToString();
            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand(sql, con);
            con.Open();
            SqlDataReader myDataReadert = cmd.ExecuteReader();
            if (myDataReadert.Read())
            {


            }
            else
            {
                con.Close();

            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = ConfigurationManager.ConnectionStrings["COVID19ConnectionString"].ToString();
            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("select *from Administrators where Staff_number='"+ TextBox7.Text + "'", con);
            con.Open();
            SqlDataReader myDataReadert = cmd.ExecuteReader();
            if (myDataReadert.Read())
            {
                Label2.Text = "This user already exists! Please check the staff number.";
                infor.Visible = true;
            }
            else
            {
                infor.Visible = false;

                Handlesql("INSERT INTO Administrators(Full_Names,Phone_number,Email,Username,Password,Role,Department,Staff_number) VALUES('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + role.SelectedItem.Value + "','" + DropDownList1.SelectedItem.Value + "','" + TextBox7.Text + "')");
                Label1.Text = "Successfully registered!";
            }
        }
    }
}