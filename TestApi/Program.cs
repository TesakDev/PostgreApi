using Microsoft.AspNetCore.Builder.Extensions;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.ChangeTracking.Internal;

using System.Text.Json.Serialization;

using TestApi.Entitys;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

string _conectionString = builder.Configuration.GetConnectionString("DefaultConnection") ?? throw new Exception();

builder.Services.AddDbContext<Context>(options => options.UseNpgsql(_conectionString));

builder.Services.AddConnections();

builder.Services.AddControllers().AddJsonOptions(x=>x.JsonSerializerOptions.ReferenceHandler = ReferenceHandler.IgnoreCycles);

var app = builder.Build();

// Configure the HTTP request pipeline.

app.UseAuthorization();

app.MapControllers();

app.Run();
