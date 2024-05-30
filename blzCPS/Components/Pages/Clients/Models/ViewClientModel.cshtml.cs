using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using blzCPS.Data;
using blzCPS.Components.Models;
using System.Collections.Generic;
using System.Threading.Tasks;
using Newtonsoft.Json.Bson;

namespace blzCPS.Components.Pages.Clients.Models
{
    public class ViewClientModel : PageModel
    {
        private readonly IDbContextFactory<blzCPSContext> _dbFactory;

        public ViewClientModel(IDbContextFactory<blzCPSContext> dbFactory)
        {
            _dbFactory = dbFactory;
        }

        public List<blzClients>? Clients { get; set; }

        public void OnGet() { }

        public async Task OnGetAsync()
        {

            using var context = _dbFactory.CreateDbContext();
            Clients = await context.Clients.ToListAsync();
        }
    }
}