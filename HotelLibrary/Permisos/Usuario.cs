using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FrbaHotel.Permisos
{
    public class Usuario
    {
        public string usuario { get; set; }
        public string contraseña { get; set; }
        public int numeroDocumento { get; set; }
        public string Nombre  { get; set; }
        public string Apellido { get; set; }
        public DateTime FechaNacimiento { get; set; }
        public string Mail { get; set; }
        public string Nacionalidad { get; set; }
        public Direccion direccion { get; set; }
        public string Pasaporte { get; set; }
        public int LoginFallidos { get; set; }
        public List<Rol> Roles { get; set; }
    }
}
