using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.HtmlControls;
using System.Globalization;

public partial class CalculatorCaloric : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblModalBody.ForeColor = System.Drawing.Color.Red;
        Page.MaintainScrollPositionOnPostBack = true; // mentine pozitia paginii cand face PostBack

        foreach (RepeaterItem item in Repeater1.Items)
        {
            HtmlGenericControl divControl = (HtmlGenericControl)item.FindControl("alertmes"); // gasesc un element HTML intr-un repeater
            divControl.Visible = false;
            HtmlGenericControl divControl1 = (HtmlGenericControl)item.FindControl("succesmes");
            divControl1.Visible = false;
        }
        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
            con.Open();

            string query = "SELECT Id,Denumire,Calorii FROM Alimente Where Categorie = 'Legume'  Order By Denumire ASC ";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader queryCommandReader = cmd.ExecuteReader();

            DataTable dataTable = new DataTable();
            dataTable.Load(queryCommandReader);

            Repeater1.DataSource = dataTable;
            Repeater1.DataBind();

            con.Close();
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        var optiune = DropDownList1.SelectedValue;
        if (optiune.Equals("Seminte si fructe oleaginoase")) optiune = "Seminte";
        if (optiune.Equals("Lapte si derivate")) optiune = "Lactate";
        if (optiune.Equals("Peste si derivate")) optiune = "Peste";
        if (optiune.Equals("Carne si derivate")) optiune = "Carne";
        if (optiune.Equals("Mezeluri")) optiune = "Mezel";
        if (optiune.Equals("Paine si preparate din faina")) optiune = "Paine";
        if (optiune.Equals("Dulciuri si produse de patiserie")) optiune = "Dulciuri";

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        con.Open();

        string query = "SELECT Id,Denumire,Calorii FROM Alimente Where Categorie = '" + optiune + "'  Order By Denumire ASC ";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader queryCommandReader = cmd.ExecuteReader();

        DataTable dataTable = new DataTable();
        dataTable.Load(queryCommandReader);

        Repeater1.DataSource = dataTable;
        Repeater1.DataBind();

        con.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        var button = (Button)sender;
        string id = button.CommandArgument;

        Page.MaintainScrollPositionOnPostBack = true;

        int nr = 0;
        foreach (RepeaterItem item in Repeater1.Items)
        {
            Button btnId = (Button)item.FindControl("Button1");

            if (btnId.CommandArgument == id)
            {
                TextBox txt = (TextBox)item.FindControl("TextBox1");

                if (txt.Text == "")
                {
                    HtmlGenericControl mesaj = (HtmlGenericControl)item.FindControl("mesajCompletNeg");
                    mesaj.InnerHtml = "Va rugam sa completati cantitatea consumata!";
                    HtmlGenericControl divControl = (HtmlGenericControl)item.FindControl("alertmes");  // gasesc un element HTML intr-un repeater
                    divControl.Visible = true;
                }

                else
                {
                    int numar = int.Parse(txt.Text);
                    if (numar <= 0)
                    {
                        HtmlGenericControl mesaj = (HtmlGenericControl)item.FindControl("mesajCompletNeg");
                        mesaj.InnerHtml = "Va rugam sa introduceti o cantitate pozitiva!";
                        HtmlGenericControl divControl = (HtmlGenericControl)item.FindControl("alertmes");  // gasesc un element HTML intr-un repeater
                        divControl.Visible = true;
                    }
                    else
                    {
                        int grame = int.Parse(txt.Text);

                        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
                        con.Open();

                        string query = "SELECT Id,Denumire,Calorii FROM Alimente Where Id = " + id;
                        SqlCommand cmd = new SqlCommand(query, con);
                        SqlDataReader queryCommandReader = cmd.ExecuteReader();

                        DataTable dataTable = new DataTable();
                        dataTable.Load(queryCommandReader);

                        var denumire = dataTable.Rows[0]["Denumire"];
                        double calorii = (double)int.Parse(dataTable.Rows[0]["Calorii"].ToString()) / 100;
                        calorii = calorii * grame;
                        var numeUtilizator = HttpContext.Current.User.Identity.Name;
                        DateTime data = DateTime.Today;

                        SqlCommand cmd1 = con.CreateCommand();
                        cmd1.CommandType = System.Data.CommandType.Text;
                        cmd1.CommandText = "INSERT INTO IstoricAlimente (Denumire, Gramaj, Calorii, Utilizator, Data) VALUES (@Denumire,@Gramaj,@Calorii,@Utilizator,@Data)";

                        cmd1.Parameters.AddWithValue("@Denumire", denumire);
                        cmd1.Parameters.AddWithValue("@Gramaj", grame);
                        cmd1.Parameters.AddWithValue("@Calorii", calorii);
                        cmd1.Parameters.AddWithValue("@Utilizator", numeUtilizator);
                        cmd1.Parameters.AddWithValue("@Data", data);

                        cmd1.ExecuteNonQuery();

                        HtmlGenericControl divControl1 = (HtmlGenericControl)item.FindControl("succesmes");  // gasesc un element HTML intr-un repeater
                        divControl1.Visible = true;
                        txt.Text = "";

                        con.Close();
                        break;
                    }
                }
            }
            ++nr;
            }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Page.MaintainScrollPositionOnPostBack = true;

        var aliment = search.Value;
        if (aliment == "")
        {
            lblModalBody.Text = "Va rugam sa introduceti un aliment!";
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
            upModal.Update();
        }
        else
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
            con.Open();

            string query = "SELECT Id,Denumire,Calorii FROM Alimente Where Denumire  LIKE '%" + aliment + "%' Order By Denumire ASC ";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader queryCommandReader = cmd.ExecuteReader();

            DataTable dataTable = new DataTable();
            dataTable.Load(queryCommandReader);

            int numarLinii = dataTable.Rows.Count;

            if (numarLinii == 0)
            {
                lblModalBody.Text = "Nu exista rezultate pentru '" + aliment + "'";
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
                upModal.Update();
            }
            else
            {
                Repeater1.DataSource = dataTable;
                Repeater1.DataBind();
            }

            con.Close();
            search.Value = "";
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        istoric.Visible = false;
        calculatorcal.Visible = true;
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        calculatorcal.Visible = false;
        istoric.Visible = true;
        alimConsum.Visible = false;
        TextBox2.Text = "";
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox3.Text = "";

        string data = TextBox2.Text;
        if (data == "")
        {
            alimConsum.Visible = false;
            lblModalBody.Text = "Va rugam sa selectati o data!";
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
            upModal.Update();
        }
        else
        {
            var numeUtilizator = HttpContext.Current.User.Identity.Name;
            DateTime dataAleasa = DateTime.Parse(data);

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
            con.Open();

            string query = "SELECT Id,Denumire,Gramaj,Calorii FROM IstoricAlimente Where Utilizator  = '" + numeUtilizator + "' and Data  ='" + dataAleasa + "' Order By Calorii DESC ";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader queryCommandReader = cmd.ExecuteReader();

            DataTable dataTable = new DataTable();
            dataTable.Load(queryCommandReader);

            int numarLinii = dataTable.Rows.Count;

            if (numarLinii == 0)
            {
                alimConsum.Visible = false;
                lblModalBody.Text = "Nu exista nicio inregistrare la data de " + data;
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
                upModal.Update();
            }
            else
            {
                alimConsum.Visible = true;
                Repeater2.DataSource = dataTable;
                Repeater2.DataBind();

                double suma = 0;
                for (int i = 0; i < numarLinii; i++)
                    suma = suma + double.Parse(dataTable.Rows[i]["Calorii"].ToString());

                total.InnerText = "Total: " + suma.ToString() + " calorii";
            }
            con.Close();
        }
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        var button = (Button)sender;
        string id = button.CommandArgument;

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        con.Open();

        string query = "DELETE FROM IstoricAlimente WHERE Id='" + id + "'";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();

        con.Close();

        Button3_Click(sender, e);

        lblModalBody.ForeColor = System.Drawing.Color.YellowGreen;
        lblModalBody.Text = "Alimentul a fost eliminat cu succes!";
        ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
        upModal.Update();
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        var dataInceput = TextBox1.Text;
        var dataSfarsit = TextBox3.Text;

        alimConsum.Visible = false;
        TextBox2.Text = "";

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
                var numeUtilizator = HttpContext.Current.User.Identity.Name;
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
                con.Open();

                string query = "SELECT SUM(Calorii) as Valoare,Data FROM IstoricAlimente WHERE Utilizator = '" + numeUtilizator + "' AND Data >='" + data1 + "' AND Data <='" + data2 + "' Group by Data Order by Data ASC";

                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader queryCommandReader = cmd.ExecuteReader();

                DataTable dataTable = new DataTable();
                dataTable.Load(queryCommandReader);

                int numarLinii = dataTable.Rows.Count;

                if (numarLinii == 0)
                {
                    lblModalBody.Text = "Nu exista valori inregistrate in aceasta perioada!";
                    ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
                    upModal.Update();
                }
                else
                {
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

}