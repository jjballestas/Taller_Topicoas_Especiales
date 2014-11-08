﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/*namespace webservice02.Servicios
{
    public class Distancia
    {
    }
}*/

//namespace DistanceCalculatorCs
namespace webservice02.Servicios
{
    //class Program
    public class Distancia
    {
        static double Distance(double lat1, double lon1, double lat2, double lon2, char unit)
        {
            double deg2radMultiplier = Math.PI / 180;
            lat1 = lat1 * deg2radMultiplier;
            lon1 = lon1 * deg2radMultiplier;
            lat2 = lat2 * deg2radMultiplier;
            lon2 = lon2 * deg2radMultiplier;

            double radius = 6378.137; // earth mean radius defined by WGS84
            double dlon = lon2 - lon1;
            double distance = Math.Acos(Math.Sin(lat1) * Math.Sin(lat2) + Math.Cos(lat1) * Math.Cos(lat2) * Math.Cos(dlon)) * radius;

            if (unit == 'K')
            {
                return (distance);
            }
            else if (unit == 'M')
            {
                return (distance * 0.621371192);
            }
            else if (unit == 'N')
            {
                return (distance * 0.539956803);
            }
            else
            {
                return 0;
            }
        }


        /*static void Main(string[] args)
        {
            lat1 = 41.3879169;
            lon1 = 2.1699187;
            lat2 = 40.4167413;
            lon2 = -3.7032498;

            Console.WriteLine(Distance(lat1, lon1, lat2, lon2, 'K'));
            Console.WriteLine(Distance(lat1, lon1, lat2, lon2, 'M'));
            Console.WriteLine(Distance(lat1, lon1, lat2, lon2, 'N'));
        }*/
    }
}