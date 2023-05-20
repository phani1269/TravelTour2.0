using CarBookingAPI.Repositories;
using CarBookingAPI.Repositories.Interfaces;
using CarBookingAPI.Services;
using CarBookingAPI.Services.Interfaces;

namespace CarBookingAPI.Configurations
{
    public static class ServiceConfigurations
    {
        public static void ConfigureDependencies(this IServiceCollection services)
        {
            services.AddScoped<ICarService,CarService>();
            services.AddScoped<ICarRepository,CarRepository>();
        }
    }
}