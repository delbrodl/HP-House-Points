using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Text;
using HarryPotterFun.Models;

namespace HarryPotterFun.DAL
{
    public class StudentSqlDAL : IStudentDAL
    {
        private string connectionString;

        public StudentSqlDAL(string connectionString)
        {
            this.connectionString = connectionString;
        }

        public IList<Student> GetAllStudents(int houseId)
        {
            List<Student> output = new List<Student>();
            try
            {
                using (SqlConnection conn = new SqlConnection(this.connectionString))
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("SELECT * FROM student WHERE house_id=@houseId", conn);
                    cmd.Parameters.AddWithValue("@houseId", houseId);

                    SqlDataReader reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        Student student = ConvertRowToStudent(reader);
                        output.Add(student);
                    }
                }
                return output;
            }
            catch (SqlException ex)
            {
                Console.WriteLine("There was an error retrieving all students.");
                throw;
            }
        }

        private static Student ConvertRowToStudent(SqlDataReader reader)
        {
            return new Student()
            {
                StudentId = Convert.ToInt32(reader["student_id"]),
                FirstName = Convert.ToString(reader["first_name"]),
                LastName = Convert.ToString(reader["last_name"]),
                HouseId = Convert.ToInt32(reader["house_id"])
            };
        }
    }
}
