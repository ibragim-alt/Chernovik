//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Chernovik
{
    using System;
    using System.Collections.Generic;
    
    public partial class MaterialSupplier
    {
        public int MaterialID { get; set; }
        public int SupplierID { get; set; }
    
        public virtual Supplier Supplier { get; set; }
    }
}