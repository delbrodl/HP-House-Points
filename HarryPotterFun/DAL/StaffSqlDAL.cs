using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using HarryPotterFun.Models;

namespace HarryPotterFun.DAL
{
    public class StaffSqlDAL : IStaffDAL
    {
        private string connectionString;

        public StaffSqlDAL(string dbConnectionString)
        {
            connectionString = dbConnectionString;
        }

        public IList<Staff> GetAllStaff()
        {
            List<Staff> output = new List<Staff>();
            try
            {
                using (SqlConnection conn = new SqlConnection(this.connectionString))
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("SELECT * FROM staff", conn);

                    SqlDataReader reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        Staff staff = ConvertRowToStaff(reader);
                        output.Add(staff);
                    }
                }
                return output;
            }
            catch (SqlException ex)
            {
                Console.WriteLine("There was an error retrieving all staff.");
                throw;
            }
        }

        private static Staff ConvertRowToStaff(SqlDataReader reader)
        {
            return new Staff()
            {
                StaffId = Convert.ToInt32(reader["staff_id"]),
                FirstName = Convert.ToString(reader["first_name"]),
                LastName = Convert.ToString(reader["last_name"]),
                HouseId = Convert.ToInt32(reader["house_id"])
            };
        }

        IList<Staff> IStaffDAL.GetAllStaff()
        {
            throw new NotImplementedException();
        }
    }
}
