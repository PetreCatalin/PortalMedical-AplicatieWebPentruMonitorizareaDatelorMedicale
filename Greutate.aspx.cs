using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Greutate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblModalBody.ForeColor = System.Drawing.Color.Red;
        tabelGreutate.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        var valoare = greutate.Value;

        if (valoare.Length == 0)
        {
            lblModalBody.Text = "Va rugam sa introduceti o valoare!";
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
            upModal.Update();
        }
        else
        {
            double nr = double.Parse(valoare);
            if (nr <= 0)
            {
                lblModalBody.Text = "Va rugam sa introduceti o valoare pozitiva!";
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
                upModal.Update();
                greutate.Value = "";
            }
            else
            {
                DateTime data = DateTime.Now;
                var numeUtilizator = HttpContext.Current.User.Identity.Name;

                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
                con.Open();

                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "INSERT INTO Greutate (Utilizator,Valoare,Data) VALUES (@numeUtilizator, @valoare, @data)";

                cmd.Parameters.AddWithValue("@numeUtilizator", numeUtilizator);
                cmd.Parameters.AddWithValue("@valoare", valoare);
                cmd.Parameters.AddWithValue("@data", data);

                cmd.ExecuteNonQuery();
                con.Close();


                lblModalBody.ForeColor = System.Drawing.Color.YellowGreen;
                lblModalBody.Text = "Valoarea a fost adaugata cu succes!";
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
                upModal.Update();
                greutate.Value = "";
            }
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        var dataInceput = TextBox1.Text;
        var dataSfarsit = TextBox2.Text;
        if (dataInceput == "" || dataSfarsit == "")
        {
            lblModalBody.Text = "Ambele campuri sunt obligatorii!";
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
            upModal.Update();
        }
        else
        {
            DateTime data1 = DateTime.Parse(dataInceput);
            DateTime data2 = DateTime.Parse(dataSfarsit);

            if (data1 > data2)
            {
                lblModalBody.Text = "Data de inceput trebuie sa fie mai mica decat data de sfarsit!";
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
                upModal.Update();
            }
            else
            {
                data2 = data2.AddHours(24);
                data1 = data1.AddHours(-24);

                var numeUtilizator = HttpContext.Current.User.Identity.Name;
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
                con.Open();

                string query = "SELECT Valoare,Data,Id FROM Greutate WHERE Utilizator = '" + numeUtilizator + "' AND Data >='" + data1 + "' AND Data <='" + data2 + "'  Order by Data ASC";

                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader queryCommandReader = cmd.ExecuteReader();

                DataTable dataTable = new DataTable();
                dataTable.Load(queryCommandReader);

                int numarLinii = dataTable.Rows.Count;

                if (numarLinii == 0)
                {
                    lblModalBody.Text = "Nu exista valori adaugate in aceasta perioada!";
                    ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
                    upModal.Update();
                }
                else
                {

                    tabelGreutate.Visible = true;
                    Repeater2.DataSource = dataTable;
                    Repeater2.DataBind();

                    Chart1.DataSource = dataTable;
                    Chart1.DataBind();
                    con.Close();

                    Chart1.Series["Series1"].BorderWidth = 10;
                    Chart1.Titles["Title1"].ForeColor = System.Drawing.Color.Red;
                    Chart1.Series["Series1"].LabelForeColor = System.Drawing.Color.Red;

                    Chart1.ChartAreas[0].AxisX.LabelStyle.Font = new System.Drawing.Font("Trebuchet MS", 10, System.Drawing.FontStyle.Bold);
                    Chart1.ChartAreas[0].AxisY.LabelStyle.Font = new System.Drawing.Font("Trebuchet MS", 10, System.Drawing.FontStyle.Bold);

                    for (int i = 0; i < numarLinii; i++)
                    {
                        Chart1.Series["Series1"].Points[i].Label = dataTable.Rows[i]["Valoare"].ToString();
                    }
                    Chart1.Visible = true;
                }
            }
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        var button = (Button)sender;
        string id = button.CommandArgument;

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        con.Open();

        string query = "DELETE FROM Greutate WHERE Id='" + id + "'";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();

        con.Close();

        Button2_Click(sender, e);

        lblModalBody.ForeColor = System.Drawing.Color.YellowGreen;
        lblModalBody.Text = "Valoarea a fost eliminata cu succes!";
        ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
        upModal.Update();
    }

}