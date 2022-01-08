<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="Grafikler.aspx.cs" Inherits="OgrenciBilgiSistemi.Grafikler" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 18px;
    }
        .auto-style2 {
            width: 153px
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="form1" runat="server">
    <table class="table table-hover table-bordered">
        <tr>
            <td class="auto-style2">
                <asp:Chart ID="Chart1" runat="server" Width="650px">
                    <series>
                        <asp:Series Name="Not Sayısı">
                        </asp:Series>
                    </series>
                    <chartareas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </chartareas>
                    <Legends>
                        <asp:Legend Name="Legend1">
                        </asp:Legend>
                    </Legends>
                    <Titles>
                        <asp:Title Name="DERS - NOT">
                        </asp:Title>
                    </Titles>
                </asp:Chart>
            </td>
            <td class="auto-style1">
                <asp:Chart ID="Chart2" runat="server" CssClass="auto-style3" Width="650px">
                    <series>
                        <asp:Series Name="Öğretmen Sayısı" ChartType="Bar" Legend="Legend1">
                        </asp:Series>
                    </series>
                    <chartareas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </chartareas>
                    <Legends>
                        <asp:Legend Name="Legend1">
                        </asp:Legend>
                    </Legends>
                </asp:Chart>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Chart ID="Chart3" runat="server" Width="650px">
                    <series>
                        <asp:Series Name="Notlar" ChartArea="ChartArea1" Legend="Legend1">
                        </asp:Series>
                    </series>
                    <chartareas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </chartareas>
                    <Legends>
                        <asp:Legend Name="Legend1">
                        </asp:Legend>
                    </Legends>
                </asp:Chart>
            </td>
            <td class="auto-style1">
                <asp:Chart ID="Chart4" runat="server" Width="650px">
                    <series>
                        <asp:Series Name="Cinsiyet" ChartType="Pie">
                        </asp:Series>
                    </series>
                    <MapAreas>
                        <asp:MapArea Coordinates="0,0,0,0" />
                    </MapAreas>
                    <chartareas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </chartareas>
                    <Legends>
                        <asp:Legend AutoFitMinFontSize="5" ItemColumnSpacing="100" LegendItemOrder="SameAsSeriesOrder" MaximumAutoSize="100" Name="Legend1" TextWrapThreshold="50" Title="CİNSİYET">
                        </asp:Legend>
                    </Legends>
                </asp:Chart>
            </td>
        </tr>
    </table>
</form>

</asp:Content>
