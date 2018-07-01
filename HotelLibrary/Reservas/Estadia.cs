using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FrbaHotel.Facturacion;
namespace FrbaHotel.Reservas
{
    public class Estadia
    {
        public int codigo { get; set; }
        public int noches { get; set; }
        public DateTime checkIn { get; set; }
        public DateTime checkOut { get; set; }
        public List<Consumible> consumibles { get; set; }
    }
}
