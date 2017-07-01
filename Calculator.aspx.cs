using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Calculator : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblModalBody.ForeColor = System.Drawing.Color.Red;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        var g = greutate.Value;
        var h = inaltime.Value;

        if (g.Length == 0 || h.Length == 0)
        {
            lblModalBody.Text = "Toate campurile sunt obligatorii!";
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
            upModal.Update();
        }
        else
        {
            double nr = double.Parse(g);
            int nr1 = int.Parse(h);
            if (nr <= 0 || nr1 <= 0)
            {
                lblModalBody.Text = "Va rugam sa introduceti valori pozitive!";
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
                upModal.Update();
                greutate.Value = "";
                inaltime.Value = "";
            }
            else
            {
                double hmeters = (double)double.Parse(h) / 100;
                double greut = (double)double.Parse(g);
                //if (g.Contains(".")) greut = (double) greut / 10;

                double indice = (double) greut / (hmeters * hmeters);
                indice = Math.Round(indice, 2);
                
                 lblModalBody.ForeColor = System.Drawing.Color.YellowGreen;
                 lblModalBody.Text = "Indicele dumneavoastra este " + indice;
                 ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
                 upModal.Update();
                 greutate.Value = "";
                 inaltime.Value = ""; 
            }
        }
    }

}