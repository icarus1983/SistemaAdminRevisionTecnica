//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace AccesoDatos
{
    using System;
    using System.Collections.Generic;
    
    public partial class CertificadoRevision
    {
        public int id { get; set; }
        public int atencionNroId { get; set; }
        public int estadoRevisionId { get; set; }
        public int nroCertMTT { get; set; }
        public string VehiculoPatente { get; set; }
    
        public virtual atencionVehiculo atencionVehiculo { get; set; }
        public virtual EstadoRevision EstadoRevision { get; set; }
    }
}
