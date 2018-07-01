namespace FrbaHotel.RegistrarEstadia
{
    partial class frmModificacionReserva
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.Windows.Forms.DataGridView dgvReservas;
            this.lblreservas = new System.Windows.Forms.Label();
            this.btnAgregar = new System.Windows.Forms.Button();
            dgvReservas = new System.Windows.Forms.DataGridView();
            ((System.ComponentModel.ISupportInitialize)(dgvReservas)).BeginInit();
            this.SuspendLayout();
            // 
            // dgvReservas
            // 
            dgvReservas.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dgvReservas.Location = new System.Drawing.Point(35, 182);
            dgvReservas.Name = "dgvReservas";
            dgvReservas.RowTemplate.Height = 28;
            dgvReservas.Size = new System.Drawing.Size(982, 321);
            dgvReservas.TabIndex = 0;
            // 
            // lblreservas
            // 
            this.lblreservas.AutoSize = true;
            this.lblreservas.Font = new System.Drawing.Font("Microsoft Sans Serif", 22F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblreservas.Location = new System.Drawing.Point(54, 107);
            this.lblreservas.Name = "lblreservas";
            this.lblreservas.Size = new System.Drawing.Size(208, 52);
            this.lblreservas.TabIndex = 1;
            this.lblreservas.Text = "Reservas";
            // 
            // btnAgregar
            // 
            this.btnAgregar.Location = new System.Drawing.Point(746, 558);
            this.btnAgregar.Name = "btnAgregar";
            this.btnAgregar.Size = new System.Drawing.Size(165, 52);
            this.btnAgregar.TabIndex = 2;
            this.btnAgregar.Text = "Agregar";
            this.btnAgregar.UseVisualStyleBackColor = true;
            // 
            // frmModificacionReserva
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1045, 683);
            this.Controls.Add(this.btnAgregar);
            this.Controls.Add(this.lblreservas);
            this.Controls.Add(dgvReservas);
            this.Name = "frmModificacionReserva";
            this.Text = "Form1";
            ((System.ComponentModel.ISupportInitialize)(dgvReservas)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblreservas;
        private System.Windows.Forms.Button btnAgregar;

    }
}