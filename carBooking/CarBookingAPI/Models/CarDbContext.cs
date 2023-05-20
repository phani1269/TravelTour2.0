using Microsoft.EntityFrameworkCore;

namespace CarBookingAPI.Models;

public partial class CarDbContext : DbContext
{
    public CarDbContext()
    {
    }

    public CarDbContext(DbContextOptions<CarDbContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Car> Cars { get; set; }

    public virtual DbSet<City> Cities { get; set; }

    public virtual DbSet<Rental> Rentals { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Server=localhost,1430;Database=CarDB;user id=SA; password=Pk12345678; TrustServerCertificate=yes");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Car>(entity =>
        {
            entity.HasKey(e => e.CarId).HasName("PK__Cars__68A0340EE6D1478A");

            entity.Property(e => e.CarId).HasColumnName("CarID");
            entity.Property(e => e.CarBrand)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.CarImage)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.CarModel)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.CarPrice).HasColumnType("money");
            entity.Property(e => e.CarType)
                .HasMaxLength(50)
                .IsUnicode(false);
        });

        modelBuilder.Entity<City>(entity =>
        {
            entity.HasKey(e => e.CityId).HasName("PK__City__F2D21A9607F9E3C8");

            entity.ToTable("City");

            entity.Property(e => e.CityId).HasColumnName("CityID");
            entity.Property(e => e.CityName)
                .HasMaxLength(50)
                .IsUnicode(false);
        });

        modelBuilder.Entity<Rental>(entity =>
        {
            entity.HasKey(e => e.RentalId).HasName("PK__Rental__97005963C3AB6A3D");

            entity.ToTable("Rental");

            entity.Property(e => e.RentalId).HasColumnName("RentalID");
            entity.Property(e => e.Amount).HasColumnType("money");
            entity.Property(e => e.CarId).HasColumnName("CarID");
            entity.Property(e => e.CityId).HasColumnName("CityID");
            entity.Property(e => e.CustId).HasColumnName("CustID");
            entity.Property(e => e.PickDate)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.ReturnDate)
                .HasMaxLength(50)
                .IsUnicode(false);

            entity.HasOne(d => d.Car).WithMany(p => p.Rentals)
                .HasForeignKey(d => d.CarId)
                .HasConstraintName("FK__Rental__CarID__3A81B327");

            entity.HasOne(d => d.City).WithMany(p => p.Rentals)
                .HasForeignKey(d => d.CityId)
                .HasConstraintName("FK__Rental__CityID__3B75D760");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
