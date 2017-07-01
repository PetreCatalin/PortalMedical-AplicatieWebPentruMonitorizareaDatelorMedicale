using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Security;

public partial class News : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.MaintainScrollPositionOnPostBack = true;

        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
            con.Open();

            string query = "SELECT Titlu,Poza,HtmlContent FROM Articole WHERE Id = " + Session["Id"];
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader queryCommandReader = cmd.ExecuteReader();

            DataTable dataTable = new DataTable();
            dataTable.Load(queryCommandReader);

            string title = (String)dataTable.Rows[0]["Titlu"];
            string photo = (String)dataTable.Rows[0]["Poza"];
            string html = (String)dataTable.Rows[0]["HtmlContent"];

            titlu.InnerHtml = title;
            continut.InnerHtml = html;
            imagine.Src = "~/Imagini/" + photo;

            string query1 = "SELECT Id,Comentariu,Data,Utilizator FROM Comentarii WHERE IdArticol = " + Session["Id"];
            SqlCommand cmd1 = new SqlCommand(query1, con);
            SqlDataReader queryCommandReader1 = cmd1.ExecuteReader();
            DataTable dataTable1 = new DataTable();
            dataTable1.Load(queryCommandReader1);
        
            /*
            int numarLinii = dataTable1.Rows.Count;
              for (int i = 0; i < numarLinii; i++)
              {
                  if (dataTable1.Rows[i]["Utilizator"] == numeUtilizator) ;
              } */

            Repeater1.DataSource = dataTable1;
            Repeater1.DataBind();

            var numeUtilizator = HttpContext.Current.User.Identity.Name;
            foreach (RepeaterItem item in Repeater1.Items) //fiecare element dintr-un Repeater
            {
                LinkButton lb3 = item.FindControl("LinkButton3") as LinkButton;
                if (lb3.CommandName == numeUtilizator && !(Roles.GetRolesForUser().Contains("Administrator"))) lb3.Visible=true; // pastram in commandname utilizatorul care a scris comentariul si daca el este cel logat,afisam butonul de stergere
            } // administratorul vede deja x-urile pentru toate stirile,nu vreau sa ii mai pun unul nou

                con.Close();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //asa se ia un element dintr-un LoginView 
        TextBox tb = (TextBox)loginView1.FindControl("comentariuNou");
        var comentariu = tb.Text;
        DateTime data = DateTime.Now;
        var idArticol = Session["Id"];
        var numeUtilizator = HttpContext.Current.User.Identity.Name; //numele utilizatorului curent logat

        UpdatePanel up = (UpdatePanel)loginView1.FindControl("upModal"); //iau elementul din LoginView

        if (comentariu.Length == 0)
        {
            lblModalBody.Text = "Comentariul nu poate fi gol!";
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
            up.Update();
        }
        else
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
            con.Open();

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "INSERT INTO Comentarii (IdArticol, Comentariu, Data, Utilizator) VALUES (@idArticol, @comentariu, @data,@numeUtilizator)";

            cmd.Parameters.AddWithValue("@idArticol", idArticol);
            cmd.Parameters.AddWithValue("@comentariu", comentariu);
            cmd.Parameters.AddWithValue("@numeUtilizator", numeUtilizator);
            cmd.Parameters.AddWithValue("@data", data);

            cmd.ExecuteNonQuery();
            
            Page.MaintainScrollPositionOnPostBack = true;
            string query1 = "SELECT Id,Comentariu,Data,Utilizator FROM Comentarii WHERE IdArticol = " + Session["Id"];
            SqlCommand cmd1 = new SqlCommand(query1, con);
            SqlDataReader queryCommandReader1 = cmd1.ExecuteReader();
            DataTable dataTable1 = new DataTable();
            dataTable1.Load(queryCommandReader1);

            Repeater1.DataSource = dataTable1;
            Repeater1.DataBind();

            foreach (RepeaterItem item in Repeater1.Items) //fiecare element dintr-un Repeater
            {
                LinkButton lb3 = item.FindControl("LinkButton3") as LinkButton;
                if (lb3.CommandName == numeUtilizator && !(Roles.GetRolesForUser().Contains("Administrator"))) lb3.Visible = true; // pastram in commandname utilizatorul care a scris comentariul si daca el este cel logat,afisam butonul de stergere
            }

            con.Close();

            //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Comentariul a fost adaugat cu succes!')", true);
            tb.Text = "";
        }

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Inregistrare.aspx");
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
       // Response.Write(id);

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        con.Open();
        string query = "DELETE FROM Comentarii WHERE Id=" + id;
        SqlCommand cmd = new SqlCommand(query, con);

        cmd.ExecuteNonQuery();
        con.Close();

        Page.MaintainScrollPositionOnPostBack = true;
        Response.Redirect("News.aspx");  
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        var button = (LinkButton)sender;
        string id = button.CommandArgument;
        // Response.Write(id);

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        con.Open();
        string query = "DELETE FROM Comentarii WHERE Id=" + id;
        SqlCommand cmd = new SqlCommand(query, con);

        cmd.ExecuteNonQuery();
        con.Close();

        Page.MaintainScrollPositionOnPostBack = true;
        Response.Redirect("News.aspx");
    }

}