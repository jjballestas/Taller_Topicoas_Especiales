using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Sitio 
 {
     public string codigo { get; set; }
     public string descripcion { get; set; }
       protected double latitud { get; set; }
         protected double longitud { get; set; }
      
 }

public class Distancia_sitio
{
    public string codigo { get; set; }
    public string descripcion { get; set; }
    public string distancia { get; set; }
    
}
 
