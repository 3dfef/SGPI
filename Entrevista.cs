//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SGPI
{
    using System;
    using System.Collections.Generic;
    
    public partial class Entrevista
    {
        public int Id { get; set; }
        public int IdUsuario { get; set; }
        public int IdEstudiante { get; set; }
        public System.DateTime Fecha { get; set; }
    
        public virtual Estudiante Estudiante { get; set; }
        public virtual Usuario Usuario { get; set; }
    }
}
