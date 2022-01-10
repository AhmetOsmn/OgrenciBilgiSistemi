<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="GidenMesajlar.aspx.cs" Inherits="OgrenciBilgiSistemi.GidenMesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <table class="table table-hover table-bordered">
        <tr>
            <th scope="col">ID</th>
            <th scope="col">ALICI</th>
            <th scope="col">BAŞLIK</th>
            <th scope="col">İÇERİK</th>
            <th scope="col">TARİH</th>
            <th scope="col">İŞLEMLER</th>

        </tr>
        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>
                    <tr>
                        <td><%#Eval("MesajID")%></td>
                        <td><%#Eval("MesajAlici")%></td>
                        <td><%#Eval("MesajBaslik")%></td>
                        <td><%#Eval("MesajIcerik")%></td>
                        <td><%#Eval("Tarih")%></td>
<%--                        <td style="width: 200px; min-width: 200px; text-align: center;">
                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "~/DuyuruGuncelle.aspx?DuyuruID="+Eval("DuyuruID")%>' runat="server" CssClass="btn btn-warning">Güncelle</asp:HyperLink>
                            <asp:HyperLink ID="HyperLink2" NavigateUrl='<%# "~/DuyuruSil.aspx?DuyuruID="+Eval("DuyuruID")%>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                        </td>--%>
                    </tr>
                </ItemTemplate>

            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>
