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
                    </tr>
                </ItemTemplate>

            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>
