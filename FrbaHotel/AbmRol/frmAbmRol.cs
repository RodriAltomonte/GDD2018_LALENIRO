using FrbaHotel.Conexion;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace FrbaHotel.AbmRol
{
    public partial class frmAbmRol : Form
    {
        public frmAbmRol()
        {
            InitializeComponent();
            this.clbFuncionalidades.DataSource = GetFuncionalidades();
            this.clbFuncionalidades.DisplayMember = "Funcionalidades";
            this.chkHabilitado.Checked = false;

            this.dgvRoles.DataSource = GetRoles();
        }

        private DataTable GetRoles()
        {
            SqlServer sql = new SqlServer();
            DataTable tabla = sql.EjecutarSp("Listado_Roles");
           
            return tabla;
        }

        private DataTable GetFuncionalidades()
        {
            SqlServer sql = new SqlServer();
            DataTable tabla = sql.EjecutarSp("Listado_Funcionalidades");
            return tabla;
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {

        }
    }
}
