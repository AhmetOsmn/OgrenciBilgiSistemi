<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="OgrenciGuncelle.aspx.cs" Inherits="OgrenciBilgiSistemi.OgrenciGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label for="TextBoxOgrenciID" runat="server">Öğrenci ID</asp:Label>
                <br />
                <asp:TextBox ID="TextBoxOgrenciID" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtOgrenciAd" runat="server">Öğrenci Ad</asp:Label>
                <br />
                <asp:TextBox ID="TxtOgrenciAd" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TextBoxOgrenciSoyad" runat="server">Öğrenci Soyad</asp:Label>
                <br />
                <asp:TextBox ID="TextBoxOgrenciSoyad" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TextBoxOgrenciTelefon" runat="server">Öğrenci Telefon</asp:Label>
                <br />
                <asp:TextBox ID="TextBoxOgrenciTelefon" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TextBoxOgrenciMail" runat="server">Öğrenci Mail</asp:Label>
                <br />
                <asp:TextBox ID="TextBoxOgrenciMail" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TextBoxOgrenciSifre" runat="server">Öğrenci Şifre</asp:Label>
                <br />
                <asp:TextBox ID="TextBoxOgrenciSifre" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TextBoxOgrenciFotograf" runat="server">Öğrenci Fotoğraf Link</asp:Label>
                <br />
                <asp:TextBox ID="TextBoxOgrenciFotograf" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
        </div>
        <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-warning" OnClick="Button1_Click" />

    </form>
</asp:Content>
