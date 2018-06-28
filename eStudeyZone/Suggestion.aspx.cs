using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Suggestion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        DbLayer db = new DbLayer();
        db.ExecuteNonQuery("Insert into Suggestion values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','"+DateTime.Now.ToString()+"')");
        Label1.Text = "Thansks,  for Suggestion !!!";
    }
}