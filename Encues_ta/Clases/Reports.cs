using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Encues_ta
{
    public class Reports
    {
        private Dictionary<string, int> encuestasPorGenero;

        public Reports()
        {
            encuestasPorGenero = new Dictionary<string, int>();
        }

        public void AgregarEncuesta(string genero)
        {
            if (encuestasPorGenero.ContainsKey(genero))
            {
                encuestasPorGenero[genero]++;
            }
            else
            {
                encuestasPorGenero.Add(genero, 1);
            }
        }

        public int ObtenerCantidadPorGenero(string genero)
        {
            if (encuestasPorGenero.ContainsKey(genero))
            {
                return encuestasPorGenero[genero];
            }
            else
            {
                return 0;
            }
        }

        public int ObtenerCantidadTotal()
        {
            int total = 0;
            foreach (var cantidad in encuestasPorGenero.Values)
            {
                total += cantidad;
            }
            return total;
        }
    }

    class Program
    {
        static void Main(string[] args)
        {
            Reports reportes = new Reports();

            reportes.AgregarEncuesta("Masculino");
            reportes.AgregarEncuesta("Femenino");
            reportes.AgregarEncuesta("Masculino");
            reportes.AgregarEncuesta("Otro");
            reportes.AgregarEncuesta("Femenino");

            Console.WriteLine("Cantidad de encuestas realizadas por género:");
            Console.WriteLine("Masculino: " + reportes.ObtenerCantidadPorGenero("Masculino"));
            Console.WriteLine("Femenino: " + reportes.ObtenerCantidadPorGenero("Femenino"));
            Console.WriteLine("Otro: " + reportes.ObtenerCantidadPorGenero("Otro"));
            Console.WriteLine("Total: " + reportes.ObtenerCantidadTotal());
        }
    }




