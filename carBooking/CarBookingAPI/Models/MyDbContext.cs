using Microsoft.EntityFrameworkCore;

namespace CarBookingAPI.Models;

public class MyDbContext : CarDbContext
{
    public MyDbContext(DbContextOptions<CarDbContext> options) :base(options)
    {
        
    }
}