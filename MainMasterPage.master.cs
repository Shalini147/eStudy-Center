using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class MainMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        lblError.Text = "";
        DbLayer db = new DbLayer();
        DataSet ds = db.GetDataSet("SELECT UserType,Active from Login where userId='" + teachername.Value.Trim() + "' and Password='" + teacherpass.Value.Trim() + "' ");

        if (ds.Tables[0].Rows.Count>0)
        {

            if  ( Convert.ToBoolean(ds.Tables[0].Rows[0][1]))
           {
              
             
               string userType = ds.Tables[0].Rows[0][0].ToString();
               if (userType == "Learner")
               {
                   DataSet ds2 = db.GetDataSet("select FirstName,LastName from LearnerRegistration where userId='" + teachername.Value.Trim() + "'");
                   Session["name"] = ds2.Tables[0].Rows[0][0] + " " + ds2.Tables[0].Rows[0][1];
                   Session["userId"] = teachername.Value;
                   Session["userType"] = ds.Tables[0].Rows[0][0].ToString();
                   Response.Redirect("Learner/AdvanceProfile.aspx");


               }
               else
               {
                    DataSet ds2 = db.GetDataSet("select FirstName,LastName from TrainerRegistration where userId='" + teachername.Value.Trim() + "'");
                   Session["name"] = ds2.Tables[0].Rows[0][0] + " " + ds2.Tables[0].Rows[0][1];
                   Session["userId"] = teachername.Value;
                   Session["userType"] = ds.Tables[0].Rows[0][0].ToString();
                  Response.Redirect("Trainner/AdvanceProfileTrainer.aspx");
               }
           }
           else
           {
               lblError.Text = "Your Id is Blocked !!!";
               return;
           }

        }
         
        else
        {
            lblError.Text = "Invalid User Id or Password !";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        lblError.Text = "";
        DbLayer db = new DbLayer();
        DataSet ds = db.GetDataSet("SELECT Role from AdminLogin where userId='" + pupilname.Value.Trim() + "' and Password='" + pupilpass.Value.Trim() + "' ");

        if (ds.Tables[0].Rows.Count > 0)
        {
            Session["userId"] = pupilname.Value;
            Session["userType"] = ds.Tables[0].Rows[0][0].ToString();
            Response.Redirect("Admin/ChangePassword.aspx");
        }
        else
        {
            lblError.Text = "Invalid Admin Login ";
        }


    }
}
