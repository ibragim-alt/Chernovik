using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Chernovik
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            FillTable();
            CMBOrderBy.SelectedIndex = 0; // показываем первую строку
            CMBFiltr.SelectedIndex = 0; // показываем первую строку
            TypeMaterial(filter);
        }
        string filter;
        private void FillTable()
        {
            using (DraftEntities db = new DraftEntities())
            {
                var material = (from c in db.MaterialSupply
                                join i in db.Material on c.Id equals i.Id
                                select new
                                {
                                    ID = c.Id,
                                    TypeMaterial = c.TypeMaterial,
                                    Name = c.Title,
                                    MinCount = c.MinCount,
                                    Supplier = i.idMaterial
                                }).ToList();
                DGMaterial.ItemsSource = material;
            }
        }
        private void TypeMaterial(string filter)
        {
            using (DraftEntities db = new DraftEntities()) // подключаем модель БД
            {
                // sql запрос для вывода данных в DataGrid
                var weros = (from c in db.MaterialSupply
                                join i in db.Material on c.Id equals i.idMaterial
                                join z in db.TypeMaterial on c.Id equals z.id
                                select new
                                {
                                    ID = c.Id,
                                    TypeMaterial = z.Name,
                                    Name = i.NameMaterial,
                                    MinCount = c.MinCount,
                                    Supplier = i.idMaterial
                                }).ToList();
                DGMaterial.ItemsSource = weros;
                // если комбо бокс не пустой
                if (filter != null)
                {
                    weros = weros.Where(q => q.TypeMaterial.Contains(filter)).ToList();
                }
                DGMaterial.ItemsSource = weros;
            }
        }

        private void CMBFiltr_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            switch (CMBFiltr.SelectedIndex)
            {
                case 0: filter = null; break;
                case 1: filter = "Гранулы"; break;
                case 2: filter = "Рулон"; break;
                case 3: filter = "Нарезка"; break;
                case 4: filter = "Пресс"; break;
                


            }

            TypeMaterial(filter);
        }
    }
}
