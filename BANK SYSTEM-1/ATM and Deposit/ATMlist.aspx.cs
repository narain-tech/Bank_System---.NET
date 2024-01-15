using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
using System.Configuration;

public partial class ATM_and_Deposit_ATMlist : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["BANK SYSTEMConnectionString"].ConnectionString;
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataReader dr;
    SqlDataAdapter ada;
    ArrayList name = new ArrayList();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(constr);
    }
    protected void DisplayButton_Click(object sender, EventArgs e)
    {
        cn.Open();
        SqlCommand cmd = new SqlCommand("select *from atmlist where name='" +AccountHolderNameTextBox.Text+ "'", cn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Label1.Text = dr["name"].ToString();
            Label2.Text = dr["atmnumber"].ToString();
            Label3.Text = dr["previousbalance"].ToString();
            Label4.Text = dr["withdraw"].ToString();
            Label5.Text = dr["balance"].ToString();
        }
    }
}