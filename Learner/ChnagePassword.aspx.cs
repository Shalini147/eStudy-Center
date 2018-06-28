using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Drawing;

public partial class Learner_ChnagePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userId"] != null)
        {
            Label ll = (Label)Master.FindControl("lblLearn");
            ll.Text = Session["name"].ToString();

        }
        else
        {
            Response.Redirect("~/Default.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
      
                DbLayer db = new DbLayer();
                DataSet ds = db.GetDataSet("select * from Login where UserId='" + Session["userId"].ToString() + "' and Password='"+TextBox1.Text+"' ");
                if (ds.Tables[0].Rows.Count > 0)
                {
                  int i=  db.ExecuteNonQuery("Update Login set Password='"+TextBox2.Text+"'where UserId='" + Session["userId"].ToString()+"' ");
                  if (i > 0)
                  {
                      Label1.ForeColor = Color.Green;
                      Label1.Text = "Your Password is Successfully Updated ..";
                  }
                }
                else
                {
                    Label1.ForeColor = Color.Red;
                    Label1.Text = "Invalid Old Password plz Try again !!!";
                }

    }
}