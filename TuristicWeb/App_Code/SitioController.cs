using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;

/// <summary>
/// Descripción breve de SitioController
/// </summary>
public class SitioController
{
	public SitioController()
	{
		
	}

    public Sitio[] BuscarSitios(string Sitiocercano)
        {
            string Cad_Json;
            TuristicData.TuristicDataSoapClient servicio = new TuristicData.TuristicDataSoapClient();
            Cad_Json = servicio.getsitiocercano(Sitiocercano);
            var json_serializer = new JavaScriptSerializer();
            Sitio[] routes_list = json_serializer.Deserialize<Sitio[]>(Cad_Json);
            return routes_list;

        }

    public Distancia_sitio[] BuscarSitios(string latitud,string longitud)
    {
        string Cad_Json;
        TuristicData.TuristicDataSoapClient servicio = new TuristicData.TuristicDataSoapClient();
        Cad_Json = servicio.getsitionDistancia(Convert.ToDouble(latitud), Convert.ToDouble(longitud));
        var json_serializer = new JavaScriptSerializer();
        Distancia_sitio[] routes_list = json_serializer.Deserialize<Distancia_sitio[]>(Cad_Json);
        return routes_list;

    }

}