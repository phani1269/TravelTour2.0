using CarBookingAPI.Services.Interfaces;
using Microsoft.AspNetCore.Mvc;

namespace CarBookingAPI.Controllers
{
    [ApiController]
    [Route("api/v1/[controller]")]
    public class CarController : ControllerBase
    {
        private readonly ICarService _carService;
        public CarController(ICarService carService)
        {
            _carService = carService;
        }
        [HttpGet("GetAllCars")]
        public async Task<IActionResult> GetAllCars()
        {
            var result =  await _carService.GetAllCars();
            return Ok(result);
        }

    }
}