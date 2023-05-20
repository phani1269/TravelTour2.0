using AutoMapper;
using CarBookingAPI.Dtos;
using CarBookingAPI.Models;

namespace CarBookingAPI.MappingConfig
{
    public class MapingProfile : Profile
    {
        public MapingProfile()
        {
            CreateMap<CarResponse,Car>().ReverseMap();
        }
    }
}