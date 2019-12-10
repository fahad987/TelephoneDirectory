using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class add_Contact : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\General-2\Desktop\Fahad\Tele09-12-19\App_Data\TelephoneDirectory.mdf;Integrated Security=True");
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();

        if (Session["username"] == null)
        {
            Response.Write("login.aspx");
        }
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into add_contact values('"+Session["username"].ToString()+"','"+firstname.Text+"','"+lastname.Text+"','"+contactno.Text+"','"+email.Text+"','"+address.Text+"','"+city.Text+"')";
        cmd.ExecuteNonQuery();

        Response.Write("<script>alert('Your Contact Added Successfully')</script>");
    }
}