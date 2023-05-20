namespace CarBookingAPI.Dtos
{
    public class CarResponse
    {
        public int CarId { get; set; }
        public string? CarModel { get; set; }
        public string? CarBrand { get; set; }
        public int? CarSeats { get; set; }
        public string? CarType { get; set; }
        public decimal? CarPrice { get; set; }
        public string? CarImage { get; set; }
    }
}