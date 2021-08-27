using AccesoDatos;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LogicaNegocios.Paginas
{
    [DataObject]
    public class ReimpresionCertificadoBL
    {
        //Conexion a la bd
        IdiaEntities bd = new IdiaEntities();

        public string marca { get; set; }
        public int nroAtencion { get; set; }
        public string patenteVehiculo { get; set; }
        public string modelo { get; set; }
        public string nroChasis { get; set; }
        public int nroMotor { get; set; }
        public string nombre { get; set; }
        public string aMaterno { get; set; }
        public string aPaterno { get; set; }
        public string rut { get;  set; }
        public string direccion { get;  set; }

        public List<ReimpresionCertificadoBL> GetAtencionVehiculoP(string patente)
        {
            var atencioVehiculo = from
                                  a in bd.atencionVehiculo
                                  join ma in bd.MarcaVehiculo on a.marcaId equals ma.id
                                  join mo in bd.ModeloVehiculo on a.modeloId equals mo.id
                                  join se in bd.SelloVehiculo on a.SelloId equals se.id
                                  join pr in bd.PropietarioVehiculo on a.propietarioId equals pr.id
                                  join tm in bd.Transmision on a.transmisionId equals tm.id
                                  join tc in bd.Traccion on a.traccionId equals tc.id
                                  where a.PatenteVehiculo ==
                                  patente
                                  select new ReimpresionCertificadoBL()
                                  {

                                      nroAtencion = a.id,
                                      nroChasis = a.nroChasis,
                                      nroMotor = a.nroMotor,
                                      patenteVehiculo = a.PatenteVehiculo,
                                      marca = ma.nombreMarca,
                                      modelo = mo.nombreModelo,
                                      nombre = pr.nombresPropietario,
                                      aMaterno = pr.propietarioApellidoMaterno,
                                      aPaterno = pr.propietarioApellidoPaterno,
                                      rut = pr.rutPropietario,
                                      direccion = pr.direccion

                                  };
            return atencioVehiculo.ToList();
        }
    }
}