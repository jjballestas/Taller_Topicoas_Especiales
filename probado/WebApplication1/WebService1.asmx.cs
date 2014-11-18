using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;

namespace WebApplication1
{
    /// <summary>
    /// Descripción breve de WebService1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/", Name = "TuristicData", Description = "obtiene distancia y sitios cercanos a una ubicacion")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    // [System.Web.Script.Services.ScriptService]
    public class WebService1 : System.Web.Services.WebService
    {
      
        DataClasses2DataContext dc1 = new DataClasses2DataContext();

         
          [WebMethod]
        public string getsitiocercano(string desc)
        {

            var sitio = from result in dc1.sitios
                        where result.lugarcercano.ToString().Contains(desc)
                        select new { codigo = result.idsitio, descripcion = result.descripcion, latitud = result.latitud, longitud = result.longitud };

            JavaScriptSerializer jss = new JavaScriptSerializer();
            if (sitio != null  )
            {


                var json = jss.Serialize(sitio);
                return json;

            }
            else
            {
                 
                return "no hay nada";
            }
           

        }

          [WebMethod]
          public string getsitionDistancia(double lat1, double lon1)
          {
              double deg2radMultiplier = Math.PI / 180;
              lat1 = lat1 * deg2radMultiplier;
              lon1 = lon1 * deg2radMultiplier;
              double radius = 6378.137;



              var sitio = from result in dc1.sitios
                          where Math.Acos( Math.Sin(lat1) * Math.Sin( (double)result.latitud * deg2radMultiplier) +
                          Math.Cos(lat1) * Math.Cos((double)result.latitud * deg2radMultiplier) * Math.Cos(((double)result.latitud * deg2radMultiplier) - lat1)) * radius <= 100000
                          select new
                          {
                              codigo = result.idsitio,
                              descripcion = result.descripcion,
                              distancia = Math.Acos(Math.Sin(lat1) * Math.Sin((double)result.latitud * deg2radMultiplier) +
                                  Math.Cos(lat1) * Math.Cos((double)result.latitud * deg2radMultiplier) * Math.Cos(((double)result.latitud * deg2radMultiplier)- lat1)) * radius
                          };

              JavaScriptSerializer jss = new JavaScriptSerializer();
              if (sitio != null)
              {


                  var json = jss.Serialize(sitio);
                  return json;

              }
              else
              {

                  return "no hay nada";
              }


          }


    }

    
}
