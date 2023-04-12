using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppFormsDemo
{
    public partial class LifecycleEvents : System.Web.UI.Page
    {
        public const string Title = "Lifecycle Events";


        protected void Page_Init(object sender, EventArgs e)
        {
            Trace.Warn("Init Event");
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Trace.Warn("Init Load");
        }
        protected void Page_Render(object sender, EventArgs e)
        {
            Trace.Warn("Init Render");
        }
        protected void Page_Unload(object sender, EventArgs e)
        {
            Trace.Warn("Init Unload");
        }
    }
}