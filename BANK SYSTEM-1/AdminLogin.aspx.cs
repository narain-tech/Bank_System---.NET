﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ErrorMsgLabel.Visible = false;
    }
    protected void LoginButton_Click(object sender, EventArgs e)
    {

        using (SqlConnection sqlCon = new SqlConnection(@"Data Source=narain-pc\sqlexpress;Initial Catalog=BANK SYSTEM;Integrated Security=True"))
        {
            sqlCon.Open();
            string query = "SELeCT COUNT(1) FROM adminlogin WHERE userid=@userid AND password=@password";
            SqlCommand sqlcmd = new SqlCommand(query, sqlCon);
            sqlcmd.Parameters.AddWithValue("@userid", AdminUserIDTextBox.Text.Trim());
            sqlcmd.Parameters.AddWithValue("@password", PasswordTextBox.Text.Trim());
            int count = Convert.ToInt32(sqlcmd.ExecuteScalar());
            if (count == 1)
            {
                Session["userid"] = AdminUserIDTextBox.Text.Trim();
                Response.Redirect("AdminHomePage.aspx");
            }
            else { ErrorMsgLabel.Visible = true; }
        }

    }
}