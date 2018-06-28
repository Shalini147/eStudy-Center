using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Blog : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DbLayer db = new DbLayer();
            DataList1.DataSource = db.GetDataSet("select name,UserType,Date,BlogContent from Blog where Active='true'").Tables[0];
            DataList1.DataBind();
        }
    }
}