using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Learner_RegistrationLearner : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Label1.Text = "";
        DbLayer db = new DbLayer();
        bool UserAvalable = db.ExecuteCheck("SELECT * FROM login where UserId='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'");
        if (UserAvalable)
        {
            Label1.Text = "*User Id alreay avaliable plz user anoth Id.";
        }
        else
        {
            db.ExecuteNonQuery("Insert into Login (UserId,Password,UserType) values('" + TextBox1.Text + "','" + TextBox2.Text + "','Learner')");
            db.ExecuteNonQuery("Insert into LearnerRegistration values('" + TextBox1.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + DropDownList1.SelectedValue + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','True')");
            Label2.Text = "Registration Successfull  !!! ";


        }

    }
}