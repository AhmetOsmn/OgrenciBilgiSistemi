<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPanel.aspx.cs" Inherits="OgrenciBilgiSistemi.LoginPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link href="OgrenciBilgiSistemiTEMA/bootstrap-3.3.7/dist/css/bootstrap.min.css" rel="stylesheet" />

    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1170px;
            text-align: center;
            margin-left: auto;
            margin-right: auto;
            padding-left: 15px;
            padding-right: 15px;
        }
        .auto-style2 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1" style="width:50%">
            <br />
            <h4 class="auto-style2"><strong>Öğrenci Bilgi Sistemi</strong></h4>
            <br />
            <br />
            <asp:Image ID="Image1" runat="server" ImageUrl="~/baran.png" Height="201px" Width="198px" />
            <br />
            <br />
            <br />
            <div class="mb-3">
                <strong>
                <asp:Label for="TextBoxDersAdi" runat="server" CssClass="form-label">Kullanıcı Adı</asp:Label>
                </strong>
                <br />
                <asp:TextBox ID="TextBoxDersAdi" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div class="mb-3">
                <strong>
                <asp:Label for="TextBoxDersAdi" runat="server" CssClass="form-label">Şifre</asp:Label>
                </strong>
                <br />
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            </div>
            <br />

            <asp:Button ID="Button1" runat="server" Text="Giriş Yap" CssClass="btn btn-primary" Width="100%" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="İptal" CssClass="btn btn-danger" Width="33%" />
            <asp:Button ID="Button3" runat="server" Text="Şifremi Unuttum" CssClass=" btn btn-default" Width="33%" />
            <asp:Button ID="Button4" runat="server" Text="Yardım" CssClass="btn btn-info" Width="33%" />
        </div>
    </form>
</body>
</html>
