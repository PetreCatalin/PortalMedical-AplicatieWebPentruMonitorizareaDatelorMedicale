using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Chestionare : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.MaintainScrollPositionOnPostBack = true;
    }

    protected void Chestionar1_Click(object sender, EventArgs e)
    {
        chestionar1.Visible = true;
        chestionar2.Visible = false;
        chestionar3.Visible = false;
        chestionar4.Visible = false;
    }

    protected void Chestionar2_Click(object sender, EventArgs e)
    {
        chestionar1.Visible = false;
        chestionar2.Visible = true;
        chestionar3.Visible = false;
        chestionar4.Visible = false;
    }

    protected void Chestionar3_Click(object sender, EventArgs e)
    {
        chestionar1.Visible = false;
        chestionar2.Visible = false;
        chestionar3.Visible = true;
        chestionar4.Visible = false;
    }

    protected void Chestionar4_Click(object sender, EventArgs e)
    {
        chestionar1.Visible = false;
        chestionar2.Visible = false;
        chestionar3.Visible = false;
        chestionar4.Visible = true;
    }

    protected void Calcul1(object sender, EventArgs e)
    {
        double r1 = 2 - DropDownList1.SelectedIndex;
        double r2 = 2 - DropDownList2.SelectedIndex;
        double r3 = 2 - DropDownList3.SelectedIndex;
        double r4 = 2 - DropDownList4.SelectedIndex;
        double r5 = 2 - DropDownList5.SelectedIndex;
        double r6 = 2 - DropDownList6.SelectedIndex;
        double r7 = 2 - DropDownList7.SelectedIndex;
        double r8 = 2 - DropDownList8.SelectedIndex;
        double r9 = 2 - DropDownList9.SelectedIndex;
        double r10 = 2 - DropDownList10.SelectedIndex;

        double indice = 0;
        indice = (r1 + r2 + r3 + r4 + r5 + r6 + r7 + r8 + r9 + r10) / 2;

        lblModalBody.ForeColor = System.Drawing.Color.YellowGreen;
        lblModalBody.Text = "Indicele dumneavoastra de sanatate este " + indice;
        ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
        upModal.Update();
    }

    protected void Calcul2(object sender, EventArgs e)
    {
        double r11 =  6-DropDownList11.SelectedIndex;
        double r12 =  DropDownList12.SelectedIndex+1;
        double r13 =  6-DropDownList13.SelectedIndex;
        double r14 =  DropDownList14.SelectedIndex+1;
        double r15 =  DropDownList15.SelectedIndex+1;

        double indice = 0;
        indice = r11 + r12 + r13 + r14 + r15;

        lblModalBody.ForeColor = System.Drawing.Color.YellowGreen;
        lblModalBody.Text = "Indicele dumneavoastra de calitate a vietii este " + indice;
        ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
        upModal.Update();
    }

    protected void Calcul3(object sender, EventArgs e)
    {
        double r16 = 5 - DropDownList16.SelectedIndex;
        double r17 = 5 - DropDownList17.SelectedIndex;
        if (minuteActivitate.Value == "")
        {
            lblModalBody.ForeColor = System.Drawing.Color.Red;
            lblModalBody.Text = "Va rugam sa introduceti numarul de minute de activitate!";
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
            upModal.Update();
        }
        else
        {
            double minute = double.Parse(minuteActivitate.Value);
            if (minute <= 0)
            {
                lblModalBody.ForeColor = System.Drawing.Color.Red;
                lblModalBody.Text = "Va rugam sa introduceti un numar pozitiv de minute de activitate!";
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
                upModal.Update();
                minuteActivitate.Value = "";
            }
            else
            {
                int indiceMin;
                if (minute > 30) indiceMin = 4;
                else
                if (minute > 20) indiceMin = 3;
                else
                if (minute > 10) indiceMin = 2;
                else
                    indiceMin = 1;

                double indice = r16 * r17 * indiceMin;

                lblModalBody.ForeColor = System.Drawing.Color.YellowGreen;
                lblModalBody.Text = "Indicele dumneavoastra de activitate fizica este " + indice;
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
                upModal.Update();
                minuteActivitate.Value = "";
            }
        }
    }

    protected void Calcul4(object sender, EventArgs e)
    {
        if (varsta.Value == "" || greutate.Value == "" || inaltime.Value == "")
        {
            lblModalBody.ForeColor = System.Drawing.Color.Red;
            lblModalBody.Text = "Toate campurile sunt obligatorii!";
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
            upModal.Update();
        }
        else
        {
            int v = int.Parse(varsta.Value);
            if (v < 50)
            {
                lblModalBody.ForeColor = System.Drawing.Color.Red;
                lblModalBody.Text = "Algoritmul functioneaza doar pentru persoane cu varsta de peste 50 de ani!";
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
                upModal.Update();
            }
            else
            {
                var g = greutate.Value;
                var h = inaltime.Value;
                double hmeters = (double)double.Parse(h) / 100;
                double greut = (double)double.Parse(g);
                //if (g.Contains(".")) greut = (double)greut / 10;

                if (greut <= 0)
                {
                    lblModalBody.ForeColor = System.Drawing.Color.Red;
                    lblModalBody.Text = "Greutatea trebuie sa fie pozitiva!";
                    ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
                    upModal.Update();
                }
                else
                if (hmeters <= 0)
                {
                    lblModalBody.ForeColor = System.Drawing.Color.Red;
                    lblModalBody.Text = "Inaltimea trebuie sa fie pozitiva!";
                    ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
                    upModal.Update();
                }
                else
                {
                    int puncte;
                    if (v <= 59) puncte = 0;
                    else
                    if (v <= 64) puncte = 1;
                    else
                    if (v <= 69) puncte = 2;
                    else
                    if (v <= 74) puncte = 3;
                    else
                    if (v <= 79) puncte = 4;
                    else
                    if (v <= 84) puncte = 5;
                    else puncte = 7;

                    var sex = rb1.SelectedIndex;
                    if (sex == 0) puncte += 2;
                    var smoke = rb2.SelectedIndex;
                    if (smoke == 0) puncte += 2;
                    var diabet = rb3.SelectedIndex;
                    if (diabet == 0) puncte += 1;
                    var cancer = rb4.SelectedIndex;
                    if (cancer == 0) puncte += 2;
                    var plamani = rb5.SelectedIndex;
                    if (plamani == 0) puncte += 2;
                    var cardiac = rb6.SelectedIndex;
                    if (cardiac == 0) puncte += 2;
                    var spala = rb7.SelectedIndex;
                    if (spala == 0) puncte += 2;
                    var finante = rb8.SelectedIndex;
                    if (finante == 0) puncte += 2;
                    var mers = rb9.SelectedIndex;
                    if (mers == 0) puncte += 2;
                    var obiecte = rb10.SelectedIndex;
                    if (obiecte == 0) puncte += 1;

                    double indice = (double)greut / (hmeters * hmeters);
                    indice = Math.Round(indice, 2);
                    if (indice < 25) puncte += 1;

                    var risc="";
                    if (puncte == 0) risc = "0-1%";
                    else
                    if (puncte <= 2) risc = "1-2%";
                    else
                    if (puncte <= 3) risc = "3-4%";
                    else
                    if (puncte <= 4) risc = "4-6%";
                    else
                    if (puncte <= 5) risc = "5-8%";
                    else
                    if (puncte <= 6) risc = "9%";
                    else
                    if (puncte <= 7) risc = "12-15%";
                    else
                    if (puncte <= 8) risc = "19-20%";
                    else
                    if (puncte <= 9) risc = "20-24%";
                    else
                    if (puncte <= 10) risc = "27-28%";
                    else
                    if (puncte <= 11) risc = "43-45%";
                    else
                    if (puncte <= 12) risc = "44-48%";
                    else
                    if (puncte <= 13) risc = "54-59%";
                    else
                        risc = "64-67%";

                    lblModalBody.ForeColor = System.Drawing.Color.YellowGreen;
                    lblModalBody.Text = "Punctajul obtinut este de " + puncte + " puncte, iar riscul de mortalitate pentru urmatorii 4 ani este de  " + risc;
                    ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
                    upModal.Update();

                    varsta.Value = "";
                    greutate.Value = "";
                    inaltime.Value = "";
                }
            }
        }
    }

}