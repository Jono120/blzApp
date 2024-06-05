using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using blzCPS.Components.Models;
using System.Diagnostics;

namespace blzCPS.Data
{

    public class blzCPSContext : DbContext
    {
        public blzCPSContext(DbContextOptions<blzCPSContext> options) : base(options)
        {
        }

        public DbSet<blzClients> Clients { get; set; }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<blzClients>(entity =>
            {
                entity.HasKey(e => e.ClientId);
                entity.Property(e => e.StaffMemberName)?.HasMaxLength(100);
                entity.Property(e => e.ClientName).IsRequired().HasMaxLength(100);
                entity.Property(e => e.ClientPhoneNumber)?.HasMaxLength(15);
                entity.Property(e => e.ClientEmail)?.HasMaxLength(100);
                entity.Property(e => e.ClientLocation)?.HasMaxLength(100);
                entity.Property(e => e.HasBeenContacted)?.IsRequired();
                entity.Property(e => e.ClientNotes)?.HasMaxLength(int.MaxValue);
            });
        }
    }
}
