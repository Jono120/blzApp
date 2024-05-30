using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using blzCPS.Components.Models;
using blzCPS.Data;
using System.Data.Entity;

namespace blzCPS.Components.Pages.Clients.Models
{
    public class CreateClientModel : PageModel
    {
        private readonly blzCPSContext _context;

        public CreateClientModel(blzCPSContext context)
        {
            _context = context;
        }

        public blzClients ClientId { get; set; }

        public void OnGet() { }

        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid)
            {
                return Page();
            }
            _context.Clients.Add(ClientId);
            await _context.SaveChangesAsync();
            return Page();
        }

        public async Task<IActionResult> OnGetAsync(int id)
        {
            if (id == 0)
            {
                return NotFound();
            }

            ClientId = await _context.Clients.FirstOrDefaultAsync(m => m.ClientId == id);

            if (ClientId == null)
            {
                return NotFound();
            }
            return Page(); ;
        }

        public async Task<IActionResult> OnPostDeleteAsync(int id)
        {
            if (id == 0)
            {
                return NotFound();
            }

            ClientId = await _context.Clients.FindAsync(id);

            if (ClientId != null)
            {
                _context.Clients.Remove(ClientId);
                await _context.SaveChangesAsync();
            }

            return RedirectToPage("./Index");
        }
    }
}