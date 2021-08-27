using AccesoDatos;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data.Entity.Validation;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LogicaNegocios.Paginas
{
    [DataObject]
    public class AtencionClienteBL
    {
        //Conexion a la bd
        IdiaEntities bd = new IdiaEntities();

      

        //Retorna lista de propietario Atencion vehiculo 
        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<atencionVehiculo> GetAtencionVehiculos()
        {
            return bd.atencionVehiculo.ToList();
        }

        //Retorna lista de Responsable pago
        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<ResponsablePago> GetResponsablePagos()
        {
            return bd.ResponsablePago.ToList();
        }

        //--------------------- ddl --------------------

        //Retorna lista Tipos de vehiculo
        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<TipoVehiculo> GetTipoVehiculo()
        {
            return bd.TipoVehiculo.ToList();
        }

        //Retorna lista de sellos  
        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<SelloVehiculo> GetSelloVehiculos()
        {
            return bd.SelloVehiculo.ToList();
        }

        //Retorna lista Marca vehiculos
        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<MarcaVehiculo> GetMarcaVehiculos()
        {
            return bd.MarcaVehiculo.ToList();
        }

        //Retorna lista modelo vehiculos
        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<ModeloVehiculo> GetModeloVehiculos()
        {
            return bd.ModeloVehiculo.ToList();
        }

        //Retorna lista Transmision 
        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<Transmision> GetTransmisions()
        {
            return bd.Transmision.ToList();
        }

        //Retorna lista tipo conbustible  
        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<TipoCombustible> GetTipoCombustibles()
        {
            return bd.TipoCombustible.ToList();
        }

        //Retorna lista traccion  
        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<Traccion> GetTraccions()
        {
            return bd.Traccion.ToList();
        }

        //Retorna lista de servicios  
        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<Servicios> GetServicios()
        {
            return bd.Servicios.ToList();
        }


        //Retorna lista de ciudades  
        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<Ciudad> GetCiudads()
        {
            return bd.Ciudad.ToList();
        }

        //Retorna propietario vehiculo por id
        public PropietarioVehiculo GetPropietarioVehiculo(int id)
        {
            PropietarioVehiculo propietarioVehiculo = bd.PropietarioVehiculo.Where(c => c.id == id).FirstOrDefault();
            return propietarioVehiculo;
        }

        //Retorna atencion vehiculo por id
        public atencionVehiculo GetAtencionVehiculo(int id)
        {
            atencionVehiculo atencionVehiculo = bd.atencionVehiculo.Where(c => c.id == id).FirstOrDefault();
            return atencionVehiculo;
        }



        //Retorna Responsable por id
        public ResponsablePago GetResponsablePago(int id)
        {
            ResponsablePago responsablePago = bd.ResponsablePago.Where(c => c.id == id).FirstOrDefault();
            return responsablePago;
        }


        //Retorna id ultimo propietario 
        public int GetUltimoPropietarioVehiculo()
        {
            var ultimoPropietario = (from c in bd.PropietarioVehiculo orderby c.id descending select c.id).First();
            return ultimoPropietario;
        }

        //Retorna id ultimo Atencion vehiculo 
        public int GetUltimoAtencionVehiculo()
        {
            var ultimoAtencionVehiculo = (from c in bd.atencionVehiculo orderby c.id descending select c.id).First();
            return ultimoAtencionVehiculo;
        }

        //Guarda Propietario Vehiculo
        [DataObjectMethod(DataObjectMethodType.Insert)]
        public void AddPropietarioVehiculo(
            string rut, 
            string nombre, 
            string apellidoPaterno, 
            string apellidoMaterno, 
            int idCiudad, 
            string direccion, 
            int telefono, 
            string correo
            )
        {
            PropietarioVehiculo nuevoPropietario = new PropietarioVehiculo();
            
                nuevoPropietario.rutPropietario = rut;
                nuevoPropietario.nombresPropietario = nombre;
                nuevoPropietario.propietarioApellidoPaterno = apellidoPaterno;
                nuevoPropietario.propietarioApellidoMaterno = apellidoMaterno;
                nuevoPropietario.ciudadId = idCiudad;
                nuevoPropietario.direccion = direccion;
                nuevoPropietario.telefono = telefono;
                nuevoPropietario.correo = correo;

                bd.PropietarioVehiculo.Add(nuevoPropietario);
                bd.SaveChanges();
          
        }

        //Guarda Atencion Vehiculo
        [DataObjectMethod(DataObjectMethodType.Insert)]
        public void AddAtencionVehiculo(
            int idVehiculoTipo, 
            string patenteVehiculo, 
            int idSello, 
            int idMarca, 
            int idModelo, int ano, 
            int cilindrada, 
            int motorNro, 
            string chasisNro, 
            int puertasNro, 
            int idTransmision, 
            int idCombustible, 
            int idTraccion, 
            int idServicio
            )
        {
            atencionVehiculo nuevoAtencionVehiculo = new atencionVehiculo();

            int id = GetUltimoPropietarioVehiculo();
            nuevoAtencionVehiculo.propietarioId = id;
            nuevoAtencionVehiculo.vehiculoTipoId = idVehiculoTipo;
            nuevoAtencionVehiculo.PatenteVehiculo = patenteVehiculo;
            nuevoAtencionVehiculo.SelloId = idSello;
            nuevoAtencionVehiculo.marcaId = idMarca;
            nuevoAtencionVehiculo.modeloId = idModelo;
            nuevoAtencionVehiculo.año = ano;
            nuevoAtencionVehiculo.cilindradaVehiculo = cilindrada;
            nuevoAtencionVehiculo.nroMotor = motorNro;
            nuevoAtencionVehiculo.nroChasis = chasisNro;
            nuevoAtencionVehiculo.nroPuertas = puertasNro;
            nuevoAtencionVehiculo.transmisionId = idTransmision;
            nuevoAtencionVehiculo.combustibleId = idCombustible;
            nuevoAtencionVehiculo.traccionId = idTraccion;
            nuevoAtencionVehiculo.servicioId = idServicio;

            bd.atencionVehiculo.Add(nuevoAtencionVehiculo);
            bd.SaveChanges();
        }

        //Guarda Responsable Pago
        [DataObjectMethod(DataObjectMethodType.Insert)]
        public void AddResponsablePago(
            string rut, string nombre, 
            string apellidoPaterno, 
            string apellidoMaterno, 
            int telefono, 
            string correo, 
            string direccion
            )
        {
            ResponsablePago nuevoResponsablePago = new ResponsablePago();

            int id = GetUltimoAtencionVehiculo();
            nuevoResponsablePago.NroAtencionId = id;
            nuevoResponsablePago.rutCliente = rut;
            nuevoResponsablePago.clienteNombres = nombre;
            nuevoResponsablePago.clienteApellidoPaterno = apellidoPaterno;
            nuevoResponsablePago.cleinteApellidoMaterno = apellidoMaterno;
            nuevoResponsablePago.telefono = telefono;
            nuevoResponsablePago.email = correo;
            nuevoResponsablePago.dirección = direccion;

            bd.ResponsablePago.Add(nuevoResponsablePago);
            bd.SaveChanges();
        }
    }
}
