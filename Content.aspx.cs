using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.Services;
using System.Web.UI.WebControls;

public partial class aspx : BasePage

{

    [WebMethod()]
    public string HelloWorld(string name)
    {
        return string.Format("Bạn vừa chia sẽ:  {0}", name);
    }
    
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
    }
}