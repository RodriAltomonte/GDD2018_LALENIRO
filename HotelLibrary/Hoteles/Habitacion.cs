using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FrbaHotel.Hoteles
{
    public class Habitacion
    {
        public int Piso { get; set; }
        public int Numero { get; set; }
        public Hotel hotel { get; set; }
        public string Ubicacion { get; set; }
        public TipoHabitacion tipoHabitacion { get; set; }
        public bool Habilitada { get; set; }
        
    }
}
