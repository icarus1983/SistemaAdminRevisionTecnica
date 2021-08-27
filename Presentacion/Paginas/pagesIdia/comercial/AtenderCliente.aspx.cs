using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LogicaNegocios.Paginas;

namespace Presentacion.Paginas.pagesIdia.comercial
{
  public partial class AtenderCliente : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnLimpiar_Click(object sender, EventArgs e)
    {
      txtPatente.Text = string.Empty;
      txtAno.Text = string.Empty;
      txtCilindrada.Text = string.Empty;
      txtNroMotor.Text = string.Empty;
      txtNroChasis.Text = string.Empty;
    }

    protected void btmLimpiar2_Click(object sender, EventArgs e)
    {
      txtRut.Text = string.Empty;
      txtNombre.Text = string.Empty;
      txtPterno.Text = string.Empty;
      txtMaterno.Text = string.Empty;
      txtDireccion.Text = string.Empty;
      txtTelefono.Text = string.Empty;
      txtCorreo.Text = string.Empty;
    }

    protected void btnLimpiar3_Click(object sender, EventArgs e)
    {
      txtRutResponsable.Text = string.Empty;
      txtNombreResponsable.Text = string.Empty;
      txtPaternoResponsable.Text = string.Empty;
      txtMaternoResponsable.Text = string.Empty;
      txtDireccionResponsable.Text = string.Empty;
      txtTelefonoResponsable.Text = string.Empty;
      txtCorreoResponsable.Text = string.Empty;

    }

    protected void btnGuardar_Click(object sender, EventArgs e)
    {
      AtencionClienteBL acbl = new AtencionClienteBL();

           
                acbl.AddPropietarioVehiculo(
                    txtRut.Text.Trim(),
                    txtNombre.Text.Trim(),
                    txtPterno.Text.Trim(),
                    txtMaterno.Text.Trim(),
                    int.Parse(ddlciudad.SelectedValue),
                    txtDireccion.Text.Trim(),
                    int.Parse(txtTelefono.Text),
                    txtCorreo.Text.Trim());


                acbl.AddAtencionVehiculo(
                    int.Parse(ddlIdTipoVehiculo.SelectedValue), 
                    txtPatente.Text.Trim(), 
                    int.Parse(ddlSelloGas.SelectedValue),
                    int.Parse(ddlMarca.SelectedValue), 
                    int.Parse(ddlModelo.SelectedValue), 
                    int.Parse(txtAno.Text), 
                    int.Parse(txtCilindrada.Text),
                    int.Parse(txtNroMotor.Text), 
                    txtNroChasis.Text.Trim(), 
                    int.Parse(txtNroPuertas.Text), 
                    int.Parse(ddlTransmision.SelectedValue),
                    int.Parse(ddlCombustible.SelectedValue), 
                    int.Parse(ddlTraccion.SelectedValue), 
                    int.Parse(ddlServicio.SelectedValue)
                    );

                acbl.AddResponsablePago
                    (
                    txtRutResponsable.Text.Trim(), 
                    txtNombreResponsable.Text.Trim(), 
                    txtPaternoResponsable.Text.Trim(),
                    txtMaternoResponsable.Text.Trim(), 
                    int.Parse(txtTelefonoResponsable.Text),
                    txtCorreo.Text.Trim(), 
                    txtDireccionResponsable.Text.Trim()
                    );
        }

   
    }
}
