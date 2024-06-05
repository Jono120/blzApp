using blzCPS.Data;
using Microsoft.AspNetCore.Mvc;

namespace blzCPS.Components.Controllers
{
    public class HomeController : Controller
    {
        private readonly blzCPSContext _context;
        public HomeController(blzCPSContext context)
        {
            _context = context;
        }

        public IActionResult ViewClient()
        {
            var model = _context.Clients.ToList();
            return View(model);
        }
        public IActionResult ClientDetails()
        {
            return View();
        }
        public IActionResult DeleteClient()
        {
            return View();
        }
        public IActionResult UpdateClient()
        {
            return View();
        }
        public IActionResult CreateClient()
        {
            return View();
        }
    }
}
