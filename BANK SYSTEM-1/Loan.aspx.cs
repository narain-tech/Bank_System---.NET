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

public partial class Loan : System.Web.UI.Page
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
    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd = new SqlCommand("insert into loan(name,phoneno,state,city,employementtype,typeofloan,salaryrange,property,emailid) values('"+NameTextBox.Text+"','"+PhonenoTextBox.Text+"','"+StateDropDownList.SelectedValue+"','"+CityDropDownList.SelectedValue+"','"+EmployementypeownList.SelectedValue+"','"+TypeofLoanDropDownList.SelectedValue+"','"+SalaryRangeDropDownList.SelectedValue+"','"+HaveyouidentifiedpropertyDropDownList.SelectedValue+"','"+EmailidTextBox.Text+"')", cn);
        cmd.ExecuteNonQuery();
        cn.Close();

        ClientScript.RegisterStartupScript(this.GetType(), "ins suc", "alert('Successfully Created');", true);
    }
}