using System;
using System.Collections.Generic;

namespace CarBookingAPI.Models;

public partial class City
{
    public int CityId { get; set; }

    public string? CityName { get; set; }

    public virtual ICollection<Rental> Rentals { get; } = new List<Rental>();
}
