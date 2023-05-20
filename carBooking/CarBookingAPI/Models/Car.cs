using System;
using System.Collections.Generic;

namespace CarBookingAPI.Models;

public partial class Car
{
    public int CarId { get; set; }

    public string? CarModel { get; set; }

    public string? CarBrand { get; set; }

    public int? CarSeats { get; set; }

    public bool? CarAvailability { get; set; }

    public string? CarType { get; set; }

    public decimal? CarPrice { get; set; }

    public string? CarImage { get; set; }

    public virtual ICollection<Rental> Rentals { get; } = new List<Rental>();
}
