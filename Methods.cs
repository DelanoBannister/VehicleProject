using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace VehicleProject
{
    public class DATEMETHODS
    {
        public static DateTime GetInsurancedate(string chassis_num)
        {
            DateTime insur= new DateTime();
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["connectionString"].ToString();
            SqlCommand cmd = new SqlCommand("SELECT * FROM Insurance WHERE Chassis_Num ="+chassis_num,con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                insur = Convert.ToDateTime(dr["Insurance_Date"].ToString()); 
            }
            dr.Close();
            con.Close();
            return insur;
        }

        public static DateTime GetFitnessdate(string lic_num)
        {
            DateTime insur = new DateTime();
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["connectionString"].ToString();
            SqlCommand cmd = new SqlCommand("SELECT * FROM Fitness WHERE License_reg ="+"'"+lic_num.ToString()+"'",con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                insur = Convert.ToDateTime(dr["Fitness_Num"].ToString());
            }
            dr.Close();
            con.Close();
            return insur;
        }
    }
}