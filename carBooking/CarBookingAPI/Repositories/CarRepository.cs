using CarBookingAPI.Models;
using CarBookingAPI.Repositories.Interfaces;
using Microsoft.EntityFrameworkCore;

namespace CarBookingAPI.Repositories
{
    public class CarRepository : ICarRepository
    {
        private readonly MyDbContext _dbContext;
        public CarRepository(MyDbContext dbContext)
        {
            _dbContext = dbContext;
        }

        public async Task<List<Car>> GetAllCars()
        {
            try
            {
                var response = await _dbContext.Cars.Where(x => x.CarAvailability == true).ToListAsync();
                return response;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
    }
}