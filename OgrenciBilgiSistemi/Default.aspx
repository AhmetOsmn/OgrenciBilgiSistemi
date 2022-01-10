<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="OgrenciBilgiSistemi.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="table table-hover table-bordered">
        <tr>
            <th scope="col">ID</th>
            <th scope="col">NUMARA</th>
            <th scope="col">AD</th>
            <th scope="col">SOYAD</th>
            <th scope="col">TELEFON</th>
            <th scope="col">MAİL</th>
            <th scope="col">ŞİFRE</th>
            <th scope="col">İŞLEMLER</th>

        </tr>
        <tbody>

            <%--   <th scope="row">1</th>--%>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("OgrenciID")%></td>
                        <td><%#Eval("OgrenciNumara")%></td>
                        <td><%#Eval("OgrenciAd")%></td>
                        <td><%#Eval("OgrenciSoyad")%></td>
                        <td><%#Eval("OgrenciTelefon")%></td>
                        <td><%#Eval("OgrenciMail")%></td>
                        <td><%#Eval("OgrenciSifre")%></td>
                        <td style="width:200px; min-width:200px; text-align:center">
                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "~/OgrenciGuncelle.aspx?OgrenciID="+Eval("OgrenciID")%>' runat="server" CssClass="btn btn-warning">Güncelle</asp:HyperLink>
                            <asp:HyperLink ID="HyperLink2" NavigateUrl='<%# "~/OgrenciSil.aspx?OgrenciID="+Eval("OgrenciID")%>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>
