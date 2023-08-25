using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace Encues_ta
{
    public class Participantes
    {
        internal string nombreparticipante;
        private string NumeroEncuesta;
        private string NombreParticipante;
        private string Genero;
        private int Edad;
        private string CorreoElectronico;
        private string PartidoPolitico;

        public Participantes()
        {
            this.NumeroEncuesta = "";
            this.NombreParticipante = "";
            this.Genero = "";
            this.Edad = 0;
            this.CorreoElectronico = "";
            this.PartidoPolitico = "";
        }

        public string numeroencuesta { get => NumeroEncuesta; set => NumeroEncuesta = value; }
        public string Nombreparticipante { get => NombreParticipante; set => NombreParticipante = value; }
        public string genero { get => Genero; set => Genero = value; }
        public int edad { get => Edad; set => Edad = value; }
        public string correoelectronico { get => CorreoElectronico; set => CorreoElectronico = value; }
        public string partidopolitico { get => PartidoPolitico; set => PartidoPolitico = value; }
    }
}