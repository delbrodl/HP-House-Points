using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using HarryPotterFun.DAL;
using HarryPotterFun.Models;
using Microsoft.AspNetCore.Mvc;

namespace HarryPotterFun.Controllers
{
    public class HouseController : Controller
    {
        private IHouseDAL houseDAL;
        private IStudentDAL studentDAL;

        public HouseController(IHouseDAL houseDAL, IStudentDAL studentDAL)
        {
            this.houseDAL = houseDAL;
            this.studentDAL = studentDAL;
        }

        public IActionResult Index()
        {
            IList<House> houses = houseDAL.GetHouses();

            return View(houses);
        }

        public IActionResult StudentsInHouse(int houseId)
        {
            var students = studentDAL.GetAllStudents(houseId);

            return View(students);
        }
    }
}