using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Encues_ta
{
    public partial class ENCUESTADOR : System.Web.UI.Page
    {
        public class Participantes
        {
            public int NumeroEncuesta { get; set; }
            public string NombreParticipante { get; set; }
            public string Genero { get; set; }
            public int Edad { get; set; }
            public int CorreoElectronico { get; set; }
            public int Partidopolitico { get; set; }

            private static int tipoOperacion = 0;

            public static List<Participantes> participantes = new List<Participantes>();
            public Participantes(int id, string nombreparticipante, string genero, int edad, string correoelectronico, string partidopolitico)
            {
                this.NumeroEncuesta = id;
                this.NombreParticipante = nombreparticipante;
                this.Genero = genero;
                this.Edad = edad;
                this.CorreoElectronico = correoelectronico;
                this.Genero = partidopolitico;
            }
            public Participantes()
            {

            }

            public static int AgregarParticipante(int id, string nombreparticipante, string genero, int edad, string correoelectronico, string partidopolitico)
            {
                int retorno = 0;
                SqlConnection Conn = new SqlConnection();
                try
                {
                    using (Conn = DBconn.obtenerConexion())
                    {
                        SqlCommand cmd = new SqlCommand("Sp_IngresarEncuesta", Conn)
                        {
                            CommandType = CommandType.StoredProcedure
                        };

                        cmd.Parameters.Add(new SqlParameter("@NombreParticipante", nombreparticipante));
                        cmd.Parameters.Add(new SqlParameter("@Genero", genero));
                        cmd.Parameters.Add(new SqlParameter("@Edad", edad));
                        cmd.Parameters.Add(new SqlParameter("@CorreoElectronico", correoelectronico));
                        cmd.Parameters.Add(new SqlParameter("@PartidoPolitico", partidopolitico));

                        retorno = cmd.ExecuteNonQuery();
                    }
                }
                catch (System.Data.SqlClient.SqlException ex)
                {
                    retorno = -1;
                }
                finally
                {
                    Conn.Close();
                }

                return retorno;
            }

        }
    }
}