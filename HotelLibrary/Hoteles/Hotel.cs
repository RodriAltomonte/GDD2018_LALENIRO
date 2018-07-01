using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FrbaHotel.Hoteles
{
    public class Hotel
    {
        public int codigo { get; set; }

        public int Estrellas { get; set; }
        public int Recarga_Estrella { get; set; }
        public Direccion direccion { get; set; }
        public string Nombre { get; set; }
        public int telefono { get; set; }
        public DateTime FechaCreacion { get; set; }
        public List<Regimen> Regimenes { get; set; }
    }
}
