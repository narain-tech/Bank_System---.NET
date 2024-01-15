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

public partial class Edit_AccountHolder : System.Web.UI.Page
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
    protected void SearchButton_Click(object sender, EventArgs e)
    {
        cn.Open();
        SqlCommand cmd = new SqlCommand("select *from createaccount where name='" + NameTextBox.Text + "'", cn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
           NameTextBox.Text = dr["name"].ToString();
           FathersNameTextBox.Text = dr["fathername"].ToString();
           MothersNameTextBox.Text = dr["mothername"].ToString();
           AgeTextBox.Text = dr["age"].ToString();
          DobTextBox.Text = dr["dob"].ToString();
          GenderRadioButtonList.SelectedValue = dr["gender"].ToString();
             QualificationTextBox.Text = dr["qualification"].ToString();
            AddressTextBox.Text = dr["address"].ToString();
             PhonenoTextBox.Text= dr["phoneno"].ToString();
            EmailTextBox.Text = dr["email"].ToString();
            AadhaarTextBox.Text = dr["aadhaar"].ToString();
               


        }
    }
    protected void UpdateButton_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd = new SqlCommand("update createaccount set name='" + NameTextBox.Text + "',fathername='"+FathersNameTextBox.Text+"',mothername='"+MothersNameTextBox.Text+"',age='"+AgeTextBox.Text+"',dob='"+DobTextBox.Text+"',gender='"+GenderRadioButtonList.SelectedValue+"',qualification='"+QualificationTextBox.Text+"',address='"+AddressTextBox.Text+"',phoneno='"+PhonenoTextBox.Text+"',email='"+EmailTextBox.Text+"',aadhaar='"+AadhaarTextBox.Text+"' ", cn);
        cmd.ExecuteNonQuery();
        cn.Close();

        ClientScript.RegisterStartupScript(this.GetType(), "ins upd", "alert('Updated Successfull');", true);
    }
}