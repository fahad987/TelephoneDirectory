using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class edit : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\General-2\Desktop\Fahad\Tele09-12-19\App_Data\TelephoneDirectory.mdf;Integrated Security=True");
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();

        if (Session["username"] == null)
        {
            Response.Redirect("login.aspx");
        }
        id = Convert.ToInt32(Request.QueryString["id"].ToString());

        if (IsPostBack) return;

        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from add_contact where id="+id+"";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        sda.Fill(dt);
        foreach (DataRow dr in dt.Rows)
        {
            firstname.Text = dr["firstname"].ToString();
            lastname.Text = dr["lastname"].ToString();
            contactno.Text = dr["contactno"].ToString();
            email.Text = dr["email"].ToString();
            address.Text = dr["address"].ToString();
            city.Text = dr["city"].ToString();
        }
    }

    protected void submit_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "update add_contact set firstname='"+firstname.Text+"',lastname='"+lastname.Text+"', contactno='"+contactno.Text+"',email='"+email.Text+"',address='"+address.Text+"',city='"+city.Text+"' where id="+id+"";
        cmd.ExecuteNonQuery();

        Response.Redirect("myContact.aspx");
    }
}