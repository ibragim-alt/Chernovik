﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class DraftEntities : DbContext
    {
        public DraftEntities()
            : base("name=DraftEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Agent> Agent { get; set; }
        public virtual DbSet<AgentType> AgentType { get; set; }
        public virtual DbSet<Analyticks> Analyticks { get; set; }
        public virtual DbSet<IDMaterials> IDMaterials { get; set; }
        public virtual DbSet<Manager> Manager { get; set; }
        public virtual DbSet<Material> Material { get; set; }
        public virtual DbSet<MaterialCountHistory> MaterialCountHistory { get; set; }
        public virtual DbSet<MaterialSupplier> MaterialSupplier { get; set; }
        public virtual DbSet<MaterialSupply> MaterialSupply { get; set; }
        public virtual DbSet<MenagerSale> MenagerSale { get; set; }
        public virtual DbSet<Product> Product { get; set; }
        public virtual DbSet<Production> Production { get; set; }
        public virtual DbSet<ProductSale> ProductSale { get; set; }
        public virtual DbSet<ProductType> ProductType { get; set; }
        public virtual DbSet<Staff> Staff { get; set; }
        public virtual DbSet<StaffSpec> StaffSpec { get; set; }
        public virtual DbSet<Supplier> Supplier { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<TypeMaterial> TypeMaterial { get; set; }
        public virtual DbSet<Workshop> Workshop { get; set; }
    }
}