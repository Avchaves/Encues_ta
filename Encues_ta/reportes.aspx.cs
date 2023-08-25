using Encues_ta;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Encues_ta
{
    public partial class reportes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Reports reportes = new Reports();

            reportes.AgregarEncuesta("Masculino");
            reportes.AgregarEncuesta("Femenino");
            reportes.AgregarEncuesta("Masculino");
            reportes.AgregarEncuesta("Otro");
            reportes.AgregarEncuesta("Femenino");

            CantidadMasculino.Text = "Masculino: " + reportes.ObtenerCantidadPorGenero("Masculino");
            CnatidadFemenino.Text = "Femenino: " + reportes.ObtenerCantidadPorGenero("Femenino");
            lblOtro.Text = "Otro: " + reportes.ObtenerCantidadPorGenero("Otro");
            lblTotal.Text = reportes.ObtenerCantidadTotal().ToString();
        }
    }
}
}