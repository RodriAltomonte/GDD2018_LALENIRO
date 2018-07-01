using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace FrbaHotel.AbmHabitacion
{
    public partial class abmHabitacion : Form
    {
        public abmHabitacion(string hotel, string piso, string numero, bool habilitada, string ubicacion)
        {

            InitializeComponent();
            txtHotel.Text = hotel;
            txtNumero.Text = numero;
            txtPiso.Text = piso;
            chbHabilitada.Checked = habilitada;
            cmbUbicacion.Text = ubicacion;

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
