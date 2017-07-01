using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Drepturi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        actualizare.Visible = false;

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        con.Open();

        string query = "SELECT u.UserId, u.UserName, r.RoleName, u.LastActivityDate FROM Users AS u INNER JOIN UsersInRoles AS ur ON u.UserId = ur.UserId INNER JOIN Roles AS r ON ur.RoleId = r.RoleId Where r.RoleName <> 'Administrator'  Order By r.RoleName ASC , u.UserName ASC ";
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
        Session["UserId"] = id;

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        con.Open();

        string query = "SELECT UserName FROM Users WHERE UserId = '" + id + "'";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader queryCommandReader = cmd.ExecuteReader();

        DataTable dataTable = new DataTable();
        dataTable.Load(queryCommandReader);

        string numeUtilizator = (String)dataTable.Rows[0]["UserName"];
        nouRol.InnerText = "Alegeti noul rol pentru " + numeUtilizator;

        actualizare.Visible = true;
        con.Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        var button = (Button)sender;
        string id = button.CommandArgument;

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        con.Open();

        string query = "DELETE FROM Memberships WHERE UserId='" + id + "'";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();

        string query1 = "DELETE FROM UsersInRoles WHERE UserId='" + id + "'";
        SqlCommand cmd1 = new SqlCommand(query1, con);
        cmd1.ExecuteNonQuery();

        string query2 = "DELETE FROM Users WHERE UserId='" + id + "'";
        SqlCommand cmd2 = new SqlCommand(query2, con);
        cmd2.ExecuteNonQuery();
        con.Close();

        Page_Load(sender, e);

        lblModalBody.ForeColor = System.Drawing.Color.YellowGreen;
        lblModalBody.Text = "Utilizatorul a fost sters cu succes!";
        ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
        upModal.Update();      
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        string roleId = DropDownList1.SelectedValue.ToString();

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        con.Open();

        SqlCommand cmd = con.CreateCommand();
        cmd.CommandText = "UPDATE UsersInRoles  SET RoleId = '" + roleId + "' Where UserId = '" + Session["UserId"] + "'";
        cmd.ExecuteNonQuery();
        con.Close();

        Page_Load(sender, e);

        lblModalBody.ForeColor = System.Drawing.Color.YellowGreen;
        lblModalBody.Text = "Rolul utilizatorului a fost actualizat cu succes!";
        ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
        upModal.Update();
    }

}