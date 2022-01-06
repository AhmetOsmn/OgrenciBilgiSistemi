<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DuyuruListesi.aspx.cs" Inherits="OgrenciBilgiSistemi.DuyuruListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <table class="table table-hover table-bordered">
        <tr>
            <th scope="col">ID</th>
            <th scope="col">BAŞLIK</th>
            <th scope="col">İÇERİK</th>
            <th scope="col">ÖĞRETMEN</th>
            <th scope="col">İŞLEMLER</th>

        </tr>
        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("DuyuruID")%></td>
                        <td><%#Eval("DuyuruBaslik")%></td>
                        <td><%#Eval("DuyuruIcerik")%></td>
                        <td><%#Eval("DuyuruOgretmen")%></td>
                        <td>
                            <%--NavigateUrl='<%# "~/OgrenciGuncelle.aspx?OgrenciID="+Eval("OgrenciID")%>'--%> 
                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "~/DuyuruGuncelle.aspx?DuyuruID="+Eval("DuyuruID")%>' runat="server" CssClass="btn btn-warning">Güncelle</asp:HyperLink>
                            <asp:HyperLink ID="HyperLink2" NavigateUrl='<%# "~/DuyuruSil.aspx?DuyuruID="+Eval("DuyuruID")%>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>
