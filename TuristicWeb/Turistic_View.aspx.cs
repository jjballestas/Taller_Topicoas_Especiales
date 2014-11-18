using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Runtime.Serialization;
using System.Runtime.Serialization.Json;
using System.IO;
using System.Net;
using System.Text;
public partial class Turistic_View : System.Web.UI.Page
{
    
    protected void cmdconsultar_Click(object sender, EventArgs e)
    {
        SitioController Misitio = new SitioController();
        GridSitios.DataSource = Misitio.BuscarSitios (txtlatitud.Text,txtlongitud.Text);
        GridSitios.DataBind();
        if (GridSitios.Rows.Count > 0) lblsitios.Visible = true; else lblsitios.Visible = false;

    }
    protected void cmdsitios_Click(object sender, EventArgs e)
    {
     SitioController  Misitio = new SitioController();
     GridSitioCercano.DataSource = Misitio.BuscarSitios(txtsitio.Text);
     GridSitioCercano.DataBind();
     if (GridSitioCercano.Rows.Count > 0) lblSitioCercano.Visible = true; else lblSitioCercano.Visible = false;

        
    }
}