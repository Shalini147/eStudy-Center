using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Learner_AdvanceProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DbLayer db = new DbLayer();
        db.ExecuteNonQuery("Insert into LearnerAdvancePro values('" + Session["userId"].ToString() + "','" + drpArea.SelectedValue + "','" + drpLevel.SelectedValue + "','" + drpExp.SelectedValue + "','" + txtTech.Text + "','" + txtrem.Text + "')");

    }
}