using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Editor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblModalBody.ForeColor = System.Drawing.Color.Red;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        var title = titlu.Value;
        var categorie = DropDownList1.SelectedValue;
        DateTime data = DateTime.Now;
        var continut = TextBox1.Text;
        var imagine = FileUpload1.FileName;

        mesajDiv.Visible = true;
        if (continut.Length == 0)
        {
            lblModalBody.Text = "Continutul articolului nu poate fi nul!";
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
            upModal.Update();
        }
        else
        if (title.Length == 0)
        {
            lblModalBody.Text = "Titlul articolului nu poate fi nul!";
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
            upModal.Update();
        }
        else
        if (imagine.Length == 0)
        {
            lblModalBody.Text = "Va rugam sa selectati o imagine!";
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
            upModal.Update();
        }
        else
        {
            String filePath = Server.MapPath(@"~/Imagini/" + imagine); //adaug imaginea in folderul Imagini
            FileUpload1.SaveAs(filePath);

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
            con.Open();

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "INSERT INTO Articole (HtmlContent, Titlu, Categorie, Poza, DataAdaugare) VALUES (@Continut, @Titlu, @Categorie,@Poza,@Data)";

            cmd.Parameters.AddWithValue("@Continut", continut);
            cmd.Parameters.AddWithValue("@Titlu", title);
            cmd.Parameters.AddWithValue("@Categorie", categorie);
            cmd.Parameters.AddWithValue("@Poza", imagine);
            cmd.Parameters.AddWithValue("@Data", data);

            cmd.ExecuteNonQuery();
            con.Close();

            //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Articolul a fost adaugat cu succes!')", true);
            lblModalBody.ForeColor = System.Drawing.Color.YellowGreen;
            lblModalBody.Text = "Articolul a fost adaugat cu succes!";
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
            upModal.Update();

            titlu.Value = "";
            TextBox1.Text = "";
            mesaj.InnerHtml = "";
        }
    }
}