using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppFormsDemo
{
    public partial class FormControlParentDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LabelFullName.Text = $"{fcDemoForm.firstName} {fcDemoForm.lastName}";
        }

        protected void ButtonShowName_Click(object sender, EventArgs e)
        {
            LabelFullName.Text = $"{fcDemoForm.firstName} {fcDemoForm.lastName}";
        }
    }
}