﻿namespace FrbaHotel.Menu
{
    partial class frmMenu
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
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.reservaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.habitacionesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.hotelesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.consumiblesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.estadiaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.label1 = new System.Windows.Forms.Label();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.reservaToolStripMenuItem,
            this.habitacionesToolStripMenuItem,
            this.hotelesToolStripMenuItem,
            this.consumiblesToolStripMenuItem,
            this.estadiaToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(986, 33);
            this.menuStrip1.TabIndex = 0;
            this.menuStrip1.Text = "menuStrip1";
            this.menuStrip1.ItemClicked += new System.Windows.Forms.ToolStripItemClickedEventHandler(this.menuStrip1_ItemClicked);
            // 
            // reservaToolStripMenuItem
            // 
            this.reservaToolStripMenuItem.Name = "reservaToolStripMenuItem";
            this.reservaToolStripMenuItem.Size = new System.Drawing.Size(84, 29);
            this.reservaToolStripMenuItem.Text = "Reserva";
            // 
            // habitacionesToolStripMenuItem
            // 
            this.habitacionesToolStripMenuItem.Name = "habitacionesToolStripMenuItem";
            this.habitacionesToolStripMenuItem.Size = new System.Drawing.Size(126, 29);
            this.habitacionesToolStripMenuItem.Text = "Habitaciones";
            // 
            // hotelesToolStripMenuItem
            // 
            this.hotelesToolStripMenuItem.Name = "hotelesToolStripMenuItem";
            this.hotelesToolStripMenuItem.Size = new System.Drawing.Size(84, 29);
            this.hotelesToolStripMenuItem.Text = "Hoteles";
            // 
            // consumiblesToolStripMenuItem
            // 
            this.consumiblesToolStripMenuItem.Name = "consumiblesToolStripMenuItem";
            this.consumiblesToolStripMenuItem.Size = new System.Drawing.Size(126, 29);
            this.consumiblesToolStripMenuItem.Text = "Consumibles";
            // 
            // estadiaToolStripMenuItem
            // 
            this.estadiaToolStripMenuItem.Name = "estadiaToolStripMenuItem";
            this.estadiaToolStripMenuItem.Size = new System.Drawing.Size(80, 29);
            this.estadiaToolStripMenuItem.Text = "Estadia";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(222, 70);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(389, 55);
            this.label1.TabIndex = 1;
            this.label1.Text = "FRBA HOTELES";
            // 
            // frmMenu
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(986, 494);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.menuStrip1);
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "frmMenu";
            this.Text = "frmMenu";
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem reservaToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem habitacionesToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem hotelesToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem consumiblesToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem estadiaToolStripMenuItem;
        private System.Windows.Forms.Label label1;
    }
}