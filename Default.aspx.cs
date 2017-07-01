using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;
using System.Windows.Forms;
using System.Web.UI.HtmlControls;
using System.Web.Security;

public partial class _Default : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        Page.MaintainScrollPositionOnPostBack = true;

        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
            con.Open();

            string query = "SELECT Id, Titlu, Poza, DataAdaugare FROM Articole Where Categorie = 'Lifestyle' ORDER BY DataAdaugare DESC";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader queryCommandReader = cmd.ExecuteReader();
            DataTable dataTable = new DataTable();
            dataTable.Load(queryCommandReader);

            int numarLinii = dataTable.Rows.Count;
            for (int i = 0; i < numarLinii; i++)
                dataTable.Rows[i]["Poza"] = "Imagini/" + dataTable.Rows[i]["Poza"];

            Repeater1.DataSource = dataTable;
            Repeater1.DataBind();
            con.Close();
        }

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        var link = (LinkButton)sender;
        string id = link.CommandArgument;
        Session["Id"] = int.Parse(id);
        Response.Redirect("News.aspx");
    }

    protected void Lifestyle_Click(object sender, EventArgs e)
    {
        DropDownList1.SelectedValue = "Cronologica";
        categorie.InnerHtml = "Lifestyle";
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        con.Open();

        string query = "SELECT Id, Titlu, Poza, DataAdaugare FROM Articole Where Categorie = 'Lifestyle' ORDER BY DataAdaugare DESC";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader queryCommandReader = cmd.ExecuteReader();
        DataTable dataTable = new DataTable();
        dataTable.Load(queryCommandReader);

        int numarLinii = dataTable.Rows.Count;
        for (int i = 0; i < numarLinii; i++)
            dataTable.Rows[i]["Poza"] = "Imagini/" + dataTable.Rows[i]["Poza"];

        Repeater1.DataSource = dataTable;
        Repeater1.DataBind();
        con.Close();
    }

    protected void Alimentatie_Click(object sender, EventArgs e)
    {
        DropDownList1.SelectedValue = "Cronologica";
        categorie.InnerHtml = "Alimentatie";
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        con.Open();

        string query = "SELECT Id, Titlu, Poza, DataAdaugare FROM Articole Where Categorie = 'Alimentatie' ORDER BY DataAdaugare DESC";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader queryCommandReader = cmd.ExecuteReader();
        DataTable dataTable = new DataTable();
        dataTable.Load(queryCommandReader);

        int numarLinii = dataTable.Rows.Count;
        for (int i = 0; i < numarLinii; i++)
            dataTable.Rows[i]["Poza"] = "Imagini/" + dataTable.Rows[i]["Poza"];

        Repeater1.DataSource = dataTable;
        Repeater1.DataBind();
        con.Close();
    }

    protected void Preventie_Click(object sender, EventArgs e)
    {
        DropDownList1.SelectedValue = "Cronologica";
        categorie.InnerHtml = "Preventie";
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        con.Open();

        string query = "SELECT Id, Titlu, Poza, DataAdaugare FROM Articole Where Categorie = 'Preventie' ORDER BY DataAdaugare DESC";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader queryCommandReader = cmd.ExecuteReader();
        DataTable dataTable = new DataTable();
        dataTable.Load(queryCommandReader);

        int numarLinii = dataTable.Rows.Count;
        for (int i = 0; i < numarLinii; i++)
            dataTable.Rows[i]["Poza"] = "Imagini/" + dataTable.Rows[i]["Poza"];

        Repeater1.DataSource = dataTable;
        Repeater1.DataBind();
        con.Close();
    }

    protected void Copilul_Click(object sender, EventArgs e)
    {
        DropDownList1.SelectedValue = "Cronologica";
        categorie.InnerHtml = "Copilul tau";
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        con.Open();

        string query = "SELECT Id, Titlu, Poza, DataAdaugare FROM Articole Where Categorie = 'Copilul tau' ORDER BY DataAdaugare DESC";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader queryCommandReader = cmd.ExecuteReader();
        DataTable dataTable = new DataTable();
        dataTable.Load(queryCommandReader);

        int numarLinii = dataTable.Rows.Count;
        for (int i = 0; i < numarLinii; i++)
            dataTable.Rows[i]["Poza"] = "Imagini/" + dataTable.Rows[i]["Poza"];

        Repeater1.DataSource = dataTable;
        Repeater1.DataBind();
        con.Close();
    }

    protected void Cardiologie_Click(object sender, EventArgs e)
    {
        DropDownList1.SelectedValue = "Cronologica";
        categorie.InnerHtml = "Cardiologie";
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        con.Open();

        string query = "SELECT Id, Titlu, Poza, DataAdaugare FROM Articole Where Categorie = 'Cardiologie' ORDER BY DataAdaugare DESC";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader queryCommandReader = cmd.ExecuteReader();
        DataTable dataTable = new DataTable();
        dataTable.Load(queryCommandReader);

        int numarLinii = dataTable.Rows.Count;
        for (int i = 0; i < numarLinii; i++)
            dataTable.Rows[i]["Poza"] = "Imagini/" + dataTable.Rows[i]["Poza"];

        Repeater1.DataSource = dataTable;
        Repeater1.DataBind();
        con.Close();
    }

    protected void Stomatologie_Click(object sender, EventArgs e)
    {
        DropDownList1.SelectedValue = "Cronologica";
        categorie.InnerHtml = "Stomatologie";
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        con.Open();

        string query = "SELECT Id, Titlu, Poza, DataAdaugare FROM Articole Where Categorie = 'Stomatologie' ORDER BY DataAdaugare DESC";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader queryCommandReader = cmd.ExecuteReader();
        DataTable dataTable = new DataTable();
        dataTable.Load(queryCommandReader);

        int numarLinii = dataTable.Rows.Count;
        for (int i = 0; i < numarLinii; i++)
            dataTable.Rows[i]["Poza"] = "Imagini/" + dataTable.Rows[i]["Poza"];

        Repeater1.DataSource = dataTable;
        Repeater1.DataBind();
        con.Close();
    }

    protected void Psihologie_Click(object sender, EventArgs e)
    {
        DropDownList1.SelectedValue = "Cronologica";
        categorie.InnerHtml = "Psihologie";
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        con.Open();

        string query = "SELECT Id, Titlu, Poza, DataAdaugare FROM Articole Where Categorie = 'Psihologie' ORDER BY DataAdaugare DESC";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader queryCommandReader = cmd.ExecuteReader();
        DataTable dataTable = new DataTable();
        dataTable.Load(queryCommandReader);

        int numarLinii = dataTable.Rows.Count;
        for (int i = 0; i < numarLinii; i++)
            dataTable.Rows[i]["Poza"] = "Imagini/" + dataTable.Rows[i]["Poza"];

        Repeater1.DataSource = dataTable;
        Repeater1.DataBind();
        con.Close();
    }

    protected void Interventii_Click(object sender, EventArgs e)
    {
        DropDownList1.SelectedValue = "Cronologica";
        categorie.InnerHtml = "Interventii";
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        con.Open();

        string query = "SELECT Id, Titlu, Poza, DataAdaugare FROM Articole Where Categorie = 'Interventii' ORDER BY DataAdaugare DESC";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader queryCommandReader = cmd.ExecuteReader();
        DataTable dataTable = new DataTable();
        dataTable.Load(queryCommandReader);

        int numarLinii = dataTable.Rows.Count;
        for (int i = 0; i < numarLinii; i++)
            dataTable.Rows[i]["Poza"] = "Imagini/" + dataTable.Rows[i]["Poza"];

        Repeater1.DataSource = dataTable;
        Repeater1.DataBind();
        con.Close();
    }

    protected void Alergologie_Click(object sender, EventArgs e)
    {
        DropDownList1.SelectedValue = "Cronologica";
        categorie.InnerHtml = "Alergologie";
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        con.Open();

        string query = "SELECT Id, Titlu, Poza, DataAdaugare FROM Articole Where Categorie = 'Alergologie' ORDER BY DataAdaugare DESC";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader queryCommandReader = cmd.ExecuteReader();
        DataTable dataTable = new DataTable();
        dataTable.Load(queryCommandReader);

        int numarLinii = dataTable.Rows.Count;
        for (int i = 0; i < numarLinii; i++)
            dataTable.Rows[i]["Poza"] = "Imagini/" + dataTable.Rows[i]["Poza"];

        Repeater1.DataSource = dataTable;
        Repeater1.DataBind();
        con.Close();
    }

    protected void Tehnologie_Click(object sender, EventArgs e)
    {
        DropDownList1.SelectedValue = "Cronologica";
        categorie.InnerHtml = "Tehnologie";
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        con.Open();

        string query = "SELECT Id, Titlu, Poza, DataAdaugare FROM Articole Where Categorie = 'Tehnologie' ORDER BY DataAdaugare DESC";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader queryCommandReader = cmd.ExecuteReader();
        DataTable dataTable = new DataTable();
        dataTable.Load(queryCommandReader);

        int numarLinii = dataTable.Rows.Count;
        for (int i = 0; i < numarLinii; i++)
            dataTable.Rows[i]["Poza"] = "Imagini/" + dataTable.Rows[i]["Poza"];

        Repeater1.DataSource = dataTable;
        Repeater1.DataBind();
        con.Close();
    }

    protected void schimb_sortare(object sender, EventArgs e)
    {
        var alegere = DropDownList1.SelectedValue;
        var cat = categorie.InnerText;

        if (alegere == "Cronologica")
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
            con.Open();

            string query = "SELECT Id, Titlu, Poza, DataAdaugare FROM Articole Where Categorie = '" + cat + "' ORDER BY DataAdaugare DESC";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader queryCommandReader = cmd.ExecuteReader();
            DataTable dataTable = new DataTable();
            dataTable.Load(queryCommandReader);

            int numarLinii = dataTable.Rows.Count;
            for (int i = 0; i < numarLinii; i++)
                dataTable.Rows[i]["Poza"] = "Imagini/" + dataTable.Rows[i]["Poza"];

            Repeater1.DataSource = dataTable;
            Repeater1.DataBind();
            con.Close();
        }
        else
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
            con.Open();

            string query = "SELECT Id, Titlu, Poza, DataAdaugare FROM Articole Where Categorie = '" + cat + "' ORDER BY Titlu ASC";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader queryCommandReader = cmd.ExecuteReader();
            DataTable dataTable = new DataTable();
            dataTable.Load(queryCommandReader);

            int numarLinii = dataTable.Rows.Count;
            for (int i = 0; i < numarLinii; i++)
                dataTable.Rows[i]["Poza"] = "Imagini/" + dataTable.Rows[i]["Poza"];

            Repeater1.DataSource = dataTable;
            Repeater1.DataBind();
            con.Close();
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        foreach (RepeaterItem item in Repeater1.Items) //fiecare element dintr-un Repeater
        {
            LinkButton lb1 = item.FindControl("LinkButton1") as LinkButton;

            LoginView lw = item.FindControl("LoginView2") as LoginView; // gasim Login-View-ul din Repeater

            LinkButton lb2 = lw.FindControl("LinkButton2") as LinkButton; //gasim butonul din LoginView
            lb2.CommandArgument = lb1.CommandArgument;
        }

        var button = (LinkButton)sender;
        string id = button.CommandArgument;

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        con.Open();
        string query = "DELETE FROM Articole WHERE Id=" + id;
        SqlCommand cmd = new SqlCommand(query, con);

        cmd.ExecuteNonQuery();
        con.Close(); 

        Response.Redirect("Default.aspx"); 
    } 

}