using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppFormsDemo
{
    public partial class FormControlDemo : System.Web.UI.UserControl
    {
        public string firstName = string.Empty;
        public string lastName = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            firstName = TextBoxFName.Text;
            lastName = TextBoxLName.Text;
        }

        protected void TextBoxFName_TextChanged(object sender, EventArgs e)
        {
            firstName = TextBoxFName.Text;
            lastName = TextBoxLName.Text;
        }

        protected void TextBoxLName_TextChanged(object sender, EventArgs e)
        {
            firstName = TextBoxFName.Text;
            lastName = TextBoxLName.Text;
        }
    }
}