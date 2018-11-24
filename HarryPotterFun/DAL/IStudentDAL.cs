using HarryPotterFun.Models;
using System;
using System.Collections.Generic;
using System.Text;

namespace HarryPotterFun.DAL
{
    public interface IStudentDAL
    {
        IList<Student> GetAllStudents(int houseId);
    }
}
