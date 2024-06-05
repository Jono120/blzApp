using System.ComponentModel.DataAnnotations;

namespace blzCPS.Components.Models
{
    public class blzClients
    {
        public int ClientId { get; set; }
        public string? StaffMemberName { get; set; } // Nullable string
        public string ClientName { get; set; } // Nullable string
        public string? ClientPhoneNumber { get; set; } // Nullable string
        public string? ClientEmail { get; set; } // Nullable string
        public string? ClientLocation { get; set; } // Nullable string
        public bool? HasBeenContacted { get; set; } // Nullable boolean
        public string? ClientNotes { get; set; } // Nullable string
    }
}
