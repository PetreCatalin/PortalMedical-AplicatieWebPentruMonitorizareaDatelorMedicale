using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string numearticol = Session["Search"].ToString();

        Page.MaintainScrollPositionOnPostBack = true;

        if (!IsPostBack)
        {

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
            con.Open();

            string query = "SELECT Id, Titlu, Poza, DataAdaugare FROM Articole WHERE Titlu LIKE '%" + numearticol + "%' ORDER BY DataAdaugare DESC";
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

            if (numarLinii == 0) notfound.InnerHtml = "Nu a fost gasit nici un articol care sa contina '" + numearticol + "'";
            else
            {
                notfound.InnerHtml = "Rezultatele cautarii pentru '" + numearticol + "'";
                sortare.Visible = true;
            }
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        var link = (LinkButton)sender;
        string id = link.CommandArgument;
        Session["Id"] = int.Parse(id);
        Response.Redirect("News.aspx");
    }

    protected void schimb_sortare(object sender, EventArgs e)
    {
        var alegere = DropDownList1.SelectedValue;
        string numearticol = Session["Search"].ToString();

        if (alegere == "Cronologica")
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
            con.Open();

            string query = "SELECT Id, Titlu, Poza, DataAdaugare FROM Articole WHERE Titlu LIKE '%" + numearticol + "%' ORDER BY DataAdaugare DESC";
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

            string query = "SELECT Id, Titlu, Poza, DataAdaugare FROM Articole WHERE Titlu LIKE '%" + numearticol + "%' ORDER BY  Titlu ASC";
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

        Response.Redirect("Search.aspx"); 
    }

}