﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {   
        ObjectDataSource2.SelectParameters[0].DefaultValue = TextBox1.Text;
        ObjectDataSource2.DataBind();
        GridView2.DataBind();
    }
}
