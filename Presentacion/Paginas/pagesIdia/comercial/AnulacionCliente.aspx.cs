using LogicaNegocios.Paginas;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Presentacion.Paginas.pagesIdia.comercial
{
    public partial class AnulacionCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAnular_Click(object sender, EventArgs e)
        {
            ver.Attributes.Add("style", "display:block");
            ver1.Attributes.Add("style", "display:block");
        }
        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            ver.Attributes.Add("style", "display:none");
            ver1.Attributes.Add("style", "display:none");
        }
        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            ver.Attributes.Add("style", "display:none");
            ver1.Attributes.Add("style", "display:none");
            AnulacionClienteBL abl = new AnulacionClienteBL();
            abl.deleteResponsable(txtPatente.Text.Trim());
        }
 

    }
}