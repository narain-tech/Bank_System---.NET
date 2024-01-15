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


public partial class BranchDetails : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["BANK SYSTEMConnectionString3"].ConnectionString;
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
    protected void FindButton_Click(object sender, EventArgs e)
    {
        cn.Open();
        SqlCommand cmd = new SqlCommand("select *from branch where pincode='" + PinCodeTextBox.Text + "'", cn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Label1.Text = dr["branchname"].ToString();
            Label2.Text = dr["branchmanager"].ToString();
            Label3.Text = dr["address"].ToString();
            Label4.Text = dr["district"].ToString();
            Label5.Text = dr["state"].ToString();
            Label6.Text = dr["pincode"].ToString();
            Label7.Text = dr["ifsc"].ToString();
            Label8.Text = dr["micrcode"].ToString();
            Label9.Text = dr["workinghours"].ToString();
            Label10.Text = dr["nonworkinghours"].ToString();
            Label11.Text = dr["classification"].ToString();
            Label12.Text = dr["phonenumber"].ToString();
            Label13.Text = dr["emailaddress"].ToString();
        }
    }
}