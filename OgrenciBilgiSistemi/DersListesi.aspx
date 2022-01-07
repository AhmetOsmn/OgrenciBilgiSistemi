<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DersListesi.aspx.cs" Inherits="OgrenciBilgiSistemi.DersListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-hover table-bordered">
        <tr>
            <th scope="col">Ders ID</th>
            <th scope="col">Ders Ad</th>
            <th scope="col">İŞLEMLER</th>

        </tr>
        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("DersID")%></td>
                        <td><%#Eval("DersAd")%></td>
                        <td style="width:200px; min-width:200px; text-align:center;">
                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "DersGuncelle.aspx?DersID="+Eval("DersID") %>' runat="server" CssClass="btn btn-warning">Güncelle</asp:HyperLink>
                            <asp:HyperLink ID="HyperLink2" NavigateUrl='<%# "DersSil.aspx?DersID="+Eval("DersID") %>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
    <asp:HyperLink ID="HyperLink3" NavigateUrl="~/DersEkle.aspx" runat="server" CssClass="btn btn-info">Ders Ekle</asp:HyperLink>

</asp:Content>
