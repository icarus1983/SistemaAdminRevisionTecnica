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
    public class AnulacionClienteBL
    {
        //Conexion a la bd
        IdiaEntities bd = new IdiaEntities();

        [DataObjectMethod(DataObjectMethodType.Select)]
        //Retorna Responsable por id
        public ResponsablePago GetResponsablePago(int id)
        {
            ResponsablePago responsable = bd
                .ResponsablePago.Where(c => c
                .id == id)
                .FirstOrDefault();
            return responsable;
        }

        [DataObjectMethod(DataObjectMethodType.Select)]
        //Retorna atencion por id
        public atencionVehiculo GetAtencionVehiculo(int id)
        {
            atencionVehiculo atencion = bd
                .atencionVehiculo
                .Where(c => c
                .id == id)
                .FirstOrDefault();
            return atencion;
        }

        [DataObjectMethod(DataObjectMethodType.Select)]
        //Retorna atencion por id
        public PropietarioVehiculo GetPropietario(int id)
        {
            PropietarioVehiculo propietario = bd
                .PropietarioVehiculo
                .Where(c => c.id == id)
                .FirstOrDefault();
            return propietario;
        }

        //Eliminar usuarios
        [DataObjectMethod(DataObjectMethodType.Delete)]
        public void deleteResponsable(string patente)
        {

            //Recibe patente desde la capa de presentacion a la capa logica
            //con la patente busca coincidencias en la tabla atencionVehiculo propiedad PatenteVehiculo
            //si existe coincidencia con algun valor de la propiedad PatenteVehiculo 
            //Solicita el idNroAtencion que contiene la fila de patente 
            int idNumeroAtencion = bd
                .atencionVehiculo.Where(v => v
                .PatenteVehiculo == patente)
                .Select(v => v
                .id)
                .FirstOrDefault();

            //Recibe patente desde la capa de presentacion a la capa logica
            //con la patente busca coincidencias en la tabla atencionVehiculo propiedad PatenteVehiculo
            //si existe coincidencia con algun valor de la propiedad PatenteVehiculo 
            //Solicita el propietarioId que contiene la fila de patente 
            int idPropietario = bd
                .atencionVehiculo
                .Where(v => v
                .PatenteVehiculo == patente)
                .Select(v => v
                .propietarioId)
                .FirstOrDefault();

            //Recibe idNumeroAtencion desde linq anterior 
            //con el idNumeroAtencion busca coincidencias en la tabla ResponsablePago propiedad NroAtencionId
            //NroAtencionId es clave foranea de idNumeroAtencion de la tabla atencionVehiculo
            //si existe coincidencia con algun valor de la propiedad NroAtencionId
            //Solicita el idCliente que contiene la fila de NroAtencionId 
            int idResponsable = bd
                .ResponsablePago.Where(v => v
                .NroAtencionId == idNumeroAtencion)
                .Select(v => v
                .id)
                .FirstOrDefault();

     

            ResponsablePago deleteResponsable = this.GetResponsablePago(idResponsable);
            atencionVehiculo deleteAtencion = this.GetAtencionVehiculo(idNumeroAtencion);
            PropietarioVehiculo deletePropietario = this.GetPropietario(idPropietario);
            bd.ResponsablePago.Remove(deleteResponsable);
            bd.atencionVehiculo.Remove(deleteAtencion);
            bd.SaveChanges();
        }


    }
}
