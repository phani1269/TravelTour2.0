using CarBookingAPI.Models;

namespace CarBookingAPI.Repositories.Interfaces
{
    public interface ICarRepository
    {
        Task<List<Car>> GetAllCars();
    }
}