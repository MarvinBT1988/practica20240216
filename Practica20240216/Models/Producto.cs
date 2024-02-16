using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Practica20240216.Models
{
    public partial class Producto
    {
        public int ProductoId { get; set; }
        public string Nombre { get; set; } = null!;
        public decimal Precio { get; set; }
        public string? Descripcion { get; set; }
        public byte[]? Imagen { get; set; }
        [Display(Name ="Categoria")]
        public int CategoriaId { get; set; }

        public virtual Categoria Categoria { get; set; } = null!;
    }
}
