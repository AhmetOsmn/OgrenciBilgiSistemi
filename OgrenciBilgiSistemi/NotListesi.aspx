<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="NotListesi.aspx.cs" Inherits="OgrenciBilgiSistemi.NotListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="table table-hover table-bordered">
        <tr>
            <th scope="col">Oğrenci ID</th>
            <th scope="col">AD SOYAD</th>
            <th scope="col">DERS ADI</th>
            <th scope="col">SINAV 1</th>
            <th scope="col">SINAV 2</th>
            <th scope="col">SINAV 3</th>
            <th scope="col">ORTALAMA</th>
            <th scope="col">DURUM</th>
            <th scope="col">GUNCELLE</th>

        </tr>
        <tbody>

            <%--   <th scope="row">1</th>--%>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("OgrenciID")%></td>
                        <td><%#Eval("OGRENCI")%></td>
                        <td><%#Eval("DERS")%></td>
                        <td><%#Eval("Sinav1")%></td>
                        <td><%#Eval("Sinav2")%></td>
                        <td><%#Eval("Sinav3")%></td>
                        <td><%#Eval("Ortalama")%></td>
                        <td><%#Eval("Durum")%></td>
                        <td style="width:120px; min-width:120px; text-align:center">
                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "NotGuncelle.aspx?NotID="+Eval("NotID") %>' runat="server" CssClass="btn btn-warning">Güncelle</asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>
