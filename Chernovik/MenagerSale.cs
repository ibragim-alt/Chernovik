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
    
    public partial class MenagerSale
    {
        public int id { get; set; }
        public Nullable<int> idManager { get; set; }
        public Nullable<int> CountAgent { get; set; }
    
        public virtual Manager Manager { get; set; }
    }
}
