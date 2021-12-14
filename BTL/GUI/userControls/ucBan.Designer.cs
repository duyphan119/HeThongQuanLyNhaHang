
namespace BTL
{
    partial class ucBan
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

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.rjButton1 = new Guna.UI2.WinForms.Guna2Button();
            this.guna2Button1 = new Guna.UI2.WinForms.Guna2Button();
            this.SuspendLayout();
            // 
            // rjButton1
            // 
            this.rjButton1.Animated = true;
            this.rjButton1.CheckedState.Parent = this.rjButton1;
            this.rjButton1.Cursor = System.Windows.Forms.Cursors.Hand;
            this.rjButton1.CustomImages.Parent = this.rjButton1;
            this.rjButton1.DisabledState.BorderColor = System.Drawing.Color.DarkGray;
            this.rjButton1.DisabledState.CustomBorderColor = System.Drawing.Color.DarkGray;
            this.rjButton1.DisabledState.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(169)))), ((int)(((byte)(169)))), ((int)(((byte)(169)))));
            this.rjButton1.DisabledState.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(141)))), ((int)(((byte)(141)))), ((int)(((byte)(141)))));
            this.rjButton1.DisabledState.Parent = this.rjButton1;
            this.rjButton1.Font = new System.Drawing.Font("Segoe UI", 9F);
            this.rjButton1.ForeColor = System.Drawing.Color.White;
            this.rjButton1.HoverState.Parent = this.rjButton1;
            this.rjButton1.Location = new System.Drawing.Point(0, 3);
            this.rjButton1.Name = "rjButton1";
            this.rjButton1.ShadowDecoration.Parent = this.rjButton1;
            this.rjButton1.Size = new System.Drawing.Size(125, 46);
            this.rjButton1.TabIndex = 2;
            this.rjButton1.Text = "guna2Button1";
            this.rjButton1.Click += new System.EventHandler(this.rjButton1_Click_1);
            // 
            // guna2Button1
            // 
            this.guna2Button1.Animated = true;
            this.guna2Button1.CheckedState.Parent = this.guna2Button1;
            this.guna2Button1.Cursor = System.Windows.Forms.Cursors.Hand;
            this.guna2Button1.CustomImages.Parent = this.guna2Button1;
            this.guna2Button1.DisabledState.BorderColor = System.Drawing.Color.DarkGray;
            this.guna2Button1.DisabledState.CustomBorderColor = System.Drawing.Color.DarkGray;
            this.guna2Button1.DisabledState.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(169)))), ((int)(((byte)(169)))), ((int)(((byte)(169)))));
            this.guna2Button1.DisabledState.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(141)))), ((int)(((byte)(141)))), ((int)(((byte)(141)))));
            this.guna2Button1.DisabledState.Parent = this.guna2Button1;
            this.guna2Button1.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(10)))), ((int)(((byte)(234)))), ((int)(((byte)(100)))));
            this.guna2Button1.Font = new System.Drawing.Font("Segoe UI", 9F);
            this.guna2Button1.ForeColor = System.Drawing.Color.White;
            this.guna2Button1.HoverState.Parent = this.guna2Button1;
            this.guna2Button1.Location = new System.Drawing.Point(0, 49);
            this.guna2Button1.Name = "guna2Button1";
            this.guna2Button1.ShadowDecoration.Parent = this.guna2Button1;
            this.guna2Button1.Size = new System.Drawing.Size(125, 29);
            this.guna2Button1.TabIndex = 3;
            this.guna2Button1.Text = "Đặt món";
            this.guna2Button1.Click += new System.EventHandler(this.guna2Button1_Click);
            // 
            // ucBan
            // 
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.None;
            this.Controls.Add(this.guna2Button1);
            this.Controls.Add(this.rjButton1);
            this.Margin = new System.Windows.Forms.Padding(10);
            this.Name = "ucBan";
            this.Size = new System.Drawing.Size(125, 80);
            this.Load += new System.EventHandler(this.ucBan_Load);
            this.ResumeLayout(false);

        }

        #endregion
        private Guna.UI2.WinForms.Guna2Button rjButton1;
        private Guna.UI2.WinForms.Guna2Button guna2Button1;
    }
}
