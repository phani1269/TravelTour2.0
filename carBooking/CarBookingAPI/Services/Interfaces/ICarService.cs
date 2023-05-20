using CarBookingAPI.Dtos;
using CarBookingAPI.Models;

namespace CarBookingAPI.Services.Interfaces
{
    public interface ICarService
    {
        Task<List<CarResponse>> GetAllCars();
    }    
}