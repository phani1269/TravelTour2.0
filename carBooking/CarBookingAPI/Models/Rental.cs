using System;
using System.Collections.Generic;

namespace CarBookingAPI.Models;

public partial class Rental
{
    public int RentalId { get; set; }

    public string? PickDate { get; set; }

    public string? ReturnDate { get; set; }

    public int? CarId { get; set; }

    public int? CustId { get; set; }

    public int? CityId { get; set; }

    public decimal? Amount { get; set; }

    public virtual Car? Car { get; set; }

    public virtual City? City { get; set; }
}
