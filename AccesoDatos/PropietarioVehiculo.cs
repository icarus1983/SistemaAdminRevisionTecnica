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
    
    public partial class PropietarioVehiculo
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PropietarioVehiculo()
        {
            this.atencionVehiculo = new HashSet<atencionVehiculo>();
        }
    
        public int id { get; set; }
        public string rutPropietario { get; set; }
        public string nombresPropietario { get; set; }
        public string propietarioApellidoPaterno { get; set; }
        public string propietarioApellidoMaterno { get; set; }
        public int ciudadId { get; set; }
        public string direccion { get; set; }
        public int telefono { get; set; }
        public string correo { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<atencionVehiculo> atencionVehiculo { get; set; }
        public virtual Ciudad Ciudad { get; set; }
    }
}
