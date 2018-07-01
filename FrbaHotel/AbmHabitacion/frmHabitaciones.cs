using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Reflection;
using FrbaHotel.Properties;
using FrbaHotel.Conexion;
namespace FrbaHotel.AbmHabitacion
{
    public partial class frmHabitaciones : Form
    {
        public frmHabitaciones()
        {
            InitializeComponent();
            LoadRooms();

        }

        private void LoadRooms()
        {
            SqlServer sql = new SqlServer();

            var parametros = new Dictionary<string, string>();

            parametros.Add("Hotel", "");
            parametros.Add("Piso", "");
            parametros.Add("Numero", "");
            parametros.Add("Habilitada", "");

            DataTable table = sql.EjecutarSp("LISTADO_Habitaciones", parametros); 


        }

        private void label1_Click(object sender, EventArgs e)
        {
          
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            int rowIndex = e.RowIndex;
            DataGridViewRow row = dgvHabitaciones.Rows[rowIndex];
            string hotel= row.Cells[0].Value.ToString();
            string piso = row.Cells[1].Value.ToString();
            string numero = row.Cells[2].Value.ToString();
            bool habilitado = Convert.ToBoolean(row.Cells[3].Value);
            abmHabitacion frmambHab = new abmHabitacion(hotel, piso, numero, habilitado, "");
            frmambHab.Show();
        }

        private void btnAgregar_Click(object sender, EventArgs e)
        {
            abmHabitacion frmambHab = new abmHabitacion("", "", "", false, "");
            frmambHab.Show();
        }
    }
}
