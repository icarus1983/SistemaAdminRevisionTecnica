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
    
    public partial class ResultadoEstacionGases
    {
        public int id { get; set; }
        public int nroAtencionId { get; set; }
        public string vehiculoPatente { get; set; }
        public int resultadoOpacidad { get; set; }
        public int resultadoCo2 { get; set; }
        public int resultadoHc { get; set; }
        public int resultadoNo { get; set; }
        public int resultadoNoCo2 { get; set; }
    
        public virtual atencionVehiculo atencionVehiculo { get; set; }
    }
}
