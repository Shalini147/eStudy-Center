using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Learner_TrainerMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userId"] != null)
        {
            lblLearn.Text = Session["name"].ToString();
        }
        else
        {
            Response.Redirect("~/Blog.aspx");
        }
    }
}
