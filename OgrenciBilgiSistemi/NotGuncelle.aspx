<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="NotGuncelle.aspx.cs" Inherits="OgrenciBilgiSistemi.NotGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label for="TextBoxDers" runat="server">Ders</asp:Label>
                <br />
                <asp:TextBox ID="TextBoxDers" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TextBoxOgrenciID" runat="server">Öğrenci ID</asp:Label>
                <br />
                <asp:TextBox ID="TextBoxOgrenciID" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtOgrenciAdSoyad" runat="server">Öğrenci Ad Soyad</asp:Label>
                <br />
                <asp:TextBox ID="TxtOgrenciAdSoyad" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TextBoxSinav1" runat="server">Sınav 1</asp:Label>
                <br />
                <asp:TextBox ID="TextBoxSinav1" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TextBoxSinav2" runat="server">Sınav 2</asp:Label>
                <br />
                <asp:TextBox ID="TextBoxSinav2" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TextBoxSinav3" runat="server">Sınav 3</asp:Label>
                <br />
                <asp:TextBox ID="TextBoxSinav3" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TextBoxOrtalama" runat="server">Ortalama</asp:Label>
                <br />
                <asp:TextBox ID="TextBoxOrtalama" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TextBoxDurum" runat="server">Durum</asp:Label>
                <br />
                <asp:TextBox ID="TextBoxDurum" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
        </div>
        <asp:Button ID="ButtonHesapla" runat="server" Text="Hesapla" CssClass="btn btn-info" OnClick="ButtonHesapla_Click"/>
        <asp:Button ID="ButtonGuncelle" runat="server" Text="Güncelle" CssClass="btn btn-warning" OnClick="ButtonGuncelle_Click"/>

    </form>
</asp:Content>
