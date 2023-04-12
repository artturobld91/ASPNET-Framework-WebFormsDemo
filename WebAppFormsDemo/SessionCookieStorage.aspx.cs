using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppFormsDemo
{
    public partial class SessionCookieStorage : System.Web.UI.Page
    {
        public const string Title = "Storage Types";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonStoreCookie_Click(object sender, EventArgs e)
        {
            //ViewState["newPokemonsList"] = pokemonName;
            Response.Cookies["userName"].Value = $"ArtturoBld_Cookie_{Guid.NewGuid()}";
        }

        protected void ButtonStoreSession_Click(object sender, EventArgs e)
        {
            Session["newSessionItem"] = $"ArtturoBld_Session_{Guid.NewGuid()}";
        }

        protected void ButtonCleanStorage_Click(object sender, EventArgs e)
        {
            Response.Cookies.Clear();
            Session.Clear();
            ViewState.Clear();
        }
    }
}