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
public partial class Balance_Detail : System.Web.UI.Page
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
        SqlCommand cmd = new SqlCommand("select *from deposit where name='" + AccountHolderNameTextBox.Text + "'", cn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            AccountHolderNameTextBox.Text = dr["name"].ToString();
            AccountNumberTextBox.Text = dr["number"].ToString();
            AccountTypeTextBox.Text = dr["type"].ToString();
            DepositAmountTextBox.Text = dr["deposit"].ToString();
        }
    }
    protected void SeachButton2_Click(object sender, EventArgs e)
    {
        cn.Open();
        SqlCommand cmd = new SqlCommand("select *from amount where holdername='" + AccountHolderNameTextBox.Text + "'", cn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            BalanceTextBox.Text = dr["amount"].ToString();
            
        }
    }
    protected void SearchButton3_Click(object sender, EventArgs e)
    {
        int deposit = Convert.ToInt32(DepositAmountTextBox.Text);
        int balance = Convert.ToInt32(BalanceTextBox.Text);
        int tot = deposit + balance;
        CurrentBalanceTextBox.Text = Convert.ToString(tot);
    }
    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd = new SqlCommand("insert into balancedetails(holdername,number,type,deposit,balance,currentbalance) values('"+AccountHolderNameTextBox.Text+"','"+AccountNumberTextBox.Text+"','"+AccountTypeTextBox.Text+"','"+DepositAmountTextBox.Text+"'.'"+BalanceTextBox.Text+"','"+CurrentBalanceTextBox.Text+"')", cn);
        cmd.ExecuteNonQuery();
        cn.Close();

        ClientScript.RegisterStartupScript(this.GetType(), "ins suc", "alert('Successfully Added');", true);
    }
}