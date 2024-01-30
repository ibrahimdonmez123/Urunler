<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Urunler.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 370px">
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Urun Kodu"></asp:Label>
            <asp:TextBox ID="tbx_urun_kodu" runat="server" Height="16px" style="margin-left: 48px; margin-top: 0px" Width="106px"></asp:TextBox>
        <p style="height: 28px">
            <asp:Label ID="Label2" runat="server" Text="Urun Adı"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="tbx_urun_adi" runat="server" Height="16px" style="margin-left: 36px; margin-top: 0px" Width="106px"></asp:TextBox>
        </p>
        </div>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Stok Miktarı"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="tbx_urun_miktari" runat="server" Height="16px" style="margin-left: 20px; margin-top: 0px" Width="106px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label4" runat="server" Text="Birim Fİyat"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="tbx_urun_fiyati" runat="server" Height="16px" style="margin-left: 27px; margin-top: 0px" Width="106px"></asp:TextBox>
        </p>
        <p>
&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" Text="Urun Açıklama"></asp:Label>
&nbsp;&nbsp;
        </p>
        <p>
&nbsp;<asp:TextBox ID="tbx_urun_aciklama" runat="server" Height="60px" style="margin-left: 9px; margin-top: 0px" Width="207px"></asp:TextBox>
            <asp:Label ID="Label6" runat="server" Text="Sonuc"></asp:Label>
            <asp:Label ID="lbl_sonuc" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <asp:Button ID="btn_urun_ekle" runat="server" OnClick="btn_urun_ekle_Click" style="margin-top: 0px" Text="ürün ekle " />
        <asp:Button ID="btn_urun_sil" runat="server" OnClick="btn_urun_sil_Click" Text="ürün sil" />
        <asp:Button ID="btn_guncelle" runat="server" OnClick="btn_guncelle_Click" Text="ürün güncelle" />
        <asp:Button ID="btn_urun_listele" runat="server" OnClick="btn_urun_listele_Click" Text="ürün listele" />
        <asp:GridView ID="GridView1" runat="server" Height="145px" Width="912px">
        </asp:GridView>
    </form>
</body>
</html>
