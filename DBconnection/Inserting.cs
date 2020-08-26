using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Covid19PatientsTracing.DBconnection
{
    public partial class Inserting
    {

        public void getYesterMeter(string sql)
        {
            //LETS GET TWILIO CREDENTIALS
            string str = ConfigurationManager.ConnectionStrings["Fuel_systemConnectionString"].ToString();
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
    }
}