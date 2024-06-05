using blzCPS.Components.Data;
using blzCPS.Components.Grid;
using blzCPS.Components;
using blzCPS.Data;
using Microsoft.EntityFrameworkCore;
using static Microsoft.EntityFrameworkCore.DbLoggerCategory.Database;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
//builder.Services.AddDbContext<blzCPSContext>(options => options.UseSqlServer(builder.Configuration.GetConnectionString("blzCPSContext")));
var connectionString = builder.Configuration.GetConnectionString("blzCPSContext");
builder.Services.AddDbContextFactory<blzCPSContext>(options => options.UseSqlServer(connectionString));

builder.Services.AddScoped<IPageHelper, PageHelper>();

//builder.Services.AddMicrosoftGraphClient("https://graph.microsoft.com/User.Read");

builder.Services.AddMsalAuthentication(options =>
{
    builder.Configuration.Bind("AzureAd", options.ProviderOptions.Authentication);
    options.ProviderOptions.DefaultAccessTokenScopes.Add("https://graph.microsoft.com/User.Read");
});
builder.Services.AddScoped<EditSuccess>();

// Add services to the container.
builder.Services.AddRazorComponents()
    .AddInteractiveServerComponents();
builder.Services.AddSingleton<IHttpContextAccessor, HttpContextAccessor>();

var app = builder.Build();

// Configure the HTTP request pipeline.
//if (!app.Environment.IsDevelopment())
//{
//    app.UseExceptionHandler("/Error", createScopeForErrors: true);
//    app.UseHsts();
//}

app.UseHttpsRedirection();
app.UseStaticFiles();
app.UseAntiforgery();

app.MapRazorComponents<App>()
    .AddInteractiveServerRenderMode();

app.Run();

using (var scope = app.Services.CreateScope())
{
    var dbContext = scope.ServiceProvider.GetRequiredService<blzCPSContext>();
    try
    {
        dbContext.Database.CanConnect();
        Console.WriteLine("Database connection successful.");
    }
    catch (Exception ex)
    {
        Console.WriteLine($"Database connection failed: {ex.Message}");
    }
}