<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecibosPendientes.aspx.cs" Inherits="Municipalidad.RecibosPendientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: xx-large;
            color: #FFFFFF;
        }
        .auto-style2 {
            text-align: left;
            font-size: medium;
            color: #FFFFFF;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            color: #FFFFFF;
            width: 78px;
        }
    </style>
</head>
<body style="background-image:url(http://www.hdfondos.eu/pictures/2012/0802/1/abstract-minimalistic-trees-grey-1680x1050-wallpaper-569251.jpg)">
    <form id="form1" runat="server">
        <p>
            &nbsp;</p>
        <p class="auto-style1">
            Municipalidad</p>
        <p class="auto-style2">
            &nbsp;</p>
        <p class="auto-style2">
            Lista de recibos pendientes:</p>
        <p class="auto-style2">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal">
                <Columns>
                    <asp:BoundField DataField="Recibo" HeaderText="Recibo" SortExpression="Recibo" />
                    <asp:BoundField DataField="FechaEmision" HeaderText="FechaEmision" SortExpression="FechaEmision" />
                    <asp:BoundField DataField="FechaLimite" HeaderText="FechaLimite" SortExpression="FechaLimite" />
                    <asp:BoundField DataField="Intereses" HeaderText="Intereses" SortExpression="Intereses" />
                    <asp:BoundField DataField="SinInteres" HeaderText="SinInteres" SortExpression="SinInteres" />
                    <asp:BoundField DataField="TotalPagar" HeaderText="TotalPagar" SortExpression="TotalPagar" />
                    <asp:BoundField DataField="Propiedad" HeaderText="Propiedad" SortExpression="Propiedad" />
                    <asp:BoundField DataField="TotalGeneral" HeaderText="TotalGeneral" SortExpression="TotalGeneral" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MunicipalidadConnectionString %>" SelectCommand="sp_recibosPendientes" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:Parameter Name="idCliente" Type="Int32" />
                    <asp:Parameter Name="NombreMunicipalidad" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        <p class="auto-style2">
            &nbsp;</p>
        <p class="auto-style2">
            Si desea ver más información de un recibo en especifíco escriba el número del recibo en el siguiente cuadro de texto:</p>
        <p class="auto-style2">
            &nbsp;</p>
        <table class="auto-style3">
            <tr>
                <td class="auto-style4">Recibo:</td>
                <td>
                    <asp:TextBox ID="TextRecibo" runat="server" Width="183px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <p class="auto-style2">
            &nbsp;</p>
        <p class="auto-style2">
            <asp:Button ID="ButtonAceptar" runat="server" OnClick="ButtonAceptar_Click" Text="Aceptar" />
        </p>
    </form>
</body>
</html>
