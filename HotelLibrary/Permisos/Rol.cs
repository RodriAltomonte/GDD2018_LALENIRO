using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FrbaHotel.Permisos
{
     public class Rol
    {
        public int Codigo { get; set; }
        public string descripcion { get; set; }
        public bool Habilitado { get; set; }
        public List<Funcionalidad> funcionalidades { get; set; }

    }
}
