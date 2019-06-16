<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultarUnRecibo.aspx.cs" Inherits="Municipalidad.ConsultarUnRecibo" %>

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
            font-size: xx-large;
            color: #FFFFFF;
        }
        .auto-style3 {
            font-size: medium;
        }
    </style>
</head>
<body style="background-image:url(http://www.hdfondos.eu/pictures/2012/0802/1/abstract-minimalistic-trees-grey-1680x1050-wallpaper-569251.jpg)">
    <form id="form1" runat="server">
        <p class="auto-style1">
            Municipalidad</p>
        <p class="auto-style2">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style3" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal">
                <Columns>
                    <asp:BoundField DataField="Column1" HeaderText="Column1" ReadOnly="True" SortExpression="Propiedad" />
                    <asp:BoundField DataField="Column2" HeaderText="Column2" ReadOnly="True" SortExpression="Nombre" />
                    <asp:BoundField DataField="fechaEmision" HeaderText="fechaEmision" SortExpression="Fecha Emision" />
                    <asp:BoundField DataField="fechaLimite" HeaderText="fechaLimite" SortExpression="Fecha Limite" />
                    <asp:BoundField DataField="intMoratorios" HeaderText="intMoratorios" SortExpression="intereses" />
                    <asp:BoundField DataField="totalPagarSinInteres" HeaderText="totalPagarSinInteres" SortExpression="Total sin interes" />
                    <asp:BoundField DataField="totalPagar" HeaderText="totalPagar" SortExpression="Total" />
                    <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="Servicio" />
                    <asp:BoundField DataField="valor" HeaderText="valor" SortExpression="Valor" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MunicipalidadConnectionString %>" SelectCommand="consultarUnRecibo" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:Parameter Name="idRecibo" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
    </form>
</body>
</html>
