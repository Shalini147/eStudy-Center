using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class NewsPortal : System.Web.UI.Page
{
    
    public void Rebind()
    {
        DbLayer db = new DbLayer();
        DataList1.DataSource =  db.GetDataSet("select * from newsportal").Tables[0];
        DataList1.DataBind();
    }



    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            Rebind();
    }
}