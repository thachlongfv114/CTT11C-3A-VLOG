﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_UpdatePanel : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        Label2.Text = System.DateTime.Now.ToString();
    }
}