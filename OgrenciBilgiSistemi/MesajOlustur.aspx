<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="MesajOlustur.aspx.cs" Inherits="OgrenciBilgiSistemi.MesajOlustur" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label for="TextBoxGonderen" runat="server">Gönderen</asp:Label>
                <br />
                <asp:TextBox ID="TextBoxGonderen" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TextBoxAlici" runat="server">Alıcı</asp:Label>
                <br />
                <asp:TextBox ID="TextBoxAlici" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TextBoxMBaslik" runat="server">Mesaj Başlık</asp:Label>
                <br />
                <asp:TextBox ID="TextBoxMBaslik" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TextAreaMIcerik" runat="server">Mesaj İçerik</asp:Label>
                <br />
                <textarea id="TextAreaMIcerik" cols="20" rows="6" class="form-control" runat="server"></textarea>
            </div>
            <br />
        </div>
        <asp:Button ID="ButtonGonder" runat="server" Text="Gönder" CssClass="btn btn-info" OnClick="ButtonGonder_Click" />

    </form>
</asp:Content>
