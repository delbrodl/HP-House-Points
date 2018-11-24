using HarryPotterFun.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace HarryPotterFun.DAL
{
    public class HouseSqlDAL : IHouseDAL
    {
        private string connectionString;

        public HouseSqlDAL(string connectionString)
        {
            this.connectionString = connectionString;
        }

        //public bool AddPointsToHouse(int studentId, int points)
        //{
            //try
            //{
            //    using (SqlConnection conn = new SqlConnection(connectionString))
            //    {
            //        conn.Open();
            //        SqlCommand cmd = new SqlCommand("INSERT INTO ")
            //    }
            //}

        //    return true;
        //}

        public IList<House> GetHouses()
        {
            List<House> output = new List<House>();
            try
            {
                using (SqlConnection conn = new SqlConnection(this.connectionString))
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("SELECT * FROM house", conn);

                    SqlDataReader reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        House house = ConvertRowToHouse(reader);
                        output.Add(house);
                    }
                }
                return output;
            }
            catch (SqlException ex)
            {
                Console.WriteLine("There was an error retrieving all houses.");
                throw;
            }
        }

        private static House ConvertRowToHouse(SqlDataReader reader)
        {
            return new House()
            {
                HouseId = Convert.ToInt32(reader["house_id"]),
                HouseName = Convert.ToString(reader["house_name"]),
                HousePoints = Convert.ToInt32(reader["total_points"])
            };
        }
    }
}

