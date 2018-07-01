using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FrbaHotel.Permisos;
using FrbaHotel.Reservas;
namespace FrbaHotel.Facturacion
{
    public class Factura
    {
        public int numero { get; set; }
        public DateTime fecha { get; set; }
        public int total { get; set; }
        public Usuario usuario { get; set; }
        public Estadia estadia { get; set; }
        public string formaDePago { get; set; }
        public List<Item_Factura> items { get; set; }
    }
}
