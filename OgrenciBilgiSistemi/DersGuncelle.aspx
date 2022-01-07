<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DersGuncelle.aspx.cs" Inherits="OgrenciBilgiSistemi.DersGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label for="TextBoxDersAdi" runat="server">Ders Ad</asp:Label>
                <br />
                <asp:TextBox ID="TextBoxDersAdi" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
         <br />
        <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-success" OnClick="Button1_Click1"/>

    </form>
</asp:Content>
