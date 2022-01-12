<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrenciGuncelle2.aspx.cs" Inherits="OgrenciBilgiSistemi.OgrenciGuncelle2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:TextBox ID="TextBoxNumara" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="TextBoxAdSoyad" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="TextBoxMail" runat="server" CssClass="form-control" Enabled="True"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="TextBoxTel" runat="server" CssClass="form-control" Enabled="True"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="TextBoxSifre" runat="server" CssClass="form-control" Enabled="True"></asp:TextBox>
            </div>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Değişiklikleri Kaydet" CssClass="btn btn-info" OnClick="Button1_Click" />

    </form>
</asp:Content>
