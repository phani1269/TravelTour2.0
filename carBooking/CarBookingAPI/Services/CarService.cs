using AutoMapper;
using CarBookingAPI.Dtos;
using CarBookingAPI.Models;
using CarBookingAPI.Repositories.Interfaces;
using CarBookingAPI.Services.Interfaces;

namespace CarBookingAPI.Services
{
    public class CarService : ICarService
    {
        private readonly ICarRepository _carRepository;
        private readonly IMapper _mapper;

        public CarService(ICarRepository carRepository,IMapper mapper)
        {
            _carRepository = carRepository;
            _mapper = mapper;
        }

        public async Task<List<CarResponse>> GetAllCars()
        {
            var carResponse =  await  _carRepository.GetAllCars();
            var result = _mapper.Map<List<CarResponse>>(carResponse);

            return result;
        }
    }
}