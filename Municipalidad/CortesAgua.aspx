<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CortesAgua.aspx.cs" Inherits="Municipalidad.CortesAgua" %>

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
            font-size: medium;
        }
    </style>
</head>
<body style="background-image:url(http://www.hdfondos.eu/pictures/2012/0802/1/abstract-minimalistic-trees-grey-1680x1050-wallpaper-569251.jpg)">
    <form id="form1" runat="server">
        <div class="auto-style1">
            Municipalidad</div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p class="auto-style2">
            Lista de ordenes de corte de agua:</p>
        <p class="auto-style2">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Width="443px">
                <Columns>
                    <asp:BoundField DataField="Numero" HeaderText="Numero" SortExpression="Numero" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="Monto" HeaderText="Monto" SortExpression="Monto" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MunicipalidadConnectionString %>" SelectCommand="sp_CortaAgua" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:Parameter Name="idMunicipalidad" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
    </form>
</body>
</html>
