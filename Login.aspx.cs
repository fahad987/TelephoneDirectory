﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Login : System.Web.UI.Page
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
    protected void login_Click(object sender, EventArgs e)
    {
        int i = 0;
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from Registration where username='"+username.Text+"' and password='"+password.Text+"'";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        sda.Fill(dt);
        i = Convert.ToInt32(dt.Rows.Count.ToString());
        if (i == 0)
        {
            Response.Write("<script>alert('invalid username or password')</script>");
        }
        else
        {
            Session["username"] = username.Text;
            Response.Redirect("add_Contact.aspx");
        }

    }
}