<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DuyuruEkle.aspx.cs" Inherits="OgrenciBilgiSistemi.DuyuruEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label for="DropDownList1" runat="server">Duyuru Öğretmen</asp:Label>
                <br />
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
            <br />
            <div>
                <asp:Label for="TextBoxDuyuruBaslik" runat="server">Duyuru Başlık</asp:Label>
                <br />
                <asp:TextBox ID="TextBoxDuyuruBaslik" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TextArea1" runat="server">Duyuru İçerik</asp:Label>
                <br />
                <textarea id="TextArea1" cols="20" rows="6" class="form-control" runat="server"></textarea>
            </div>
            <br />
        </div>
        <asp:Button ID="Button1" runat="server" Text="Yayınla" CssClass="btn btn-info" OnClick="Button1_Click"/>

    </form>
</asp:Content>
