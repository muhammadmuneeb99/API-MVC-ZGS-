using API_MVC__ZGS_.Repository;

using Microsoft.AspNetCore.Mvc;

using MySqlConnector;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddControllersWithViews();

builder.Services.AddMySqlDataSource(builder.Configuration.GetConnectionString("Default")!);

var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
	app.UseExceptionHandler("/Home/Error");
	// The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
	app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();

app.UseAuthorization();

app.MapControllerRoute(name: "default", pattern: "{controller=Home}/{action=Index}/{id?}");

// GET api/player/GetBatsmanRating
app.MapGet("/api/player/GetBatsmanRating", async ([FromServices] MySqlDataSource db) =>
{
	var repository = new PlayerRepository(db);
	return await repository.GetBatsmanRatingDetails();
});

// GET api/player/GetBowlerWicket
app.MapGet("/api/player/GetBowlerWicket", async ([FromServices] MySqlDataSource db) =>
{
	var repository = new PlayerRepository(db);
	return await repository.GetBowlerWicketDetails();
});

app.Run();
