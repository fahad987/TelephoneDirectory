using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Registration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\General-2\Desktop\Fahad\Tele09-12-19\App_Data\TelephoneDirectory.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        int i = 0;
        SqlCommand cmd1 = con.CreateCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "select * from Registration where username='" + username.Text + "'"; 
        cmd1.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter sda = new SqlDataAdapter(cmd1);
        sda.Fill(dt);
        i = Convert.ToInt32(dt.Rows.Count.ToString());

        if (i == 0)
        {

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into Registration values('" + firstname.Text + "','" + lastname.Text + "','" + email.Text + "','" + username.Text + "','" + password.Text + "','" + contact.Text + "')";
            cmd.ExecuteNonQuery();

            Response.Write("<script>alert('resisterd success');</script>");

        }
        else
        {
            Response.Write("<script>alert('Username Already USed');</script>");

        }
    }
}