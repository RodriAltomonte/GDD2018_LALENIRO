using FrbaHotel.Hoteles;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FrbaHotel.Reservas
{
    class HabitacionReserva
    {
        public Habitacion habitacion { get; set; }
        public List<Huesped> Huespedes { get; set; }
    }
}
