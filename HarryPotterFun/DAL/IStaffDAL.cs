using HarryPotterFun.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HarryPotterFun.DAL
{
    public interface IStaffDAL
    {
        IList<Staff> GetAllStaff();
    }
}
