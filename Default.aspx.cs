using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Drawing;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        DbLayer db = new DbLayer();
        //DataSet ds = db.GetDataSet("SELECT t.FirstName,t.LastName,ta.ExpertiseArea, ta.WorkExperience,ta.ComfortableLevel,ta.Qalification,ta.ProjectAchievement,ta.Remark, ta.LastUpdate from TrainerAdvancePro ta inner join TrainerRegistration t ON t.UserId=ta.Userid  ");

        DataSet ds = db.GetDataSet("SELECT t.UserId, t.FirstName,t.LastName,ta.ExpertiseArea, ta.WorkExperience,ta.ComfortableLevel,ta.Qalification,ta.ProjectAchievement,ta.Remark, ta.LastUpdate from TrainerAdvancePro ta inner join TrainerRegistration t ON t.UserId=ta.Userid where ta.ExpertiseArea='"+drpExperties.SelectedValue+"' and ta.Qalification='"+drpQali.SelectedValue+"' and ta.ComfortableLevel='"+drpComfor.SelectedValue+"'");


       DataList1.DataSource = ds.Tables[0];
       DataList1.DataBind();
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {

        lblError.ForeColor = Color.Red;
        if (Session["userId"] != null)
        {
            if (e.CommandName == "request")
            {
                ImageButton imgbut = (ImageButton)e.Item.FindControl("ImageButton2");
                string  trainerId = imgbut.AlternateText;
                DbLayer db = new DbLayer();
                db.ExecuteNonQuery("Insert into TrainerRequest values ('" + trainerId + "','" + Session["userId"].ToString() + "',getdate(),'0')");
                lblError.ForeColor = Color.Green;
                lblError.Text = "Your Query has been successfully Submited.";

            }
        }
        else
        {
            lblError.Text = "Please Login First !!!!";
        }
    }
}