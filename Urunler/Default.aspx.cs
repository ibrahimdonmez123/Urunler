using System;
using System.Data.Entity;
using System.Linq;

namespace Urunler
{
    public partial class Default : System.Web.UI.Page
    {
        Urunler_VTEntities baglanti = new Urunler_VTEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_urun_ekle_Click(object sender, EventArgs e)
        {
            Urunler urunekle = new Urunler();

            urunekle.UrunKodu = Convert.ToInt32(tbx_urun_kodu.Text);
            urunekle.UrunAdi = tbx_urun_adi.Text;
            urunekle.BirimFiyat = Convert.ToInt32(tbx_urun_fiyati.Text);
            urunekle.StokMiktarı = Convert.ToInt32(tbx_urun_miktari.Text);
            urunekle.UrunAciklama = tbx_urun_aciklama.Text;

            try
            {
                baglanti.Urunler.Add(urunekle);
                baglanti.SaveChanges();
                lbl_sonuc.Text = "Kayıt başarıyla gerçekleşti";
            }
            catch
            {
                lbl_sonuc.Text = "Kayıt eklenemedi";

            }

        }

        protected void btn_urun_listele_Click(object sender, EventArgs e)
        {
            baglanti.Urunler.Load();
            GridView1.DataSource = baglanti.Urunler.Local;
            GridView1.DataBind();

        }

        protected void btn_urun_sil_Click(object sender, EventArgs e)
        {
            int urunkodu = int.Parse(tbx_urun_kodu.Text);
            var sorgu = baglanti.Urunler.Where(kayit => kayit.UrunKodu == urunkodu).ToList();

            if (sorgu.Count == 1 )
            {
                baglanti.Urunler.Remove(sorgu[0]);
                baglanti.SaveChanges();
                lbl_sonuc.Text = "Kayıt başarıyla silindi.";
            }
            else
            {
                lbl_sonuc.Text = "Kayıt bulunamadı ya da silmede hata çıktı";
            }
        }

        protected void btn_guncelle_Click(object sender, EventArgs e)
        {
            int urunkodu = int.Parse(tbx_urun_kodu.Text);
            var sorgu = (from kayit in baglanti.Urunler
                         where kayit.UrunKodu == urunkodu
                         select kayit).ToList();

            if(sorgu.Count == 1)
            {
                sorgu[0].UrunAdi = tbx_urun_adi.Text;
                sorgu[0].BirimFiyat = int.Parse(tbx_urun_fiyati.Text);
                sorgu[0].StokMiktarı = int.Parse(tbx_urun_miktari.Text);
                sorgu[0].UrunAciklama = tbx_urun_aciklama.Text;
                baglanti.SaveChanges();
                lbl_sonuc.Text = "Kayıt başarıyla güncellendi";
            }
            else
            {
                lbl_sonuc.Text = "Kayıt bulunamadı  yada güncellemede hata çıktı";
            }
        }
    }
}