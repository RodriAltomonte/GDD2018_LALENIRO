using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FrbaHotel.Permisos;
namespace FrbaHotel.Reservas
{
    class Reserva
    {
        public int codigo { get; set; }
        public DateTime FechaCreacion { get; set; }
        public int Noches { get; set; }
        public Permisos.Usuario usuario { get; set; }
        public Estadia estadia { get; set; }
        public DateTime FechaInicio { get; set; }
        public DateTime FechaFin { get; set; }
        public string estado { get; set; }
        public DateTime FechaCancelacion { get; set; }
        public string motivo { get; set; }
        public List<HabitacionReserva> habitaciones { get; set; }
    }
}
